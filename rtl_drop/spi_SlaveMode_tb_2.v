//12.9 hengyi
//12.10 drh
`timescale  1ns / 1ps      
module spi_SlaveMode_tb;   

// spi_SlaveMode Parameters
parameter    sys_PERIOD          = 10;    
parameter    spi_PERIOD          = 160;
//host
parameter    WISHBONE_DATA_WIDTH = 8 ;
parameter    WISHBONE_ADR_WIDTH  = 32;
wire         [WISHBONE_ADR_WIDTH  - 1 : 0] adr;     //wishbone adr
wire         [WISHBONE_DATA_WIDTH - 1 : 0] wb_dat_i;   //? useless
wire         [WISHBONE_DATA_WIDTH - 1 : 0] wb_dat_o;
wire         we;
wire         stb;
wire         cyc;
wire         ack;
wire         inta;

reg          cpol,
             cpha;

wire         sck,
             mosi,
             miso;
reg [7:0]    q;
	
parameter SPCR_ADR = 2'b00;
parameter SPSR_ADR = 2'b01;
parameter SPDR_ADR = 2'b10;
parameter SPER_ADR = 2'b11;
integer n;
// spi_SlaveMode Inputs 
wire         sck_i        ; 
reg          sys_clk      ;  
reg          rstn_i       ;
reg  [7:0]   tx_data      ;
//reg          ena          ;
reg          tx_valid     ;
reg          ssn_i        ;
wire         mosi_i       ;

reg  [7:0]   test1        ;
reg  [7:0]   test2        ;
// spi_SlaveMode Outputs
wire [7:0]   rx_data      ;
wire         miso_o       ;
wire         rx_valid     ;
//generata sck
reg          sck_gen_flag;

always begin
  //if (sck_gen_flag & ena & !ssn_i) begin
  if (sck_gen_flag & !ssn_i) begin
    #(spi_PERIOD/2) force sck_i = ~sck_i;
  end
  else begin
    #(spi_PERIOD/2) force sck_i = 0;
  end
end

//generate sys_clk
always #(sys_PERIOD/2) sys_clk = ~sys_clk;

initial begin
    u0.SlaveMode_config(0, SPCR_ADR, {8'b110_10_011} );
end
//mosi  data form master to slave
initial
begin
    test1  = 8'b10010001;    //master to slave
    test2  = 8'b10110110;
    {cpol,cpha}  = 2'b10;
    force mosi_i = 0;
    #2
    //reset
    //rstn_i = 0;
    #3
    //rstn_i = 1;
    #75
    // load control register
    // #100 // mode = 01
    force mosi_i = test1[7];
    begin :s2
    integer i;
    for(i=7;i>=0;i=i-1) begin
        force mosi_i = test1[i];
        #(spi_PERIOD);
      end
    end
    begin :s3
    integer i;
    for(i=7;i>=0;i=i-1) begin
        force mosi_i = test2[i];
        #(spi_PERIOD);
      end
    end
    force mosi_i = 0;
    #100
    $finish;
end

//miso  data from slave to master
initial
begin
    sys_clk      = 0;
    sck_gen_flag = 0; 
    rstn_i = 1;
    force sck_i  = cpol;
    ssn_i  = 1;
    #2
    //reset
    rstn_i = 0;
    #3
    rstn_i = 1;
    #25
    // load control register
    #79 // mode = 10
    force sck_i  = cpol;
    sck_gen_flag = 1;
    #1
    ssn_i  = 0;
    // #120 // mode = 01
    tx_valid = 1;
    tx_data = 8'b01000101;
    #(sys_PERIOD)
    tx_valid = 0;   
    #5
    begin :s0
    integer i;
    for(i=7;i>=0;i=i-1) begin
        #(spi_PERIOD);
      end
    end
    tx_valid = 1;   
    tx_data = 8'b10110100;
    #10
    tx_valid = 0;
    begin :s1
    integer i;
    for(i=7;i>=0;i=i-1) begin
        #(spi_PERIOD);
      end
    end
    sck_gen_flag = 0;
    #100
    $finish;
end

wb_model #(
  .DATA_WIDTH(WISHBONE_DATA_WIDTH),
  .ADR_WIDTH (WISHBONE_ADR_WIDTH)
)u0 (
  .clk      ( sys_clk  ),
  .rst      ( rstn_i   ),
  .adr      ( adr      ),
  .din      ( wb_dat_i ),
  .dout     ( wb_dat_o ),
  .cyc      ( cyc      ),
  .stb      ( stb      ),
  .we       ( we       ),
  .ack      ( ack      )
);

spi_combine u_spi_combine(
  .clk_i		( sys_clk  ),
  .rstn_i		( rstn_i   ),
  //spi 
  .mosi		  ( mosi_i   ),
  .miso		  ( miso_o   ),
  .sck		  ( sck_i    ),
  .ssn_i    ( ssn_i    ),
  //master
  .stb_i    ( stb      ),
  .addr_i   ( adr[1:0] ),
  .we_i     ( we       ),
  .data_i   ( wb_dat_o ),
  .data_o   ( wb_dat_i ),
  .ack_o		( ack      ),
  .int_o		( inta     ),
  //slave 
  .tx_valid ( tx_valid ),
  .tx_data  ( tx_data  ),
  .rx_valid ( rx_valid ),
  .rx_data  ( rx_data  )
);
endmodule