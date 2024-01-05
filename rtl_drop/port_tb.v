`timescale  1ns / 1ps 
module port_tb;
parameter PERIOD  = 10; 
reg  outline ;
reg  control ;
wire inline ;
wire portline; 

initial begin
control = 1;

begin: mosi_o
    integer i;
    reg [7:0] message;
    message = 8'b10101010;
    for (i = 0; i < 8; i = i + 1) begin
        outline = message[i];
        #(PERIOD);
    end
end
control = 0;
begin: mosi_i
    integer i;
    reg [7:0] message;
    message = 8'b10101010;
    for (i = 0; i < 8; i = i + 1) begin
        force portline = message[i];
        #(PERIOD);
    end
end
$finish;
end

inout_port inout_port_u(
    .outline  ( outline  ), //message sent out
    .control  ( control  ), //control to send or to receive
    .inline   ( inline   ), //message received
    .portline ( portline )  //the port to send or receive message
);
endmodule