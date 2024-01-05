

# SPI-CHIP  SPECIFICATION  &  REPORT

***作者：Drh、Chy、Gez***

***时间：2023.12***

## 0. 简介

​	SPI（Serial Peripheral Interface）是一种通信协议，用于在数字设备之间进行全双工通信。它通常用于连接微控制器和外围设备，如存储器芯片、传感器、显示屏等。SPI通信协议使用四条信号线进行通信：时钟线（SCLK）、主设备输出线（MOSI）、主设备输入线（MISO）和片选线（SS）。在SPI通信中，主设备控制通信的时序和传输数据，并在传输完成后，将数据传输给从设备。SPI通信协议具有简单、高速、全双工通信的特点，适合于短距离、高速传输的应用。

​	这是一款独立的SPI通信芯片，在***Richard Herveille***先生的 ***Simple SPI Core***（https://opencores.org/projects/simple_spi） 项目的基础上有了很大程度的提高和完善。本芯片可以作为SPI通信的主机或从机使用，即拥有主模式和从模式的选择，并且在主模式和从模式下均有四种工作模式和多种波特率的选项。使用时，通过Wishbone总线配置芯片的工作状态。具体有如下特点：

* 主模式或从模式

* 全双工通信

* 深度为4bytes的FIFO作为数据寄存器

* 简化的Wishbone总线

* 可控的SCK时钟频率与时钟相位

* 多种传输频率可选，最高达到系统时钟的四分之一

* 多种中断模式可选

* 8位从机选择输出，主模式下可连接8个从机

## 1. 芯片详解

### 1.1 整体框图

![image-20240103105421319](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240103105421319.png)

​	本设计框图如上所示，顶层模块为spi_combine，分为两大模块：spi_MasterMode和spi_SlaveMode，分别为主模式和从模式。除此之外，还有数据分配器ssn_distributor模块，用于将ssn信号输出到某一个从机，实现从机8选1的操作。最后还有tri_state_port模块为三态输入输出端口：在主模式下mosi和sck作为输出，miso作为输入；在从模式下mosi和sck作为输入，miso作为输出。

### 1.2 各模块详解

#### 1.2.1 顶层模块 spi_combine

##### Ⅰ. I/O端口

|    Port    | Width | Direction |              Description              |
| :--------: | :---: | :-------: | :-----------------------------------: |
|   clk_i    |   1   |   input   |             系统时钟信号              |
|   rstn_i   |   1   |   input   |     系统异步复位信号（同步释放）      |
| SPI端口：  |       |           |                                       |
|    sck     |   1   | **inout** |              SPI通信时钟              |
|   ssn_i    |   1   |   input   |        输入片选信号（从模式）         |
|   ssn_o    |   8   |  output   |        输出片选信号（主模式）         |
|    mosi    |   1   | **inout** |          SPI数据线-主出从入           |
|    miso    |   1   | **inout** |          SPI数据线-主入从出           |
|  主模式：  |       |           |                                       |
|   stb_i    |   1   |   input   | 类Wishbone总线对SPI芯片的片选使能信号 |
|   addr_i   |   2   |   input   |    地址选择对芯片内不同寄存器读写     |
|    we_i    |   1   |   input   |     类Wishbone总线对芯片的写使能      |
|   data_i   |   8   |   input   |               数据输入                |
|   data_o   |   8   |  output   |               数据输出                |
|   ack_o    |   1   |  output   |         芯片对总线的应答信号          |
|   int_o    |   1   |  output   |         芯片对总线的中断信号          |
|  从模式：  |       |           |                                       |
| tx_valid_i |   1   |   input   |           发送数据有效信号            |
| tx_data_i  |   8   |   input   |              发送的数据               |
| rx_valid_o |   1   |  output   |         接收到的数据有效信号          |
| rx_data_o  |   8   |  output   |              接收的数据               |

##### Ⅱ. 设计特点

###### ①异步复位同步释放

​	系统复位信号使用 rstn_sync ，具体处理如下：

```verilog
//Rstn_sync - Asynchronous reset and synchronous release
always @(posedge clk_i or negedge rstn_i) begin
    if (!rstn_i) begin
        rstn_sync <= 1'b0;
        rstn_temp <= 1'b0;
    end
    else begin
        rstn_temp <= 1'b1;
        rstn_sync <= rstn_temp;
    end
end
```

###### ②控制寄存器配置

​	芯片工作在主模式还是从模式下需要控制寄存器来控制，因此选择在顶层模块写控制寄存器spi_con：

```verilog
//Wishbone signals
assign    wb_acc    =   stb_i           ;
assign    wb_wr     =   wb_acc & we_i   ;

//--------------------Control register config---------------//
always @(posedge clk_i or negedge rstn_sync) begin
    if (!rstn_sync) begin
        spi_con <= 8'b00100000;
    end
    else if (wb_wr && addr_i == 2'b00) begin
        spi_con <= data_i ; 
    end
end

assign    spi_en      =    spi_con[7]    ;                  //SPI enable bit
assign    mode_sel    =    spi_con[5]    ;                  //Select master or slave mode
assign    cpol        =    spi_con[4]    ;                  //Clock polarity bit
assign    cpha        =    spi_con[3]    ;                  //Clock phase bit

//--------------------Mode selection------------------------//
assign    master_mode_en =    mode_sel && spi_en ;
assign    slave_mode_en  =  ~ mode_sel && spi_en ;
```

#### 1.2.2 主模式模块 spi_MasterMode

##### Ⅰ. I/O 端口

