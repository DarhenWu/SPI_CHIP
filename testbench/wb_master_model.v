//////////////////////////////////////////////////////////
//// TB : wb_master_model                             ////
////        - WISHBONE model					      ////
//// Authors: chy,drh,gez                             ////
//// Description: Simulate write and read operations  ////
////   on the bus.									  ////
////                                                  ////
////                                                  ////
//////////////////////////////////////////////////////////
`timescale 1ns/1ps
module wb_master_model #(
	parameter	DATA_WIDTH 	=   8 						,
	parameter	ADR_WIDTH  	=   32
)(
	input 	            					clk			, 
	input 									rst			,
	input 	             					ack	        ,   	
	input 	 		[DATA_WIDTH - 1:0]  	din			,   	
	output	 reg              				stb 		,   
	output	 reg              				we			,
	output	 reg 	[ADR_WIDTH  - 1:0]  	adr			,
	output	 reg    [DATA_WIDTH - 1:0]  	dout		

);

//----------------------Main Code-----------------------//
initial begin
	stb  = 1'b0					;
    we   = 1'b0					;
    adr  = {ADR_WIDTH  {1'bx}}  ;
	dout = {DATA_WIDTH {1'bx}}  ;
end

//TB: Write data to spi master
task wb_write;
input	[ADR_WIDTH  -1 : 0 ] a	;       //destination address to be written
input	[DATA_WIDTH -1 : 0 ] d	;       //data to be written

begin

	//Assert wishbone signals
	stb  = 1'b1 			;
	we   = 1'b1 			;
	adr  = a				;
	dout = d				;

	repeat(3) @(posedge clk);

	//Waiting for acknowledgement from slave
	while(~ack) 
    	@(posedge clk);

	//Negate wishbone signals at posedge clk when ack is high
	stb  = 1'b0				 ;
	we   = 1'b0				 ;
	adr  = {ADR_WIDTH {1'bx}};
	dout = {DATA_WIDTH{1'bx}};
	end
endtask

//TB: Read data
task wb_read;
input   [ADR_WIDTH  -1 : 0 ] a ;
output  [DATA_WIDTH -1 : 0 ] d ;

begin
	//Assert wishbone signals
	stb  = 1'b1   			  ;
	we   = 1'b0   			  ;
	adr  = a			      ;
	dout = {DATA_WIDTH{1'bx}} ;

	@(posedge clk);
	
	//Waiting for acknowledge from slave
	while(~ack) 
		@(posedge clk);

	//Negate wishbone signals at posedge clk when ack is high
	stb  = 1'b0				   ;
	we   = 1'b0				   ;
	adr  = {ADR_WIDTH {1'bx}}  ;
	dout = {DATA_WIDTH{1'bx}}  ;
	d    = din				   ;
end
endtask

//TB: slave mode config 
task SlaveMode_config;
input	[ADR_WIDTH  -1 : 0] a  ;
input	[DATA_WIDTH -1 : 0] d  ;

begin	
	stb  = 1'b1;
	we   = 1'b1;	
	adr  = a;
	dout = d;
	@(posedge clk);
end

endtask

endmodule
