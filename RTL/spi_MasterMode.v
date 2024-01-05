////////////////////////////////////////////////////////////
//// SPI Master Mode                                    ////
////        - SPI chip working as master                ////
//// Authors: chy,drh,gez                               ////
//// Description: This is the master mode of spi chip.  ////
////   We have made improvements to Richard Hervielle's ////
////   code.We use a bus similar to WISHBONE to write   ////
////   the data to sent. An 8bits ssn output is used to ////
////   choose a slave for communication.                ////
////////////////////////////////////////////////////////////
module spi_MasterMode (
    //MCU interface
    input               clk_i           ,              // System clock
    input               rstn_i          ,              // Low active reset  
    input               master_mode     ,              // Master mode selection
    input               stb_i           ,              // Mcu address spi core enable
    input        [1:0]  addr_i          ,              // Address
    input               we_i            ,              // MCU write in SPI core/ 1=write 0=read
    input        [7:0]  data_i          ,              // Data input
    input        [7:0]  spi_con_i       ,              // Spi control register
    output  reg  [7:0]  data_o          ,              // Data output
    output  reg         ack_o           ,              // Acknowledgment to MCU
    output  reg         int_o           ,              // Interrupt output signal
    //SPI standard ports           
    output  reg         sck_o           ,              // Serial clock output
    output       [7:0]  ssn_o_8         ,              // Slave select
    output              mosi_o          ,              // Master out Slave in
    input               miso_i                         // Master in Slave out`
);
//
//--------------------Module Body----------------------//
// 
//--------------------Reg/Wire Define------------------//
// SFR signals  
wire      [7:0]       spi_con              ;            //SPI control register 
reg       [7:0]       spi_ext              ;            //SPI extensions register
wire      [7:0]       spi_sta              ;            //SPI status register
reg       [7:0]       data_buf             ;            //Data buffer for transmitting or receiving
// Control Register related signals                                 
wire                  spi_en               ;            //SPI core enable
wire                  spi_int_en           ;            //Interrupt enable
wire                  mode_sel             ;            //1-MasterMode   0-SlaveMode
wire                  cpol                 ;            //Clock polarity
wire                  cpha                 ;            //Clock phase
wire      [2:0]       sck_sel              ;            //SCK frequency select bits
// Extension Register related signals 
wire      [1:0]       intcnt_sel           ;            //Interrupt on transfer count
wire      [2:0]       sck_mode             ;            //SCK Mode
wire      [2:0]       slave_sel            ;            //Slave select(ssn)
reg       [1:0]       trans_cnt            ;            //Transfer count
// Status Register related signals
reg                   spi_int_f            ;            //Interrupt flag
wire                  int_rq               ;            //Interrupt request 
reg                   wr_col_f             ;            //Write collision signal
// FIFO signals    
wire      [7:0]       wfifo_dout           ;            //Dataout of write fifo
reg                   wfifo_ren            ;            //Write fifo read enable
wire                  wfifo_wen            ;            //Write fifo write enable
wire                  wfifo_ful, wfifo_emp ;            //Write fifo full/empty
wire                  wfifo_ov             ;            //Write fifo overwrite
wire      [7:0]       rfifo_dout           ;            //Dataout of read fifo 
reg                   rfifo_wen            ;            //Read fifo write enable
wire                  rfifo_ren            ;            //Read fifo read enable
wire                  rfifo_ful, rfifo_emp ;            //Read fifo full/empty
// Wishbone bus interface
wire                  master_ena           ;            //Master mode enable
wire                  wb_acc               ;            //Wishbone access
wire                  wb_wr                ;            //Wishbone write access
wire                  wr_spi_sta           ;            //Status register write enable
wire                  wr_spi_ext           ;            //Extension register wirte enable
// Other
wire                  spi_en_n             ;            // !spi_en
reg       [2:0]       bit_cnt              ;            //Bit count in transmit
reg       [2:0]       state                ;            
reg                   ssn                  ;
reg       [12:0]      clk_cnt              ;            //Clk divide counter
wire                  trans_en             ;            //SPI transmit enable