|    Port     | Width | Direction |              Description              |
| :---------: | :---: | :-------: | :-----------------------------------: |
|    clk_i    |   1   |   input   |             系统时钟信号              |
|   rstn_i    |   1   |   input   |     系统异步复位信号（同步释放）      |
| master_mode |   1   |   input   |            主模式选择信号             |
|    stb_i    |   1   |   input   | 类Wishbone总线对SPI芯片的片选使能信号 |
|   addr_i    |   2   |   input   |    地址选择对芯片内不同寄存器读写     |
|    we_i     |   1   |   input   |     类Wishbone总线对芯片的写使能      |
|   data_i    |   8   |   input   |               数据输入                |
|  spi_con_i  |   8   |   input   |              数据寄存器               |
|   data_o    |   8   |  output   |               数据输出                |
|    ack_o    |   1   |  output   |         芯片对总线的应答信号          |
|    int_o    |   1   |  output   |         芯片对总线的中断信号          |
|  SPI端口：  |       |           |                                       |
|    sck_o    |   1   |  output   |              SPI时钟输出              |
|   ssn_o_8   |   8   |  output   |              8位片选输出              |
|   mosi_o    |   1   |  output   |          SPI数据线-主出从入           |
|   miso_i    |   1   |   input   |          SPI数据线-主入从出           |

##### Ⅱ. 原理框图

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240103220405529.png" alt="image-20240103220405529" style="zoom:80%;" />

##### Ⅲ. 设计特点

###### ①控制寄存器与拓展寄存器

​	主模式下，复位结束后，首先配置控制寄存器，再配置拓展寄存器。每位的具体功能再稍后详细介绍

###### ②状态寄存器

​	状态寄存器最高位为中断标志信号，次高位为写冲突标志信号。当标志被置“1”时，需要对状态机的对应位写入“1”，即可消除标志信号。

```verilog
assign    wr_spi_sta =   wb_wr & (addr_i == 2'b01)  ;
assign    int_rq     = ! trans_cnt & rfifo_wen      ;

//Set interrupt flag
always @(posedge clk_i or negedge rstn_i) begin
  	if(!rstn_i) begin
  	    spi_int_f <= 1'b0;
  	end
    else if(master_ena) begin
        if(wr_spi_sta && data_i[7]) begin
  	        spi_int_f <= 1'b0;
  	end
  	else begin
  	    spi_int_f <= spi_int_f | int_rq;
  	end
  end
end
  	
//Set write collision flag
always @(posedge clk_i or negedge rstn_i) begin
  	if(!rstn_i) begin
  	    wr_col_f <= 1'b0;
  	end
    else if(master_ena) begin
  	    if(wr_spi_sta && data_i[6]) begin
  	        wr_col_f <= 1'b0;
  	end
  	else begin
  	    wr_col_f <= wr_col_f | wfifo_ov;
  	end
end
end
```

#### 1.2.3 从模式模块 spi_SlaveMode

##### Ⅰ. I/O端口

|    Port     | Width | Direction |         Description          |
| :---------: | :---: | :-------: | :--------------------------: |
|  sys_clk_i  |   1   |   input   |         系统时钟信号         |
| sys_rstn_i  |   1   |   input   | 系统异步复位信号（同步释放） |
| slave_mode  |   1   |   input   |        从模式选择信号        |
|  tx_valid   |   1   |   input   |       发送数据有效信号       |
|   tx_data   |   8   |   input   |           发送数据           |
| rx_valid_d1 |   1   |  output   |       接收数据有效信号       |
|   rx_data   |   8   |  output   |           接收数据           |
|    cpol     |   1   |   input   |           时钟极性           |
|    cpha     |   1   |   input   |           时钟相位           |
|  SPI端口：  |       |           |                              |
|    sck_i    |   1   |   input   |         SPI时钟输入          |
|    ssn_i    |   1   |   input   |         SPI片选输入          |
|   mosi_i    |   1   |   input   |      SPI数据线-主出从入      |
|   miso_o    |   1   |  output   |      SPI数据线-主入从出      |

##### Ⅱ. 原理框图

![image-20240103230758840](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240103230758840.png)

##### Ⅲ. 设计思路

​	从模式下，需要一个控制器来提供需要发送给主机的数据，并取出从主机收到的数据，在芯片框图中命名为了HOST。HOST与SPI_Master完全无关。

###### ①异步时钟域信号

​	表示收到8位数据的标志信号rx_valid为SPI时钟域信号，在系统时钟域采样时进行打两拍操作，以避免亚稳态。

```verilog
//Receive data config             ***sending received data to host uses sys_clk***
always @(posedge sys_clk_i or negedge sys_rstn_i) begin 
    if (!sys_rstn_i) begin
        rx_valid_d0 <= 1'b0;
        rx_valid_d1 <= 1'b0;
        rx_data     <= 8'h00;
    end
    else if (slave_ena)begin
        rx_valid_d0 <= rx_valid;
        rx_valid_d1 <= rx_valid_d0;
        if (rx_valid_d0 == 1'b1 && rx_valid_d1 == 1'b0) begin    //catch rising edge of rx_valid
            rx_data <= sfr_rx;
        end
    end
end
```

#### 1.2.4 三态输出端口 inout_port

​	由于本芯片即可做主机也可做从机，因此sck，mosi，miso端口均需要复用，因此设计一个三态输出端口，来切换端口为输入或输出：

![image-20240103232817052](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240103232817052.png)

### 1.3 寄存器简介

|    Name     | Address | Width | Access | Description |
| :---------: | :-----: | :---: | :----: | :---------: |
|   spi_con   |  2'b00  |   8   |  W/R   | 控制寄存器  |
|   spi_sta   |  2'b01  |   8   |   R    | 状态寄存器  |
| wfifo/rfifo |  2'b10  |   8   |  W/R   | 数据寄存器  |
|   spi_ext   |  2'b11  |   8   |  W/R   | 拓展寄存器  |

#### 1.3.1 控制寄存器（地址为2'b00)

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104093250425.png" alt="image-20240104093250425" style="zoom: 67%;" />

