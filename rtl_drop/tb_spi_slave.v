//////////////////////////////////////////////////////////////
//// TB: tb_spi_slave                                     ////
////        - Testbench for spi slave mode                ////
//// Authors: chy,drh,gez                                 ////
//// Description: This is the testbench of spi slavemode. ////
////  The data sent through miso is 8'd1-8'd16,and the    ////
////  data received through mosi is 8'd15-8'd0.           ////
////                                                      ////
//////////////////////////////////////////////////////////////
`timescale  1ns / 1ps      
module tb_spi_slave;   

parameter    sys_PERIOD            =   10             ;    
parameter    spi_PERIOD            =   160            ;
parameter    WISHBONE_DATA_WIDTH   =   8              ;
parameter    WISHBONE_ADR_WIDTH    =   32             ; 
parameter    SPCR_ADR              =   2'b00          ;
//------------------TB Signal Define---------------------//
//WB signals(to write control register)
wire                                      stb         ;
wire                                      we          ;
wire    [WISHBONE_ADR_WIDTH  - 1 : 0]     adr         ;       
wire    [WISHBONE_DATA_WIDTH - 1 : 0]     wb_dat_o    ;
 
//Host signals
reg                                       sys_clk     ;  
reg                                       rstn_i      ;
reg                                       tx_valid    ;
reg     [7:0]                             tx_data     ;
wire                                      rx_valid    ;
wire    [7:0]                             rx_data     ;
reg                                       cpol        ;
reg                                       cpha        ;

//SPI signals
wire                                      sck_i       ; 
reg                                       ssn_i       ;
wire                                      mosi_i      ;
wire                                      miso_o      ;

//TEST signals
reg     [7:0]                             rev_test    ;
reg                                       sck_gen_flag;
integer j;
integer k;
integer l;
//------------------Main Code-----------------------------//
//Generate system clock
initial begin
    sys_clk = 0;
    forever begin
      	#(sys_PERIOD/2)   ; 
      	sys_clk = ~sys_clk;
      end
end

//Generate spi clock
always begin
    if (sck_gen_flag & !ssn_i) begin
        #(spi_PERIOD/2) force sck_i = ~sck_i;
    end
    else begin
        #(spi_PERIOD/2) force sck_i = 0;
    end
end

task reset();
begin
    rstn_i = 1;
    #2
    rstn_i = 0;
    #(sys_PERIOD);
    rstn_i = 1;
end
endtask

//Write control register to choose slave mode
initial begin
    reset();
    @(posedge sys_clk);
    u_wb_model.SlaveMode_config(SPCR_ADR, {8'b100_00_011});
end

//Control signals
initial begin
    //initialize signals
    {cpol,cpha}  = 2'b00;
    sck_gen_flag = 0; 
    force sck_i  = cpol;
    ssn_i  = 1;

    //reset system
    reset();

    //wait a while for loading control register
    repeat(5) @(negedge sys_clk);
    
    //start SPI communication
    sck_gen_flag = 1;
    ssn_i  = 0;
end

//MISO: data from slave to master
initial
begin
    reset();
    
    repeat(5) @(negedge sys_clk);

    for (j=0;j<16;j=j+1) begin
        tx_valid = 1  ;
        tx_data  = j+1;
        #(sys_PERIOD)
    
        tx_valid = 0  ;
        tx_data  = 8'bxxxxxxxx;
        
        begin :s0
        integer i;
        for(i=7;i>=0;i=i-1) begin
            #(spi_PERIOD);
          end
        end
    end

    #100
    $finish;
end

//MOSI: data form master to slave
initial
begin
    force mosi_i = 0;
    
    reset();

    repeat(7) @(negedge sys_clk);       //match mosi with sck
    
    for (k=15; k>=0; k=k-1) begin
        rev_test = k;

        for(l=7;l>=0;l=l-1) begin
            force mosi_i = rev_test[l];
        #(spi_PERIOD);
    end
    end

    force mosi_i = 0;
    #100
    $finish;
end


//------------------Instantiate modules------------------------//
wb_master_model #(
  .DATA_WIDTH(WISHBONE_DATA_WIDTH),
  .ADR_WIDTH (WISHBONE_ADR_WIDTH)
) u_wb_model (
  .clk       ( sys_clk  )   ,
  .rst       ( rstn_i   )   ,
  .stb       ( stb      )   ,
  .we        ( we       )   ,
  .adr       ( adr      )   ,
  .dout      ( wb_dat_o )   
);

spi_combine u_spi_combine(
    .clk_i		  ( sys_clk  ),
    .rstn_i		  ( rstn_i   ),
    //spi 
    .mosi		  ( mosi_i   ),
    .miso		  ( miso_o   ),
    .sck		  ( sck_i    ),
    .ssn_i        ( ssn_i    ),
    //master
    .stb_i        ( stb      ),
    .we_i         ( we       ),
    .addr_i       ( adr[1:0] ),
    .data_i       ( wb_dat_o ),
    //slave      
    .tx_valid     ( tx_valid ),
    .tx_data      ( tx_data  ),
    .rx_valid     ( rx_valid ),
    .rx_data      ( rx_data  )
);

//------------------Dump .fsdb files------------------------//
  initial begin        
  `ifdef DUMP_FSDB
      $fsdbDumpfile("tb_spi_slave.fsdb");
      $fsdbDumpvars(0,tb_spi_slave);
      $fsdbDumpon;
  `endif
  end 

endmodule