//--------------------Main Code-------------------------//

//SPI master enable
assign    master_ena = master_mode       ;
//Wishbone define    
assign    wb_acc     = stb_i             ;
assign    wb_wr      = wb_acc & we_i     ;


//-------------------Control Register config------------//
assign    spi_con    = spi_con_i         ;
//Decode spi_con     
assign    spi_en     = spi_con[7]        ;                 //SPI enable bit
assign    spi_int_en = spi_con[6]        ;                 //Interrupt enable bit
assign    cpol       = spi_con[4]        ;                 //Clock polarity bit
assign    cpha       = spi_con[3]        ;                 //Clock phase bit
assign    sck_sel    = spi_con[2:0]      ;                 //Sck rate select bits
     
assign    spi_en_n   = ~spi_en           ; 
//-------------------Config end--------------------------//


//-------------------Extension Register config-----------//
assign    wr_spi_ext = wb_wr & (addr_i == 2'b11);

//Write spi_ext
always @(posedge clk_i or negedge rstn_i) begin
  	if (!rstn_i) begin
        spi_ext <= 8'b0000_1000;
    end
    else if (master_ena && wr_spi_ext) begin
        spi_ext <= data_i;
    end
end

//Decode spi_ext
assign    intcnt_sel  = spi_ext[7:6]      ;                 //Transfer count every interrupt
assign    sck_mode    = spi_ext[5:3]      ;                 //Sck mode select bits
assign    slave_sel   = spi_ext[2:0]      ;                 //SPI slave select bits

//Count number of transfers for interrupt generation
always @(posedge clk_i or negedge rstn_i) begin
  	if (!rstn_i) begin
  	  	trans_cnt <= 2'd0;
  	end
  	else if(master_ena)begin
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
//--------------------Config end--------------------------//

//--------------------Status Register config---------------//
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

//Define spi_sta    
assign    spi_sta[7]     =    spi_int_f     ;             // Interrupt   flag
assign    spi_sta[6]     =    wr_col_f      ;             // Write collision flag
assign    spi_sta[5:4]   =    2'b00         ;             // (Not used)
assign    spi_sta[3]     =    wfifo_ful     ;             // wfifo full  flag
assign    spi_sta[2]     =    wfifo_emp     ;             // wfifo empty flag
assign    spi_sta[1]     =    rfifo_ful     ;             // rfifo full  flag
assign    spi_sta[0]     =    rfifo_emp     ;             // rfifo empty flag
//--------------------Config  end-------------------------//

//Set data output(to wishbone interface)
always @(posedge clk_i or negedge rstn_i) begin
  	if (!rstn_i) begin
  	  	data_o <= 8'h00;
  	end
  	else if(master_ena)begin
  	  	case (addr_i)        //synopsys  parallel_case
  	  	    2'b00 : data_o <= spi_con    ;
  	  	    2'b01 : data_o <= spi_sta    ;
  	  	    2'b10 : data_o <= rfifo_dout ; 
  	  	    2'b11 : data_o <= spi_ext    ;
  	  	endcase
  	end
end

//Set acknowledgement signal
always @(posedge clk_i or negedge rstn_i) begin
  	if (!rstn_i) begin
  	  	ack_o <= 1'b0;
	end
  	else if(master_ena)begin
    	ack_o <= wb_acc & !ack_o;
	end
end

//Generate interrupt
always @(posedge clk_i or negedge rstn_i) begin
    if (!rstn_i) begin
        int_o <= 1'b0;
    end
    else if(master_ena)begin
        int_o <= spi_int_en & spi_int_f;
    end
end

//Set fifo signals
//(wfifo_ren and rfifo_wen are set in Statusmachine)
assign    wfifo_wen   =  wb_acc    &&  (addr_i == 2'b10) && ack_o &&  we_i ;
assign    wfifo_ov    =  wfifo_wen &&  wfifo_ful                           ;
assign    rfifo_ren   =  wb_acc    &&  (addr_i == 2'b10) && ack_o && !we_i ;


//--------------------Divide clk to generate sck-----------//
always @(posedge clk_i or negedge rstn_i) begin
    if (!rstn_i) begin
        clk_cnt <= 13'd0;
    end
    else if(master_ena) begin
        if (spi_en && (clk_cnt != 13'd0) && (state != 3'd0)) begin
            clk_cnt <= clk_cnt - 1'b1;
        end
        else begin
            case (sck_mode)
                3'b001 : begin
                    case (sck_sel)
                        3'b000 : clk_cnt <= 13'h1    ;           //4     division frequency
                        3'b001 : clk_cnt <= 13'h3    ;           //8     division frequency
                        3'b010 : clk_cnt <= 13'h7    ;           //16    division frequency
                        3'b011 : clk_cnt <= 13'h1f   ;           //64    division frequency
                        3'b100 : clk_cnt <= 13'h7f   ;           //256   division frequency
                        3'b101 : clk_cnt <= 13'h1ff  ;           //1024  division frequency
                        3'b110 : clk_cnt <= 13'h7ff  ;           //4096  division frequency
                        3'b111 : clk_cnt <= 13'h1fff ;           //16384 division frequency
                    endcase
                end
                3'b010 : begin
                    case (sck_sel)
                        3'b000 : clk_cnt <= 13'd4    ;           //10     division frequency
                        3'b001 : clk_cnt <= 13'd9    ;           //20     division frequency
                        3'b010 : clk_cnt <= 13'd19   ;           //40     division frequency
                        3'b011 : clk_cnt <= 13'd79   ;           //160    division frequency
                        3'b100 : clk_cnt <= 13'd159  ;           //320    division frequency
                        3'b101 : clk_cnt <= 13'd319  ;           //640    division frequency
                        3'b110 : clk_cnt <= 13'd1279 ;           //2560   division frequency
                        3'b111 : clk_cnt <= 13'd2559 ;           //5120   division frequency
                    endcase  
                end
                3'b100 : begin
                    case (sck_sel)
                        3'b000 : clk_cnt <= 13'd4    ;           //10     division frequency
                        3'b001 : clk_cnt <= 13'd24   ;           //50     division frequency
                        3'b010 : clk_cnt <= 13'd49   ;           //100    division frequency
                        3'b011 : clk_cnt <= 13'd99   ;           //200    division frequency
                        3'b100 : clk_cnt <= 13'd249  ;           //500    division frequency
                        3'b101 : clk_cnt <= 13'd499  ;           //1000   division frequency
                        3'b110 : clk_cnt <= 13'd2499 ;           //5000   division frequency
                        3'b111 : clk_cnt <= 13'd4999 ;           //10000  division frequency
                    endcase 
                end
                default : begin
                    case (sck_sel)
                        3'b000 : clk_cnt <= 13'h1    ;           //4      division frequency
                        3'b001 : clk_cnt <= 13'h3    ;           //8      division frequency
                        3'b010 : clk_cnt <= 13'h7    ;           //16     division frequency
                        3'b011 : clk_cnt <= 13'h1f   ;           //64     division frequency
                        3'b100 : clk_cnt <= 13'h7f   ;           //256    division frequency
                        3'b101 : clk_cnt <= 13'h1ff  ;           //1024   division frequency
                        3'b110 : clk_cnt <= 13'h7ff  ;           //4096   division frequency
                        3'b111 : clk_cnt <= 13'h1fff ;           //16384  division frequency
                    endcase
              end
            endcase
        end
    end
end
assign    trans_en = !clk_cnt;

//--------------------Clk division end---------------------//


//--------------------FSM----------------------------------//
parameter     IDLE                =     3'b000       ;
parameter     Start_Transfer      =     3'b001       ;
parameter     clock_phase2        =     3'b011       ;
parameter     clock_phase1        =     3'b010       ;
parameter     Continue_Transfer   =     3'b110       ;

//Start transfer state machine
always @(posedge clk_i or negedge rstn_i) begin 
    if (~rstn_i) begin
        state      <= IDLE;         
        data_buf   <= 8'h00;        
        sck_o      <= 1'b0;         
        bit_cnt    <= 3'd0;         
        wfifo_ren  <= 1'b0;         
        rfifo_wen  <= 1'b0;         
        ssn        <= 1'b1;
    end
    else if(master_ena)begin         
        wfifo_ren  <=  1'b0;         
        rfifo_wen  <=  1'b0;         
        case (state)//synopsys full_case parallel_case
            IDLE: begin                      
                bit_cnt   <= 3'd7;         
                data_buf  <= wfifo_dout;     
                sck_o     <= cpol;           
                if (wfifo_emp) begin       
                  ssn  <= 1'b1;            
                end 
                else begin                 
                  ssn <= 1'b0;
                  state <= Start_Transfer; 
                end
            end // case: IDLE
            Start_Transfer: begin               
                if (trans_en) begin             
                    wfifo_ren <= 1'b1;          
                                                
                    state <= clock_phase2;      
                    if (cpha) begin
                        sck_o <= ~sck_o;   
                    end
                end
            end
            clock_phase2: begin                         
                if (trans_en) begin                     
                    sck_o   <= ~sck_o;                
                    state   <= clock_phase1;            
                end
            end
            clock_phase1: begin                         
                if (trans_en) begin                     
                    data_buf <= {data_buf[6:0], miso_i};
                    bit_cnt  <= bit_cnt - 3'h1;         

                    if (!bit_cnt) begin  
                                                        
                        rfifo_wen  <= 1'b1;             
                        state      <= Continue_Transfer;
                    end 
                    else begin                                                                             
                        sck_o <= ~sck_o;               
                        state <= clock_phase2;           
                    end
                end 
            end
            Continue_Transfer: begin
                if (wfifo_emp) begin             
                    state <= IDLE;               
                    sck_o <= cpol;               
                end 
                else begin                                               
                    bit_cnt   <= 3'h7;              
                    data_buf  <= wfifo_dout;                                    
                    wfifo_ren <= 1'b1;                         
                    sck_o     <= ~sck_o;           
                    state     <= clock_phase2;     
                end
            end
        endcase
  end 
end 
assign    mosi_o = data_buf[7];               
//--------------------FSM end------------------------------//

//--------------------Instantiate modules------------------//
//FIFO module
spi_fifo #(8) read_fifo(
    .clk    ( clk_i      )    ,
    .rstn   ( rstn_i     )    ,
    .clr    ( spi_en_n   )    ,
    .din    ( data_buf   )    ,
    .wr_en  ( rfifo_wen  )    ,
    .re_en  ( rfifo_ren  )    ,
    .dout   ( rfifo_dout )    ,
    .full   ( rfifo_ful  )    ,
    .empty  ( rfifo_emp  )
);
spi_fifo #(8) write_fifo(
    .clk    ( clk_i      )    ,
    .rstn   ( rstn_i     )    ,
    .clr    ( spi_en_n   )    ,
    .din    ( data_i     )    ,
    .wr_en  ( wfifo_wen  )    ,
    .re_en  ( wfifo_ren  )    ,
    .dout   ( wfifo_dout )    ,
    .full   ( wfifo_ful  )    ,
    .empty  ( wfifo_emp  )
);

//8 ssn to slaves
BitDistributor8 slave_selector(
    .inputs  ( ssn        )   ,
    .select  ( slave_sel  )   ,
    .outputs ( ssn_o_8    )
);

endmodule