|   **bit**    |                **function**                |
| :----------: | :----------------------------------------: |
|    spi_en    |          SPI芯片使能信号("1"有效)          |
|  spi_int_en  |           中断使能信号("1"有效)            |
|   mode_sel   | 主/从模式选择信号（"1"主模式 / "0"从模式） |
|     cpol     |                  时钟极性                  |
|     cpha     |                  时钟相位                  |
| sck_sel[2:0] |            SPI时钟频率选择信号             |

#### 1.3.2 拓展寄存器（地址为2'b11)

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104095718064.png" alt="image-20240104095718064" style="zoom:67%;" />

|     **bit**     |                         **function**                         |
| :-------------: | :----------------------------------------------------------: |
| intcnt_sel[1:0] | 计数中断信号 - 决定数据块的大小，可选择在传输了多少个字节后产生中断信号<br />2’b00 - 每传输一个字节产生一个中断信号<br />2'b01 - 每传输两个字节产生一个中断信号<br />2'b10 - 每传输三个字节产生一个中断信号<br />2'b11 - 每传输四个字节产生一个中断信号 |
|  sck_mode[2:0]  |             系统时钟分频模式选择信号（稍后详解）             |
| slave_sel[2:0]  |                   从机8选1信号（"1"有效）                    |

#### 1.3.3 状态寄存器（地址为2'b01)

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104101349897.png" alt="image-20240104101349897" style="zoom:67%;" />

|  **bit**  |     **function**     |
| :-------: | :------------------: |
| spi_int_f |   SPI中断标志信号    |
| wr_col_f  | 写FIFO写冲突标志信号 |
| wfifo_ful |    写FIFO 满标志     |
| wfifo_emp |    写FIFO 空标志     |
| rfifo_ful |    读FIFO 满标志     |
| rfifo_emp |    读FIFO 空标志     |

#### 1.3.4 数据寄存器（地址为2'b10)

​	本设计选择使用深度为4bytes的FIFO作为数据寄存器。在主模式下，将要发出的数据存到写FIFO（wfifo），将收到的数据存到读FIFO（rfifo）。具体工作流程如下图所示：

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104102859200.png" alt="image-20240104102859200" style="zoom:67%;" />

##### Ⅰ. data_i  -> wfifo

​	配置好控制寄存器和拓展寄存器后，地址选择数据寄存器2‘10，此时类Wishbone总线的data_i即为要传输的数据，将该数据存到wfifo，最多可存四字节数据。

##### Ⅱ. wfifo -> data_buf -> rfifo

​	① wfifo不为空时，会根据FIFO的指针，将数据加载到databuf中。

​	② 由状态机开始传输数据，MSB通过MOSI线输出，整体移位后MISO线的数据存到LSB，等待8bit数据传输完成。

​	③ data_buf更新完成后，存入rfifo的指针位置。

##### Ⅲ. rfifo -> data_o

​	类Wishbone总线可通过data_o从rfifo中指针位置读出数据。

### 1.4 SPI时钟频率SCK

​	SPI传输频率由系统时钟分频得到，具体分频由控制寄存器和拓展寄存器共同决定：

* sck_mode = spi_con [5:3]
* sck_sel 	= spi_ext  [2:0]

| sck_mode \ sck_sel | **000** | **001** | **010** | **011** | **100** | **101** | **110** | **111** |
| :----------------: | :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :-----: |
|        001         |  4分频  |    8    |   16    |   64    |   256   |  1024   |  4096   |  16384  |
|        010         |   10    |   20    |   40    |   160   |   320   |   640   |  2560   |  5120   |
|        100         |   10    |   50    |   100   |   200   |   500   |  1000   |  5000   |  10000  |
|      default       |    4    |    8    |   16    |   64    |   256   |  1024   |  4096   |  16384  |

## 2. 功能仿真

### 2.1 主模式仿真

* （前仿时，rtl中spi_fifo.v文件中Write memory模块使用negedge触发，与后续做dc的RTL该文件该处为posedg触发有区别，原因是整理文档时跑前仿出错了，后续都改太麻烦了，综合后仿真和布局布线后仿真都没有问题，所以就没改 T  T）。

#### 2.1.1 仿真方案

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104143631864.png" alt="image-20240104143631864" style="zoom:67%;" />

​	基本仿真方案如上图所示，除主模块外，编写两个仿真测试模块：wb_master_model和spi_slave。wb_master_model模块通过wb_write和wb_read两个task来模拟总线对芯片的读写操作。spi_slave为测试使用的SPI从机模块，只有复位端口及4个标准SPI端口。定义一个内部存储mem来存储从机发给主机的数据。数据传输时，每次传输将一个byte数据从mem的指定地址中取出，传输完成后，将收到的数据存到原来的地址。

​	测试时，cpol和cpha不同值可切换四种工作模式，每种工作模式下选择四种SCK频率（4分频、16分频、256分频、4096分频）测试，每个频率下传输4 bytes的数据。仿真结果如下。

#### 2.1.2 仿真结果

##### ①整体结果

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104151440577.png" alt="image-20240104151440577" style="zoom: 67%;" />

##### ②配置控制寄存器和拓展寄存器

![image-20240104151947871](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104151947871.png)

##### ③发送并接收数据（发送的数据为5、6、7、8循环，接收的数据1-32依次递增）

**00模式：**（空闲为低电平，上升沿采样数据，下降沿切换数据）

![image-20240104182637852](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104182637852.png)

![image-20240104182702225](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104182702225.png)

![image-20240104182814785](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104182814785.png)

**10模式：**（空闲为高电平，下降沿采样数据，上升沿切换数据）

![image-20240104183014798](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104183014798.png)

**01模式：**（空闲为低电平，下降沿采样数据，上升沿切换数据）

![image-20240104183638784](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104183638784.png)

