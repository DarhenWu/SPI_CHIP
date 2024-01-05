`timescale 1ns/1ps
//Modified by GEZ
module wb_model #(
parameter DATA_WIDTH = 8 ,
parameter ADR_WIDTH  = 32 
)(
input               			clk			, 
input							rst			,
output reg 	[ADR_WIDTH :1]  	adr			,
input  		[DATA_WIDTH:1]  	din			,
output reg  [DATA_WIDTH:1]  	dout		,
output reg              		cyc 		,   //not used
output reg              		stb 		,
output reg              		we			,
//output reg 	[DATA_WIDTH/8:1] 	sel			,//can be deleted
input               			ack			
//input               			err			,//can be deleted
//input               			rty			 //can be deleted
);


reg [DATA_WIDTH:1]   data_read_tem;

initial
	begin
		adr  = {ADR_WIDTH {1'b0}};
		dout = {DATA_WIDTH{1'b0}};
		cyc  = 1'b0;
		stb  = 1'b0;
		we   = 1'h0;
		//sel  = {DATA_WIDTH/8{1'bx}};//can be deleted
		//#1;
		//$display("\nINFO: WISHBONE MASTER MODEL INSTANTIATED (%m)\n");
	end

// tb:write data
task wb_write;
	input     delay;
	integer   delay;
	input	[ADR_WIDTH :1] a;//destination address to be written
	input	[DATA_WIDTH:1] d;//data to be written

	begin

		// wait initial delay
		repeat(delay) @(posedge clk);

		// assert wishbone signal
		//#1;
		adr  = a;
		dout = d;
		//cyc  = 1'b1;
		stb  = 1'b1;
		we   = 1'b1;
		//sel  = {DATA_WIDTH/8{1'b1}};
		@(posedge clk);

		// wait for acknowledge from slave
		while(~ack) @(posedge clk);

		// negate wishbone signals at posedge clk when ack is high
		//#1;
		//cyc  = 1'b0;
		stb  = 1'b0;
		adr  = {ADR_WIDTH {1'bx}};
		dout = {DATA_WIDTH{1'bx}};
		we   = 1'h0;
		//sel  = {DATA_WIDTH/8{1'bx}};

	end
endtask
//tb:read data
task wb_read;
	input   delay;
	integer delay;

	input   [ADR_WIDTH :1] a;
	output  [DATA_WIDTH:1] d;

	begin

		// wait initial delay
		repeat(delay) @(posedge clk);

		// assert wishbone signals
		//#1;
		adr  = a;
		dout = {DATA_WIDTH{1'bx}};
		//cyc  = 1'b1;
		stb  = 1'b1;
		we   = 1'b0;//read don't need we
		//sel  = {DATA_WIDTH/8{1'b1}};
		@(posedge clk);

		// wait for acknowledge from slave
		while(~ack) @(posedge clk);

		// negate wishbone signals
		//#1;
		//cyc  = 1'b0;
		stb  = 1'b0;
		adr  = {ADR_WIDTH {1'bx}};
		dout = {DATA_WIDTH{1'bx}};
		we   = 1'h0;
		//sel  = {DATA_WIDTH/8{1'bx}};
		d    = din;

	end
endtask

// tb:write data
task SlaveMode_config;
	input   delay;
	integer delay;
	input	[ADR_WIDTH :1] a;//destination address to be written
	input	[DATA_WIDTH:1] d;//data to be written

	begin

		// wait initial delay
		repeat(delay) @(posedge clk);
		
		adr  = a;
		dout = d;
		stb  = 1'b1;
		we   = 1'b1;
		@(posedge clk);
	end
endtask


////////////////////////////////////////////////////////////////////
//
// Wishbone compare cycle (read data from location and compare with expected data)
//

// task wb_cmp;
// 	input   delay;
// 	integer delay;

// 	input [ADR_WIDTH :1] a;
// 	input [DATA_WIDTH:1] d_exp;

// 	begin
// 	  wb_read (delay, a, data_read_tem);

// 	  if (d_exp !== data_read_tem)
// 	    $display("Data compare error. Received %h, expected %h at time %t", data_read_tem, d_exp, $time);
// 	end
// endtask

endmodule


