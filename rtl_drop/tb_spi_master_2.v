//12.5 pm drh
//12.6 am  drh 
`timescale 1ns/1ps
module tb_spi_master();
    parameter WISHBONE_DATA_WIDTH = 8 ;
    parameter WISHBONE_ADR_WIDTH  = 32;

	reg  clk;
	reg  rstn;
	wire [7:0] ssn_o;

	wire [WISHBONE_ADR_WIDTH-1:0]  adr;     //wishbone adr
	wire [WISHBONE_DATA_WIDTH-1:0] wb_dat_i;   //? useless
    wire [WISHBONE_DATA_WIDTH-1:0] wb_dat_o;
	wire we;
	wire stb;
	wire cyc;
	wire ack;
	wire inta;

	reg [1:0] cpol, cpha;
	reg [2:0] e;

	wire sck, mosi, miso;
	reg [7:0] q;

	parameter SPCR_ADR = 2'b00;
	parameter SPSR_ADR = 2'b01;
	parameter SPDR_ADR = 2'b10;
	parameter SPER_ADR = 2'b11;

	integer n;
	// generate clock
	always #5 clk = ~clk;

	// hookup wishbone master model
	wb_model #(
    .DATA_WIDTH(WISHBONE_DATA_WIDTH),
    .ADR_WIDTH (WISHBONE_ADR_WIDTH)
	)u0 (
		.clk (clk),
		.rst (rstn),
		.adr (adr),
		.din (wb_dat_i),
		.dout(wb_dat_o),
		.cyc (cyc),
		.stb (stb),
		.we  (we),
		.ack (ack)
	);

	// hookup spi master mode
	spi_combine u_spi_combine(
        .clk_i		(clk),  
        .rstn_i		(rstn), 
        .mosi		(mosi),
        .miso		(miso),
        .sck		(sck),
        .ssn_o      (ssn_o), 
        .stb_i		(stb),  
        .addr_i		(adr[1:0]), 
        .we_i		(we),   
        .data_i		(wb_dat_o), 
        .data_o		(wb_dat_i), 
        .ack_o		(ack),  
        .int_o		(inta)  
        // .tx_valid,
        // .tx_data, 
        // .rx_valid,
        // .rx_data, 
    );
	// hookup spi slave model
	spi_slave u_spi_slave (
		.ena(~ssn_o[0]),
		.sck(sck),
		.rst_n(rstn),
		.din(mosi),
		.dout(miso)
	);

initial
	  begin

	      $display("\nstatus: %t Testbench started\n\n", $time);


	      // initially values
	      clk = 0;

	      // reset system
	      rstn = 1'b1; // negate reset
	      #2
	      rstn = 1'b0; // assert reset
	      #2
	      rstn = 1'b1; // negate reset
	      $display("status: %t done reset", $time);

	      @(posedge clk);

	      //
	      // program core
	      //
	      for (cpol=0; cpol<=0; cpol=cpol+1)
	      for (cpha=0; cpha<=0; cpha=cpha+1) 
	      for (e=0; e<=0; e=e+1)//e is 3bit
	      begin
	    	//set cpol/cpha in spi slave model
	    	force u_spi_slave.cpol=cpol[0];
	    	force u_spi_slave.cpha=cpha[0];
			// force u_spi_slave.cpol=1'b1;
			// force u_spi_slave.cpha=1'b1;
	          $display("cpol:%b, cpha:%b, e:%b", cpol[0],cpha[0],e[1:0]);
	          //load control register and extension register
	          u0.wb_write(0, SPCR_ADR, {3'b111,cpol[0],cpha[0],3'b001} );//{spi_en,int_en,m/s,cpol,cpha,sck_sel[2:0]}
			  u0.wb_write(0, SPER_ADR, {8'b00_001_000} );//{intcnt_sel  , sck_mode  , slave_sel}

			  //fill memory
	        for(n=0;n<5;n=n+1) begin // write and transfer
	            //u0.wb_write(0,SPDR_ADR,{cpol[0],cpha[0],e[1:0],n,n+1,n-1,n+2});
				u0.wb_write(0,SPDR_ADR,n+5);
				//wait for transfer to finish
 				// u0.wb_read (0,SPSR_ADR,q);
 				// while(~q[7]) u0.wb_read(0,SPSR_ADR,q);
 				// u0.wb_write(0,SPSR_ADR,8'h80);
			end
			//verify memory
	        //   for(n=0;n<8;n=n+1) begin 
	        //     u0.wb_write(1,SPDR_ADR,~n);
	        //     //wait for transfer to finish
	        //     u0.wb_read(1,SPSR_ADR,q);
	        //     while(~q[7]) u0.wb_read(1,SPSR_ADR,q);
	        //     //G:need clear spif 
			// 	//clear 'spif' bit 
	        //     //u0.wb_write(1,SPSR_ADR,8'h80);
			// 	//G:need not verify memory content
	        //     //verify memory content
	        //     //u0.wb_cmp(0,SPDR_ADR,{cpol[0],cpha[0],e[1:0],n[3:0]});
	        //   end
		  end
	      #5000; // wait 250us
	      $display("\n\nstatus: %t Testbench done", $time);
	      $finish;
	  	  end




// 	initial
// 	  begin

// 	      $display("\nstatus: %t Testbench started\n\n", $time);


// 	      // initially values
// 	      clk = 0;

// 	      // reset system
// 	      rstn = 1'b1; // negate reset
// 	      #2;
// 	      rstn = 1'b0; // assert reset
// 	      repeat(1) @(posedge clk);
// 	      rstn = 1'b1; // negate reset

// 	      $display("status: %t done reset", $time);

// 	      @(posedge clk);

// 	      //
// 	      // program core
// 	      //
// 	      for (cpol=0; cpol<=1; cpol=cpol+1)
// 	      for (cpha=0; cpha<=1; cpha=cpha+1) 
// 	      for (e=0; e<=3; e=e+1)//e is 3bit
// 	      begin
// 	          //set cpol/cpha in spi slave model
// 	          force u_spi_slave.cpol=cpol[0];
// 	          force u_spi_slave.cpha=cpha[0];
// 	          $display("cpol:%b, cpha:%b, e:%b", cpol[0],cpha[0],e[1:0]);
// 	          // load control register
// 	          u0.wb_write(1, SPCR_ADR, {4'b1101,cpol[0],cpha[0],e[1:0]} );//(1, SPCR_ADR, {4'b0101,cpol[0],cpha[0],e[1:0]} )
// 	          //verify control register
// 	          u0.wb_cmp  (0, SPCR_ADR, {4'b1101,cpol[0],cpha[0],e[1:0]} );//don't use {4'b0101,cpol[0],cpha[0],e[1:0]}


// 	          //fill memory
// 	          for(n=0;n<8;n=n+1) begin // write and transfer
// 	            u0.wb_write(1,SPDR_ADR,{cpol[0],cpha[0],e[1:0],n[3:0]});
// 	            //wait for transfer to finish
// 	            u0.wb_read(1,SPSR_ADR,q);
// 	            while(~q[7]) u0.wb_read(1,SPSR_ADR,q);
// 				$display($time,":master receive data: %b\n", q,);
// 	            //clear 'spif' bit
// 	            //u0.wb_write(1,SPSR_ADR,8'h80);
// 	          end

// 	          //verify memory
// 	          for(n=0;n<8;n=n+1) begin 
// 	            u0.wb_write(1,SPDR_ADR,~n);
// 	            //wait for transfer to finish
// 	            u0.wb_read(1,SPSR_ADR,q);
// 	            while(~q[7]) u0.wb_read(1,SPSR_ADR,q);
// 	            //G:need clear spif 
// 				//clear 'spif' bit 
// 	            //u0.wb_write(1,SPSR_ADR,8'h80);
// 				//G:need not verify memory content
// 	            //verify memory content
// 	            //u0.wb_cmp(0,SPDR_ADR,{cpol[0],cpha[0],e[1:0],n[3:0]});
// 	          end
// 	      end

// 	      // check tip bit
// //	      u0.wb_read(1, SR, q);
// //	      while(q[1])
// //	      u0.wb_read(1, SR, q); // poll it until it is zero
// //	      $display("status: %t tip==0", $time);

// 	      #250000; // wait 250us
// 	      $display("\n\nstatus: %t Testbench done", $time);
// 	      $finish;
// 	  end

endmodule