**11模式：**（空闲为高电平，上升沿采样数据，下降沿切换数据）

![image-20240104183836587](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104183836587.png)

### 2.2从模式仿真

#### 2.2.1 仿真方案

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104185047259.png" alt="image-20240104185047259" style="zoom:67%;" />

​	从模式仿真时，直接通过TB来输入ssn，sck和mosi信号，tx_data数据通过miso线发送出去。简单示意图如上所示。

​	仿真时，系统时钟周期为10ns，SPI时钟周期为160ns。从机（本芯片）要通过miso发出的数据为1~15，通过mosi接收的数据为15~1。

#### 2.2.2仿真结果

##### ①配置控制寄存器，选择从模式（spi_con[5] = 0)，分频选择16分频（spi_con[2:0] = 2'b011)。

![image-20240104192826918](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104192826918.png)

##### ②等到sck时钟后开始传输数据

**00模式：**（空闲为低，上升沿采样，下降沿切换）

![image-20240104193106650](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104193106650.png)

**11模式：**（空闲为高，上升沿采样，下降沿切换）

（修改tb_spi_slave.v中的第81行，配置控制寄存器第4 5位为"11"，第87行cpol和cpha改为"11"。

![image-20240104195308497](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104195308497.png)

至此，功能仿真结束，实际上还有一些bug需要修复。

## 3.DC综合

​	综合使用的脚本为compile_dc.tcl，将时序约束和综合指令均写到脚本内，终端键入dc_shell-t -f compile_dc.tcl即可执行。

### Q: 前仿没有使用vcs+verdi的原因

​	vcs+verdi会把要写入数据寄存器的数据写到拓展寄存器里，很奇怪的bug：

![image-20240105093922634](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105093922634.png)

### 3.1 综合脚本compile_dc.tcl (部分)

##### ①设置综合环境

```tcl
#/**************设置综合环境**************************/
#/* All verilog files, separated by spaces         */
set RTL_PATH "/home/IC/SPI_CHIP/RTL"
lappend search_path $RTL_PATH
set RTL_files [list bitdistributor8.v inout_port.v spi_combine.v spi_fifo.v spi_MasterMode.v spi_SlaveMode.v]
#/* Top-level Module                               */
set my_toplevel spi_combine
#/* 
set file_version dc_v1
#/* set folder name
set RPT_DIR RPT
set OUT_DIR OUT
set RPT_OUT  [format "%s%s" $RPT_DIR/ $file_version]
set DATA_OUT [format "%s%s" $OUT_DIR/ $file_version]
#/**************设置综合环境**************************/
```

##### ②设置综合工艺库文件

```tcl
#/**************设置综合库文件************************/
set SMIC_PDK_PATH "/home/IC/SPI_CHIP/FDRY";    #Change to your storage path
lappend search_path $SMIC_PDK_PATH
set link_library [list $SMIC_PDK_PATH/scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic.db]  # can be changed
set target_library $link_library
define_design_lib WORK -path ./WORK
#/**************设置综合库文件************************/
```

##### ③设置时钟约束

```tcl
#/**************设置约束条件**************************/
#/Create clock
set sys_clk clk_i
#/* Target frequency in MHz for optimization       */
set sys_clk_freq_MHz 80

#/Create spi sck for slavemode
set spi_sck spi_SlaveMode_u/sck_i
#/* Target frequency in MHz for optimization       */
set spi_sck_freq_MHz 50

set sys_clk_period [expr 1000 / $sys_clk_freq_MHz]
set sck_period     [expr 1000 / $spi_sck_freq_MHz]

set find_clock [ find port [list $sys_clk] ]
if {  $find_clock != [list] } {
   set clk_name $sys_clk
   create_clock -period $sys_clk_period $clk_name
} else {
   set clk_name vclk
   create_clock -period $sys_clk_period -name $clk_name
}

#/* System clock constrain  begin*/
set_dont_touch_network [get_clocks $sys_clk]
set_ideal_network [get_clocks $sys_clk]
set_clock_latency -max 0.5 [get_clocks $sys_clk]
set_clock_uncertainty -setup 0.6 [get_clocks $sys_clk]
set_clock_uncertainty -hold  0.5 [get_clocks $sys_clk]
set_clock_transition 0.4 [get_clocks $sys_clk]
#/* System clock constrain  end*/

set find_clock2 [ find port [list $spi_sck] ]
if {  $find_clock2 != [list] } {
   set clk_name2 $spi_sck
   create_clock -period $sck_period $clk_name2
} else {
   set clk_name2 vclk
   create_clock -period $sck_period -name $clk_name2
}

#/* SPI spi_sck constrain  begin*/
set_dont_touch_network [get_clocks $spi_sck]
set_ideal_network [get_clocks $spi_sck]
set_clock_uncertainty -setup 0.6 [get_clocks $spi_sck]
set_clock_uncertainty -hold  0.5 [get_clocks $spi_sck]
set_clock_transition 0.4 [get_clocks $spi_sck]
#/* SPI spi_sck constrain  end*/

#/* SPI asynchronous clks constrain  begin*/
set_clock_groups -asynchronous -group [get_clocks $clk_name] -group [get_clocks $clk_name2]
#/* SPI asynchronous clks constrain  end*/

#/*
set driving_cell CLKBUFV2_7TV50 
set loading_cell CLKBUFV8_7TV50 

set_drive [drive_of scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic/${driving_cell}/Z] [all_inputs]
set_load [load_of  scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic/${loading_cell}/I] [all_outputs]
#/*

#/add constrain
set input_delay_ns  5
set output_delay_ns 5

#/* input/output delay
set_input_delay $input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] rstn_i]
set_output_delay $output_delay_ns -clock $clk_name [all_outputs]

# multicycle_path (not used)
#set_multicycle_path -setup  2 -from A -to B
#set_multicycle_path -hold   1 -from A -to B

# false path
# set asynchronous reset signal as false path
set_false_path -from [get_ports rstn_i] -to [all_registers]
#/**************设置约束条件***************************/
```

