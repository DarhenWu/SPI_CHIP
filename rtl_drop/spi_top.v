// modified by chen 
// 2023.11.27 modified by drh  
// 11.29 unified code format  drh
module spi_top(
    //MCU interface
    input            clk_i,         // clock
    input            rstn_i,        // reset  
    input            stb_i,         // mcu address spi core enable
    input      [1:0] addr_i,        // address
    input            we_i,          // MCU write in SPI core/ 1=write 0=read
    input      [7:0] data_i,        // data input
    output reg [7:0] data_o,        // data output
    output reg       ack_o,         // MCU termination
    output reg       int_o,         // interrupt output signal
    //SPI standard ports
    input            miso_i,        // Serial clock output
    output reg       sck_o,         // Master Out Slave IN
    output           mosi_o,        // Chip select bar
    output reg       ssn_o          // Master In  Slave Out
);
//
//--------------------Module Body----------------------------//
// 
//------------------Reg/Wire Define--------------------------//
// SFR signals  
    reg  [7:0] spi_con;     //SPI control register
    reg  [7:0] spi_ext;     //SPI extensions register
    wire [7:0] spi_sta;     //SPI state   register
    reg  [7:0] data_buf;    //data buffer for transmit or receive
// FIFO signals
    wire [7:0] wfifo_dout           ;
    reg        wfifo_ren            ;
    wire       wfifo_wen            ;
    wire       wfifo_ful, wfifo_emp ;
    wire [7:0] rfifo_dout           ;
    reg        rfifo_wen            ;
    wire       rfifo_ren            ;
    wire       rfifo_ful, rfifo_emp ;
// Wishbone bus interface
    wire       wb_acc;
    wire       wb_wr;
// Other
    wire       wr_spi_sta;
    wire       wr_spi_ext;
    wire       wfifo_ov;
    reg        rstn_sync;
    reg        rstn_temp;
    reg  [2:0] bit_cnt;
    reg  [2:0] state;

//----------------------Main Code---------------------------------//
// rstn_sync - Asynchronous reset and synchronous release
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

//wishbone define
assign wb_acc = stb_i;
assign wb_wr  = wb_acc & we_i;

