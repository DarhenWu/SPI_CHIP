`timescale 1ns/1ps
module spi_slave_tb();

 reg  sck; 
 reg  ena; 
 reg  din; 
 wire dout;

 reg      cpol      ;
 reg      cpha      ;

 //reg [7:0] mem[0:7]  ;        //slave ram
//  reg [2:0] mem_addr  ;        //slave ram 's address
//  reg [7:0] mem_out   ;        //slave ram 's data output
//  reg [7:0] sfr_in    ;        //shift register of data input
//  reg [7:0] sfr_out   ;        //shift register of data output
//  reg [2:0] bit_cnt   ;        
//  reg       sto_en    ;
    
always begin
  if (!ena) begin
    #5 sck = ~sck;
  end
  else begin
    // 如果 en 为 0，则保持 clk 为 0
    sck = 0;
    // 增加一个适当的延迟，以模拟时钟的周期
    #5;
  end
end
initial begin
    sck = 0;
    cpol= 0;
    cpha= 0;
    ena = 1;
#7
    ena = 0;
#3
    din = 1;
#10
    din = 0;
#10
    din = 1;
#10
    din = 1;
#10
    din = 0;
#10
    din = 0;
#10
    din = 1;
#10
    din = 0;
#15 
    ena =1 ;
#100
$finish;   
end

spi_slave u(
    .sck(sck),
    .ena(ena), 
    .din(din),
    .dout(dout)
);
endmodule