* 将系统时钟与SPI时钟设置为异步时钟组

![image-20240104202544698](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104202544698.png)

##### ④输出时序检查报告及综合结果

```tcl
#/**************检查综合结果并输出报告*******************/
check_design  > $RPT_OUT/check_design.rpt
check_timing  > $RPT_OUT/check_timing.rpt

report_design -verbose > $RPT_OUT/design.rpt
report_qor > $RPT_OUT/qor.rpt
report_area > $RPT_OUT/area.rpt
report_area -hierarchy > $RPT_OUT/area_hier.rpt
report_timing -loops > $RPT_OUT/timing_loop.rpt
report_timing -path full -net -cap -input -tran -delay min -max_paths 3 -nworst 3 > $RPT_OUT/timing.min.rpt
report_timing -path full -net -cap -input -tran -delay max -max_paths 3 -nworst 3 > $RPT_OUT/timing.max.rpt
report_constraints -all_violators -verbose > $RPT_OUT/constraints.rpt
report_power > $RPT_OUT/power.rpt
#/**************检查综合结果并输出报告*******************/

#/**************输出综合结果***************************/
set bus_naming_style {%s[%d]} 
write_file -f verilog -hierarchy -output $DATA_OUT/$my_toplevel.v
write_sdf -version 2.1 $DATA_OUT/$my_toplevel.sdf
write_file -f ddc -hierarchy -output $DATA_OUT/$my_toplevel.ddc
write_sdc $DATA_OUT/$my_toplevel.sdc
set_svf -off
#/**************输出综合结果***************************/
```

### 3.2 时序检查报告

* dc_v1对应tt25工艺脚，dc_v2对应ss150工艺脚，dc_v3对应ff-40工艺脚。

![image-20240104203202560](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104203202560.png)

##### ①timing.max.rpt 建立时间检查报告

![image-20240104203523749](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104203523749.png)

##### ②timing.min.rpt 保持时间检查报告

![image-20240104203641088](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104203641088.png)

### 3.3功耗报告

![image-20240104203926196](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104203926196.png)

### 3.4综合输出网表

![image-20240104204307696](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104204307696.png)

* **.ddc 文件：** Design Description Constraints 文件，通常包含关于设计的约束信息，例如时钟频率、时序要求等。这些约束对于综合工具在生成网表时的优化和分析至关重要。
* **.sdc 文件：** Synopsys Design Constraints 文件，包含了对综合和时序分析的详细约束。这些约束包括时钟定义、时序路径、时序关系等，用于确保设计在满足时序和性能要求的情况下进行综合。
* **.sdf 文件：** Standard Delay Format 文件，包含有关每个时序元素的延迟信息，如门延迟、时钟延迟等。这些文件在后仿真时使用，确保仿真与实际硬件的延迟相符。反标在tb文件内可进行综合后仿真。
* **.v 文件：** Verilog 文件，输出网表文件，将verilog语言描述的电路转化为逻辑门的连接，可用于综合后仿真。
* **.svf 文件：** Serial Vector Format 文件，是一种用于 FPGA 配置的文件格式。它包含了配置 FPGA 的序列信息，用于在实际硬件中加载综合后的设计。

## 4.综合后仿真（门级网表仿真）

​	前仿在win下使用vivado进行，后仿时使用vcs在linux下进行。

### 4.1 将综合后输出的.sdf文件反标到tb中

```verilog
initial begin
`ifdef NET_SIM
    $sdf_annotate("../SYN/DC/OUT/dc_v1/spi_combine.sdf", spi_combine);  
 `endif
end
```

### 4.2 对编译仿真的脚本文件makefile进行一些修改

```makefile
#***************Makefile for task SPI CHIP***************
.PHONY:com sim verdi cov debug clean

#***************Variable Definition**********************
OUTPUT = spi_master				#从模式仿真时 替换 OUTPUT
#OUTPUT = spi_slave
tb_master = tb_spi_master
tb_slave  = tb_spi_slave
ALL_DEFINE = +define+DUMP_VPD	\
			 +define+DUMP_FSDB	\
			 +NET_SIM                      # 1. 加入NET_SIM宏定义，使tb中反标有效
VPD_NAME = +vpdfile+${OUTPUT}.vpd
filelist = ./netlist_filelist.f				# 2. 将source文件替换为综合后的网表文件
LIB_FILE = -v ../LIB/scc018v3ebcd_uhd50_rvt.v	 	# 3. 加入标准单元库的带延时的库文件
#compile command
VCS = vcs	-sverilog +v2k			\
					-timescale=1ns/1ps 	\
					-full64							\
					-fsdb								\
					-debug_all			    \
					+notimingcheck			\
					-P /opt/Synopsys/Verdi2015/share/PLI/VCS/LINUXAMD64/novas.tab \
					/opt/Synopsys/Verdi2015/share/PLI/VCS/LINUXAMD64/pli.a        \
					+vcs+flush+all			\
	  				+vcd+vcdpluson      \
					-f $(filelist)   \
					-o ${OUTPUT}   \
					-l compile.log   \
	  				$(ALL_DEFINE)       \
					$(LIB_FILE)			\      # 4. 编译时读入延时库文件
					

#simulation command
SIM = 	./${OUTPUT} 			\
			-l ${OUTPUT}.log 			\
			${VPD_NAME} 			\
			-cm line+cond+fsm+tgl			\

#start compile
com:
	${VCS} 

#start simulation
sim:
	${SIM} 

#start debug command
debug:
	dve -vpd ${OUTPUT}.vpd &

#start verdi
verdi:	
	# netlist simulation for master				
	  verdi +v2k -sverilog -top ${tb_master} -nologo -f $(filelist) -ssf tb_spi_master.fsdb &
	
	# netlist simulation for slave
	# verdi +v2k -sverilog -top ${tb_slave}  -nologo -f $(filelist) -ssf tb_spi_slave.fsdb &

#show the coverage
cov:
	dve -full64 -covdir *vdb &

#clean some file
clean:
	rm -rf ./verdiLog ./novas* ./*.fsdb ./csrc  *.daidir ./csrc *.log *.vpd *.vdb simv* *.key *race.out* ${OUTPUT}  DVEfiles

```