//-------------------spi_con config---------------------------//
always @(posedge clk_i or negedge rstn_sync) begin
    if (!rstn_sync) begin
        spi_con <= 8'b00100000;  //spi_con[4] sets the mode of master/slave
    end
    else if (wb_wr && addr_i == 2'b00) begin
        spi_con <= data_i | 8'b00100000; //always set master mode
    end
end
  //decode spi_con   
  wire         spi_en     = spi_con[7]  ;        //spi enable bit
  wire         spi_int_en = spi_con[6]  ;        //interrupt enable bit
  wire         mode_sel   = spi_con[5]  ;        //select master or slave mode
  wire         cpol       = spi_con[4]  ;        //clock polarity bit
  wire         cpha       = spi_con[3]  ;        //clock phase bit
  wire  [2:0]  sck_sel    = spi_con[2:0];        //sck rate select bits
//-------------------spi_con end--------------------------------//

//-------------------spi_ext config---------------------------//
assign wr_spi_ext = wb_wr & (addr_i == 2'b11);

always @(posedge clk_i or negedge rstn_sync) begin
  	if (!rstn_sync) begin
        spi_ext <= 8'b01001111;
    end
    else if (wb_wr && addr_i == 2'b11) begin
        spi_ext <= data_i;
    end
end

  //decode spi_ext
  wire  [1:0]  intcnt_sel = spi_ext[7:6];        //transfer count every interrupt
  wire  [2:0]  sck_mode   = spi_ext[5:3];        //sck mode select bits
  wire  [2:0]  slave_sel  = spi_ext[2:0];        //spi slave select bits
  
  //count number of transfers for interrupt generation
  reg [1:0] trans_cnt;           //transfer count
  always @(posedge clk_i or negedge rstn_sync) begin
    	if (!rstn_sync) begin
    	  	trans_cnt <= 2'd0;
    	end
    	else begin
    	    if (wr_spi_ext) begin
    	      	trans_cnt <= intcnt_sel;
    	    end
    	    else if (rfifo_wen) begin
    	      	if (|trans_cnt) begin
    	      	  	trans_cnt <= trans_cnt - 1'b1;
    	      	end
    	      	else begin
    	      	  	trans_cnt <= intcnt_sel;
    	      	end
    	    end
    	end
  end
//------------------spi_ext end--------------------------------//

//------------------spi_sta config-----------------------------//
assign wr_spi_sta = wb_wr & (addr_i == 2'b01);
  //spi_int_f define
  reg  spi_int_f;                         //interrupt flag
  wire int_rq = !trans_cnt & rfifo_wen;
  always @(posedge clk_i or negedge rstn_sync) begin
    	if(!rstn_sync) begin
    	    spi_int_f <= 1'b0;
    	end
    	else if(wr_spi_sta & data_i[7]) begin
    	    spi_int_f <= 1'b0;
    	end
    	else begin
    	    spi_int_f <= spi_int_f | int_rq;
    	end
  end
  //wr_col define
  reg wr_col;                            //write collision signal
  always @(posedge clk_i or negedge rstn_sync) begin
    	if(!rstn_sync) begin
    	    wr_col <= 1'b0;
    	end
    	else if(wr_spi_sta & data_i[6]) begin
    	    wr_col <= 1'b0;
    	end
    	else begin
    	    wr_col <= wr_col | wfifo_ov;
    	end
  end
  //define spi_sta
    assign  spi_sta[7]   = spi_int_f ;      // interrupt flag
    assign  spi_sta[6]   = wr_col    ;      // write collision flag
    assign  spi_sta[5:4] = 2'b00     ;      // (not used)
    assign  spi_sta[3]   = wfifo_ful ;      // wfifo full flag
    assign  spi_sta[2]   = wfifo_emp ;      // wfifo empty flag
    assign  spi_sta[1]   = rfifo_ful ;      // rfifo full flag
    assign  spi_sta[0]   = rfifo_emp ;      // rfifo empty flag
//------------------spi_sta end-----------------------------//

//data output to wishbone interface
always @(posedge clk_i or negedge rstn_sync) begin
  	if (!rstn_sync) begin
  	  	data_o <= 8'h00;
  	end
  	else begin
  	  	case (addr_i) //synopsys  paralled_case
  	  	    2'b00 : data_o <= spi_con;
  	  	    2'b01 : data_o <= spi_sta;
  	  	    2'b10 : data_o <= rfifo_dout; 
  	  	    2'b11 : data_o <= spi_ext;
  	  	endcase
  	end
end

//acknowledged signal
always @(posedge clk_i or negedge rstn_sync) begin
  	if (!rstn_sync) begin
  	  	ack_o <= 1'b0;
		end
  	else begin
    		ack_o <= wb_acc & !ack_o;
		end
end

//fifo write/read enable (wfifo_ren and rfifo_wen are set in Statemachine)
assign wfifo_wen = wb_acc    && (addr_i == 2'b10) && ack_o &&  we_i ;
assign wfifo_ov  = wfifo_wen && wfifo_ful;
assign rfifo_ren = wb_acc    && (addr_i == 2'b10) && ack_o && !we_i ;


//------------------divide clk to generate sck-------------------//
reg  [12:0] clk_cnt ;
wire        trans_en;

always @(posedge clk_i or negedge rstn_sync) begin
    if (!rstn_sync) begin
        clk_cnt <= 13'd0;
    end
    else begin
        if (spi_en && (clk_cnt!='h0) && (state!=0)) begin  //state改写
            clk_cnt <= clk_cnt - 1'b1;
        end
        else begin
            case (sck_mode)
              3'b001 : begin
                  case (sck_sel)
                    3'b000: clk_cnt <= 13'h0    ;  //2     division frequency
                    3'b001: clk_cnt <= 13'h1    ;  //4     division frequency
                    3'b010: clk_cnt <= 13'h7    ;  //16    division frequency
                    3'b011: clk_cnt <= 13'h1f   ;  //64    division frequency
                    3'b100: clk_cnt <= 13'h7f   ;  //256   division frequency
                    3'b101: clk_cnt <= 13'h1ff  ;  //1024  division frequency
                    3'b110: clk_cnt <= 13'h7ff  ;  //4096  division frequency
                    3'b111: clk_cnt <= 13'h1fff ;  //16384 division frequency
                  endcase
              end
              3'b010 : begin
                  case (sck_sel)
                    3'b000: clk_cnt <= 13'd4    ;  //10     division frequency
                    3'b001: clk_cnt <= 13'd9    ;  //20     division frequency
                    3'b010: clk_cnt <= 13'd19   ;  //40     division frequency
                    3'b011: clk_cnt <= 13'd79   ;  //160    division frequency
                    3'b100: clk_cnt <= 13'd159  ;  //320    division frequency
                    3'b101: clk_cnt <= 13'd319  ;  //640    division frequency
                    3'b110: clk_cnt <= 13'd1279 ;  //2560   division frequency
                    3'b111: clk_cnt <= 13'd2559 ;  //5120   division frequency
                  endcase  
              end
              3'b100 : begin
                  case (sck_sel)
                    3'b000: clk_cnt <= 13'd4    ;  //10     division frequency
                    3'b001: clk_cnt <= 13'd24   ;  //50     division frequency
                    3'b010: clk_cnt <= 13'd49   ;  //100    division frequency
                    3'b011: clk_cnt <= 13'd99   ;  //200    division frequency
                    3'b100: clk_cnt <= 13'd249  ;  //500    division frequency
                    3'b101: clk_cnt <= 13'd499  ;  //1000   division frequency
                    3'b110: clk_cnt <= 13'd2499 ;  //5000   division frequency
                    3'b111: clk_cnt <= 13'd4999 ;  //10000  division frequency
                  endcase 
              end
              default : begin
                  case (sck_sel)
                    3'b000: clk_cnt <= 13'h0    ;  //2     division frequency
                    3'b001: clk_cnt <= 13'h1    ;  //4     division frequency
                    3'b010: clk_cnt <= 13'h7    ;  //16    division frequency
                    3'b011: clk_cnt <= 13'h1f   ;  //64    division frequency
                    3'b100: clk_cnt <= 13'h7f   ;  //256   division frequency
                    3'b101: clk_cnt <= 13'h1ff  ;  //1024  division frequency
                    3'b110: clk_cnt <= 13'h7ff  ;  //4096  division frequency
                    3'b111: clk_cnt <= 13'h1fff ;  //16384 division frequency
                  endcase
              end
            endcase
        end
    end
end
assign trans_en = ! clk_cnt;
//---------------------------clk division end------------------------------//

//generate interrupt
always @(posedge clk_i or negedge rstn_sync) begin
    if (!rstn_sync) begin
        int_o <= 1'b0;
    end
    else begin
        int_o <= spi_int_en & spi_int_f;
    end
end

//-----------------------------FSM-----------------------------------------//
parameter IDLE              = 3'b000;
parameter Start_Transfer    = 3'b001;
parameter clock_phase2      = 3'b011;
parameter clock_phase1      = 3'b010;
parameter Continue_Transfer = 3'b110;

//start transfer state machine
always @(posedge clk_i or negedge rstn_sync) begin 
    if (~rstn_sync) begin
        state      <= IDLE;           // the state goes to "IDLE"
        data_buf   <= 8'h00;          // clear data_buffer
        sck_o      <= 1'b0;           // sck keep 0
        bit_cnt    <= 3'd0;           // clear transfer counter
        wfifo_ren  <= 1'b0;           // write fifo(data transmit) off
        rfifo_wen  <= 1'b0;           // read fifo(data receive) off
    end
    else begin                       // when spi system is enabled
        wfifo_ren  <=  1'b0;         // write fifo(data transmit) off
        rfifo_wen  <=  1'b0;         // read fifo(data receive) off
        case (state) //synopsys full_case parallel_case
            IDLE: begin                      // when the state goes to "IDLE" 000
                bit_cnt   <= 3'd7;             // set transfer counter as 8(full, meaning a new Bytes[lenth = 8] needs transfer) 
                data_buf  <= wfifo_dout;      // load fifo's data into buffer
                sck_o     <= cpol;            // set sck as sck's polarities in IDLE
                //////////////////////////////// control ssn
                if (wfifo_emp) begin          // when fifo is empty
                  ssn_o <= 1'b1;             // ssn(active low) is off 
                end 
                else begin                    // when fifo isn't empty
                  ssn_o <= 1'b0;
                  state <= Start_Transfer;    // go to Start_Transfer
                end
            end // case: IDLE
            Start_Transfer: begin                // start transfer 001
                if (trans_en) begin                // transfer state only when posedge of "rated clock"
                    wfifo_ren <= 1'b1;             // fifo start reading
                                                    // generate sck
                    state <= clock_phase2;          // go to clock_phase2
                    if (cpha) begin
                        sck_o <= ~sck_o;      // if cpha = 1, receive at the second edge, so need one more reverse
                    end
                end
            end
            clock_phase2: begin                         // clock_phase2, hold data 011
                if (trans_en) begin                     // transfer state only when posedge of "rated clock"
                    sck_o   <= ~sck_o;                  // if cpha = 0, receive at the first edge, so reverse from here
                    state   <= clock_phase1;            // go to clock_phase1
                end
            end
            clock_phase1: begin                         // clock phase1, next date 010
                if (trans_en) begin                     // transfer state only when posedge of "rated clock"
                    data_buf <= {data_buf[6:0], miso_i};// buffer data move left and receive miso_i in LSB
                    bit_cnt  <= bit_cnt - 3'h1;          // one bit of this Byte has been transferred

                    if (!bit_cnt) begin  // 判断count是坦�???0, 注愝此时count值未被上�???行的赋�?�所改坘, 故共�???8次sck脉冲
                                                        // The transferance of this Bytes[lenth = 8] is done.
                        rfifo_wen  <= 1'b1;              // read fifo start writing
                        state      <= Continue_Transfer;
                    end 
                    else begin                          // this Bytes[lenth = 8] still need transfer.                                                        
                        sck_o <= ~sck_o;                 // go to clock_phase2, continue to transfer
                        state <= clock_phase2;           
                    end
                end // if (trans_en)
            end
            Continue_Transfer: begin
                if (wfifo_emp) begin               // if write_fifo is empty, meaning all data has transferred
                    state <= IDLE;                // goto IDLE
                    sck_o <= cpol;                // sck goto IDLE state—�?��?��?�cpol
                end 
                else begin                       // if write_fifo isn't empty, meaning more data needs transferred
                    //////////////////////////////// IDLE和start状�?�那样，准备好数杮，以便直接进入clock2状�??                             
                                                  // do sth. did in IDLE:
                    bit_cnt <= 3'h7;              // set transfer counter as 8
                    data_buf <= wfifo_dout;       // load fifo's data into buffer
                                                  // do sth. did in Start-transfer:
                    wfifo_ren  <= 1'b1;           // ??? write fifo start reading                           
                    sck_o    <= ~sck_o;           // go to clock_phase2, continue to transfer
                    state    <= clock_phase2;     
                end
            end
        endcase
  end // if (~spi_en) else
end // always @(posedge clk_i) 
assign mosi_o = data_buf[7];                       // buffer�???高佝输出至mosi_o, transfer one bit of this Bytes
//--------------------------FSM end-------------------------------------//

//instantiate fifo module
spi_fifo #(8)
read_fifo(
    .clk    ( clk_i      )    ,
    .rstn   ( rstn_sync  )    ,
    .clr    (!spi_en     )    ,
    .din    ( data_buf   )    ,
    .wr_en  ( rfifo_wen  )    ,
    .re_en  ( rfifo_ren  )    ,
    .dout   ( rfifo_dout )    ,
    .full   ( rfifo_ful  )    ,
    .empty  ( rfifo_emp  )
);
spi_fifo #(8)
write_fifo(
    .clk    ( clk_i      )    ,
    .rstn   ( rstn_sync  )    ,
    .clr    (!spi_en     )    ,
    .din    ( data_i     )    ,
    .wr_en  ( wfifo_wen  )    ,
    .re_en  ( wfifo_ren  )    ,
    .dout   ( wfifo_dout )    ,
    .full   ( wfifo_ful  )    ,
    .empty  ( wfifo_emp  )
);

endmodule