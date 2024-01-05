///////////////////////////////////////////////////////////////
//// TB : tb_spi_master                               	   ////
////        - Testbench for spi master mode		      	   ////
//// Authors: chy,drh,gez                             	   ////
//// Description: This is the testbench of spi mastermode. ////
////  We test the four working modes determined by CPOL    ////
////  and CPHA in sequence. Test four sck frequencies for  ////
////  each working mode and transfer four bytes of data    ////
////  at each frequency.								   ////
///////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module tb_spi_master();

parameter		SYS_CLK_PERIOD		= 10  		 	;
parameter		WISHBONE_DATA_WIDTH = 8   		 	;
parameter		WISHBONE_ADDR_WIDTH = 2   		 	;	

parameter		CON_ADDR  =  2'b00		  		 	;
parameter		STA_ADDR  =  2'b01		  		 	;
parameter		DAT_ADDR  =  2'b10		  		 	;
parameter		EXT_ADDR  =  2'b11		  		 	;
//------------------TB Signal Define----------------------//
//Top signals
reg 	 							sys_clk 		;
reg 	 							rstn			;

wire	 						 	stb				;
wire	 [WISHBONE_ADDR_WIDTH-1:0]  adr				;   
wire	 							we				;
wire	 [WISHBONE_DATA_WIDTH-1:0]  wb_dat_i		; 
wire	 [WISHBONE_DATA_WIDTH-1:0]  wb_dat_o		;
wire	 							ack				;
wire	 							inta			;

wire								sck  			;
wire								mosi 			;
wire								miso 			;
wire	 [7:0]  					ssn_o			;

//Test signals
reg 	 [1:0] 						cpol			;
reg 	 [1:0] 						cpha			;
reg 	 [3:0]   					sck_freq_sel	;
reg 	 [7:0]   					readout_data	;				 
integer  n	;

//------------------Main Code-----------------------------//
//Generate clock
initial begin
    sys_clk = 0;
	forever begin
    	#(SYS_CLK_PERIOD/2) ; 
    	sys_clk = ~sys_clk;
    end
end

//Reset chip
task reset(); 
begin
	rstn = 1'b1; 
	#2
	rstn = 1'b0;
	#5
	rstn = 1'b1; 
end
endtask

//Test1: 4 working mode controled by cpol/cpha
//		 each working mode testing 4 kind of sck frequency
//		 each sck frequency sending and receiving 4 bytes of data 
initial begin
	
	reset();
	
	@(posedge sys_clk);

	for (cpha = 0; cpha <= 1; cpha = cpha + 1) begin
	for (cpol = 0; cpol <= 1; cpol = cpol + 1) begin
		for (sck_freq_sel = 0; sck_freq_sel <= 6; sck_freq_sel = sck_freq_sel + 2)  begin
	    
		//Set cpol/cpha in spi_slave model 
	    force	u_spi_slave.cpol = cpol[0] ; 
	    force	u_spi_slave.cpha = cpha[0] ; 
	    
		//Write control register and extension register
	    u_wb_model.wb_write( CON_ADDR , {3'b111,cpol[0],cpha[0],sck_freq_sel[2:0]} ); //{spi_en,int_en,m/s,cpol,cpha,sck_sel[2:0]}
		u_wb_model.wb_write( EXT_ADDR , {8'b00_001_000} );//{intcnt_sel  , sck_mode  , slave_sel}
		
		//Load data
	    for(n=0;n<4;n=n+1) begin
			u_wb_model.wb_write(DAT_ADDR,n+5);
 			u_wb_model.wb_read (STA_ADDR,readout_data);
 			while(~readout_data[7]) 	//waiting interrupt flag
				u_wb_model.wb_read(STA_ADDR,readout_data);
 			u_wb_model.wb_write(STA_ADDR,8'h80);	//Clear interrupt flag
		end
		end
	end
	end
	#100000
	$finish;
end


// //Test2:  Continuously sending data without waiting reply for interrupts
// initial begin
	
// 	reset();
	  
// 	@(posedge sys_clk);

// 	//Set cpol/cpha in spi_slave model
// 	force	u_spi_slave.cpol = 0;
// 	force	u_spi_slave.cpha = 0;

// 	//Write control register and extension register
// 	u_wb_model.wb_write( CON_ADDR, {3'b111,1'b0,1'b0,3'b001} );//{spi_en,int_en,m/s,cpol,cpha,sck_sel[2:0]}
// 	u_wb_model.wb_write( EXT_ADDR, {8'b00_001_000} );//{intcnt_sel  , sck_mode  , slave_sel
	
// 	//Load data
// 	for(n=0;n<4;n=n+1) begin 
// 		u_wb_model.wb_write(DAT_ADDR,n+5);
// 	end

// 	#5000; 

// 	$finish;
// end


//------------------Instantiate modules------------------------//

wb_master_model #(
.DATA_WIDTH(WISHBONE_DATA_WIDTH),
.ADR_WIDTH (WISHBONE_ADDR_WIDTH)
) u_wb_model (
	.clk 		(sys_clk  )  	,
	.rst 		(rstn	  ) 	,
	.adr 		(adr	  ) 	,
	.din 		(wb_dat_i )  	,
	.dout		(wb_dat_o )  	,
	.stb 		(stb	  )		,
	.we  		(we		  )		,
	.ack 		(ack	  )
);

spi_combine u_spi_combine(
    .clk_i		(sys_clk  )		,  
    .rstn_i		(rstn     )		, 
    .mosi		(mosi     )		,
    .miso		(miso	  )		,
    .sck		(sck	  )		,
    .ssn_o      (ssn_o	  )		, 
    .stb_i		(stb	  )		,  
    .addr_i		(adr[1:0] )		, 
    .we_i		(we		  )		,   
    .data_i		(wb_dat_o )		, 
    .data_o		(wb_dat_i )		, 
    .ack_o		(ack	  )		,  
    .int_o		(inta	  )  
);

spi_slave u_spi_slave(
	.ena        (~ssn_o[0])		,
	.sck	    (sck	  )		,
	.rst_n	    (rstn	  )		,
	.din	    (mosi	  )		,
	.dout		(miso	  )
);

//------------------Dump .fsdb files------------------------//
  initial begin        
  `ifdef DUMP_FSDB
      $fsdbDumpfile("tb_spi_master.fsdb");
      $fsdbDumpvars(0,tb_spi_master);
      $fsdbDumpon;
  `endif
  end 

initial begin
`ifdef NET_SIM
    $sdf_annotate("../SYN/DC/OUT/dc_v1/spi_combine.sdf", spi_combine);  
 `endif
end

initial begin
`ifdef LAYOUT_SIM
    $sdf_annotate("../PR/Output_Files/spi_combine.sdf", spi_combine);  
 `endif
end

endmodule