### 4.3 netlist_filelist.f

```
# netlist
../../SYN/DC/OUT/dc_v1/spi_combine.v

# tb 
../../testbench/spi_slave.v
../../testbench/tb_spi_master.v
../../testbench/wb_master_model.v
../../testbench/tb_spi_slave.v
```

### 4.4 主模式仿真结果

* 与前仿一致

![image-20240104223702805](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104223702805.png)

![image-20240104223739504](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104223739504.png)

### 4.5 从模式仿真结果

* 与前仿一致（不知道为啥有毛刺）

![image-20240104225251834](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104225251834.png)

![image-20240104225144517](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240104225144517.png)

​	至此，DC综合后的网表仿真结束，与前仿结果基本一致，下一步进行布局布线。

## 5. 布局布线（版图设计）

* 后端布局布线使用cadence innovas实现。

### 5.1 后端整体流程

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105100613094.png" alt="image-20240105100613094" style="zoom:67%;" />

### 5.2  详细步骤

#### 5.2.1 View设置

​	手动修改Default.view文件。

​	将5个lib文件和3个capTbl文件排列组合出**15个Analysis View，并且全部进行Setup Analysis、 Hold Analysis。**得到最严格和保守的结果。

```tcl
# Current:15 Views
# Version:1.0 MMMC View Definition File
# Do Not Remove Above Line
create_rc_corner -name TYP1 -cap_table {../TYP.capTbl} -T {-40} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name TYP2 -cap_table {../TYP.capTbl} -T {0} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name TYP3 -cap_table {../TYP.capTbl} -T {25} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name TYP4 -cap_table {../TYP.capTbl} -T {85} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name TYP5 -cap_table {../TYP.capTbl} -T {125} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MAX1 -cap_table {../MAX.capTbl} -T {-40} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MAX2 -cap_table {../MAX.capTbl} -T {0} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MAX3 -cap_table {../MAX.capTbl} -T {25} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MAX4 -cap_table {../MAX.capTbl} -T {85} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MAX5 -cap_table {../MAX.capTbl} -T {125} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MIN1 -cap_table {../MIN.capTbl} -T {-40} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MIN2 -cap_table {../MIN.capTbl} -T {0} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MIN3 -cap_table {../MIN.capTbl} -T {25} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MIN4 -cap_table {../MIN.capTbl} -T {85} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}
create_rc_corner -name MIN5 -cap_table {../MIN.capTbl} -T {125} -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0}

create_op_cond -name op_cond1 -library_file {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_ff_v5p5_-40c_basic.lib} -P {1} -V {5.5} -T {-40.0}
create_op_cond -name op_cond2 -library_file {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_ff_v5p5_0c_basic.lib} -P {1} -V {5.5} -T {0.0}
create_op_cond -name op_cond3 -library_file {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic.lib} -P {1} -V {5.5} -T {25.0}
create_op_cond -name op_cond4 -library_file {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_tt_v5p0_85c_basic.lib} -P {1} -V {5.5} -T {25.0}
create_op_cond -name op_cond5 -library_file {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_ss_v4p5_125c_basic.lib} -P {1} -V {4.5} -T {125}

create_library_set -name lib1 -timing {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_ff_v5p5_-40c_basic.lib}
create_library_set -name lib2 -timing {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_ff_v5p5_0c_basic.lib}
create_library_set -name lib3 -timing {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic.lib}
create_library_set -name lib4 -timing {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_tt_v5p0_85c_basic.lib}
create_library_set -name lib5 -timing {../DCLayout/prfiles/prfiles/lib/scc018v3ebcd_uhd50_rvt_ss_v4p5_125c_basic.lib}

create_constraint_mode -name sdc -sdc_files {../OUT/dc_v1/spi_combine.sdc}

create_delay_corner -name lib1_corner1 -library_set {lib1} -rc_corner {TYP1}
create_delay_corner -name lib1_corner2 -library_set {lib1} -rc_corner {MAX1}
create_delay_corner -name lib1_corner3 -library_set {lib1} -rc_corner {MIN1}
create_delay_corner -name lib2_corner1 -library_set {lib2} -rc_corner {TYP1}
create_delay_corner -name lib2_corner2 -library_set {lib2} -rc_corner {MAX1}
create_delay_corner -name lib2_corner3 -library_set {lib2} -rc_corner {MIN1}
create_delay_corner -name lib3_corner1 -library_set {lib3} -rc_corner {TYP1}
create_delay_corner -name lib3_corner2 -library_set {lib3} -rc_corner {MAX1}
create_delay_corner -name lib3_corner3 -library_set {lib3} -rc_corner {MIN1}
create_delay_corner -name lib4_corner1 -library_set {lib4} -rc_corner {TYP1}
create_delay_corner -name lib4_corner2 -library_set {lib4} -rc_corner {MAX1}
create_delay_corner -name lib4_corner3 -library_set {lib4} -rc_corner {MIN1}
create_delay_corner -name lib5_corner1 -library_set {lib5} -rc_corner {TYP1}
create_delay_corner -name lib5_corner2 -library_set {lib5} -rc_corner {MAX1}
create_delay_corner -name lib5_corner3 -library_set {lib5} -rc_corner {MIN1}

create_analysis_view -name view_lib1_corner1 -constraint_mode {sdc} -delay_corner {lib1_corner1}
create_analysis_view -name view_lib1_corner2 -constraint_mode {sdc} -delay_corner {lib1_corner2}
create_analysis_view -name view_lib1_corner3 -constraint_mode {sdc} -delay_corner {lib1_corner3}
create_analysis_view -name view_lib2_corner1 -constraint_mode {sdc} -delay_corner {lib2_corner1}
create_analysis_view -name view_lib2_corner2 -constraint_mode {sdc} -delay_corner {lib2_corner2}
create_analysis_view -name view_lib2_corner3 -constraint_mode {sdc} -delay_corner {lib2_corner3}
create_analysis_view -name view_lib3_corner1 -constraint_mode {sdc} -delay_corner {lib3_corner1}
create_analysis_view -name view_lib3_corner2 -constraint_mode {sdc} -delay_corner {lib3_corner2}
create_analysis_view -name view_lib3_corner3 -constraint_mode {sdc} -delay_corner {lib3_corner3}
create_analysis_view -name view_lib4_corner1 -constraint_mode {sdc} -delay_corner {lib4_corner1}
create_analysis_view -name view_lib4_corner2 -constraint_mode {sdc} -delay_corner {lib4_corner2}
create_analysis_view -name view_lib4_corner3 -constraint_mode {sdc} -delay_corner {lib4_corner3}
create_analysis_view -name view_lib5_corner1 -constraint_mode {sdc} -delay_corner {lib5_corner1}
create_analysis_view -name view_lib5_corner2 -constraint_mode {sdc} -delay_corner {lib5_corner2}
create_analysis_view -name view_lib5_corner3 -constraint_mode {sdc} -delay_corner {lib5_corner3}


set_analysis_view -setup {view_lib1_corner1 view_lib1_corner2 view_lib1_corner3 view_lib2_corner1 view_lib2_corner2 view_lib2_corner3 view_lib3_corner1 view_lib3_corner2 view_lib3_corner3 view_lib4_corner1 view_lib4_corner2 view_lib4_corner3 view_lib5_corner1 view_lib5_corner2 view_lib5_corner3} -hold {view_lib1_corner1 view_lib1_corner2 view_lib1_corner3 view_lib2_corner1 view_lib2_corner2 view_lib2_corner3 view_lib3_corner1 view_lib3_corner2 view_lib3_corner3 view_lib4_corner1 view_lib4_corner2 view_lib4_corner3 view_lib5_corner1 view_lib5_corner2 view_lib5_corner3}
```

#### 5.2.2 IO位置布局

​	编写**IO Assignment File文件**。

将56个IO分为13+13+12+16四组，IO Boundry：185um×175um，通过EXCEL计算，保证同侧信号位置**分布均匀**，保证总线信号分布于相同一侧。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105101018403.png" alt="image-20240105101018403" style="zoom:67%;" />

<center>计算IO位置的Excel数据

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105101418763.png" alt="image-20240105101418763" style="zoom:67%;" />

<center>布局后的IO引脚位置图

#### 5.2.3 导入设计 Design Import

第一次导入时设置：

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105101630074.png" alt="image-20240105101630074" style="zoom:67%;" />

之后使用时，可以直接Load第一次保存的Default.globals文件。

#### 5.2.4 布局规划 FloorPlan

​	指对各个功能模块的排列和布局进行规划的过程。这是在芯片级别上进行的整体布局设计，旨在确定每个功能模块、逻辑单元、存储单元、输入/输出接口等元素在芯片内部的位置。floorplan的最终目标是最大程度地优化性能、功耗和面积，以及确保满足布线和物理设计方面的限制。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105101757072.png" alt="image-20240105101757072" style="zoom:67%;" />

#### 5.2.5 载入IO文件  Load IO file

​	包括芯片的输入/输出引脚列表、约束文件、时序信息以及其他与物理布局和布线相关的约束和要求。加载这些I/O文件是为了确保布局布线工具能够按照设计规范正确地放置和连接输入输出引脚，并满足设计的性能和功能要求。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105101943692.png" alt="image-20240105101943692"  />

#### 5.2.6 增加供电环 Add Power Ring

​	将供电网络连接在芯片的四周，以确保每个电路单元都能够得到足够的电源供应，从而提供稳定的工作环境。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105102130300.png" alt="image-20240105102130300" style="zoom:67%;" />

#### 5.2.7 增加条纹 Add Stripes

​	在芯片的布线或者布局阶段，增加一定的布线形状以改善电气特性，减少电压下降和噪声问题。这些条纹通常被用来提高电路的传输性能和稳定性。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105102258747.png" alt="image-20240105102258747" style="zoom:67%;" />

#### 5.2.8 全局信号线连接  Global Net Connections

​	连接整个芯片的主要信号线或者电源线。这些全局连接通常包括主要的时钟信号、复位信号、供电线等，在整个芯片内部起着关键的作用。在数字芯片的后端设计阶段，需要对这些全局网连接进行布局和布线，以确保信号传输的性能和稳定性。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105102352833.png" alt="image-20240105102352833" style="zoom: 80%;" />

#### 5.2.9 特殊路径 Special Route

​	指的是定制的电路布线路径，用于连接芯片上的特定功能模块或提供更佳的性能。这些特殊的路线可能会经过定制的布局和布线规则，以确保信号的稳定性和最佳的电路性能。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105102507803.png" alt="image-20240105102507803"  />

#### 5.2.10 放置标准单元 Place Standcells

![image-20240105102720208](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105102720208.png)

#### 5.2.11 时钟树综合 CTS

​	在数字芯片设计后端的布局布线阶段，CTS（Clock Tree Synthesis）用于设计时钟电路以确保时钟信号能够准确、稳定地传输到整个芯片各个部分。

CTS 的主要功能包括：

1. 时钟树的设计：CTS负责设计时钟树，将时钟信号从时钟源传播到整个芯片的各个触发器单元。由于时钟信号会在芯片内产生延迟和偏差，因此CTS会优化时钟树的拓扑结构和时钟信号的传输路径，以最小化时钟延迟和抖动。
2. 时钟缓冲器的插入：CTS会根据时钟信号的传输路径和延迟情况，在合适的位置插入时钟缓冲器来稳定时钟信号的传输，减少时钟抖动和延迟。
3. 时钟网络的优化：CTS会优化时钟网络的布局和布线，以减少时钟信号路径的长度和不平衡，从而降低时钟网络的波动和抖动。

​	因为INNOVUS不支持CTS可视化操作，在终端输入以下命令进行CTS：

```tcl
set BASENAME spi_combine
createClockTreeSpec -output $BASENAME.ctstch
setCTSMode -routeGuide true
setCTSMode -routeClkNet true
clockDesign -outDir ${BASENAME}_clock_reports
```

#### 5.2.12 纳米布线 NanoRoute

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105102952493.png" alt="image-20240105102952493" style="zoom:67%;" />

#### 5.2.13 添加填充单元 Add Filler Cells

​	填补空白区域或优化布线而添加的特定类型的标准单元。这些填充单元通常用于平衡布局或解决布线规则要求。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105103127550.png" alt="image-20240105103127550" style="zoom: 80%;" />

#### 5.2.14 保存和读取设计

![image-20240105103220390](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105103220390.png)

![image-20240105103233462](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105103233462.png)

### 5.3 布局布线结果检查

#### 5.3.1 版图

* Special Route之后版图

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104315553.png" alt="image-20240105104315553" style="zoom:67%;" />

* 最终版图

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104359135.png" alt="image-20240105104359135" style="zoom: 67%;" />

* Amoba View

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104424595.png" alt="image-20240105104424595" style="zoom: 67%;" />

* Amoba View的局部放大，可以看到三态门

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104449451.png" alt="image-20240105104449451" style="zoom:80%;" />

* Floorplan View

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104512357.png" alt="image-20240105104512357" style="zoom:67%;" />

#### 5.3.2 面积利用率

面积利用率为**86.895%**。

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104604289.png" alt="image-20240105104604289" style="zoom:33%;" />

#### 5.3.3 时序检查 Timing Check

​	如下表所示，**Pre-CTS、Post-CTS和Post-Route三个阶段的Setup、Hold Timing检查，在做完相对应的optimize后全部通过。**

|       | **Pre-CTS** | **Post-CTS** | **Post-Route** |
| ----- | ----------- | ------------ | -------------- |
| Setup | √           | √            | √              |
| Hold  | √           | √            | √              |

##### Ⅰ. Pre-CTS Check

* optimize后的Pre-CTS-setup结果：

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105104830276.png" alt="image-20240105104830276" style="zoom:67%;" />

  * optimize后的Pre-CTS-hold结果：

    <img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105105024063.png" alt="image-20240105105024063" style="zoom:67%;" />

##### Ⅱ. Post-CTS Check

 * optimize后的Post-CTS-setup结果：

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105105130498.png" alt="image-20240105105130498" style="zoom:67%;" />

  * optimize后的Post-CTS-hold结果：

    <img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105105155520.png" alt="image-20240105105155520" style="zoom:67%;" />

##### Ⅲ. Post-Route Check

 * optimize后的Post-Route-setup结果：

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105105311287.png" alt="image-20240105105311287" style="zoom:67%;" />

  * optimize后的Post-Route-hold结果：

    <img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105105348621.png" alt="image-20240105105348621" style="zoom:67%;" />

    

#### 5.3.4 结果验证

##### Ⅰ. Connectivity

* Verify Connectivity通过:

  <img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105105602310.png" alt="image-20240105105602310" style="zoom:67%;" />

##### Ⅱ. DRC

* Verify DRC通过：

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105110349292.png" alt="image-20240105110349292" style="zoom:67%;" />

##### Ⅲ. Geometry

* Verify Geometry存在数字电路的常见报错。（日志文件中显示为8个Wiring错误，但是实际上可能更多）

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105110453641.png" alt="image-20240105110453641" style="zoom:67%;" />

## 6. 布局布线后仿真

​	（在POST_SIM - AfterPR内）

###  6.1  tb中反标 布局布线输出的 .sdf文件

```verilog
initial begin
`ifdef LAYOUT_SIM
    $sdf_annotate("../PR/Output_Files/spi_combine.sdf", spi_combine);  
 `endif
end
```

### 6.2 layout_filelist.f

```
# layout netlist
../../PR/Output_Files/spi_combine.v

# tb 
../../testbench/spi_slave.v
../../testbench/tb_spi_master.v
../../testbench/wb_master_model.v
../../testbench/tb_spi_slave.v
```

### 6.3 主模式仿真结果

* 与综合后网表仿真和功能仿真均一致：

![image-20240105134939697](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105134939697.png)

![image-20240105135008662](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105135008662.png)

### 6.4 从模式仿真结果

* 与综合网表仿真及前仿一致：

![image-20240105135320797](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105135320797.png)

## 7. 目前存在的问题

### ① 导出GDSII文件时如何配置Map File等文件

<img src="C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105140021682.png" alt="image-20240105140021682" style="zoom:67%;" />

### ②布局布线后的网表进行仿真时有报时序违例

![image-20240105140155917](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105140155917.png)

### ③VCS+Verdi跑不了前仿

![image-20240105093922634](C:\Users\DarHen\AppData\Roaming\Typora\typora-user-images\image-20240105093922634.png)

