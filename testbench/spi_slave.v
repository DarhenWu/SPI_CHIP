
//////////////////////////////////////////////////////////
//// TB : SPI_slave_model                             ////
////        - spi slave with memory                   ////
//// Authors: chy,drh,gez                             ////
//// Description: This slave is a test for spi master ////
////   mode, NOT the slave mode of spi chip.the data  ////
////   sent on miso is from the memory.               ////
////                                                  ////
//////////////////////////////////////////////////////////
module spi_slave (
    input       sck            ,
    input       ena            ,                   //high active
    input       din            ,
    input       rst_n          ,
    output      dout    
);

//
//------------------Module Body----------------------------- //
//
//------------------Reg/Wire Define--------------------------//
// Slave clk config
wire            cpol           ;
wire            cpha           ;
wire            slv_clk        ;
// Slave data config
reg   [7:0]     mem [0:31]     ;                    //slave ram (depth=32 Byte)
reg   [4:0]     mem_addr       ;                    //slave ram 's address
reg   [7:0]     sfr_in         ;                    //shift register of data input
reg   [7:0]     sfr_out        ;                    //shift register of data output
reg   [2:0]     bit_cnt        ;        
reg             sto_en         ;

integer  i ;

//------------------Main Code--------------------------------//
assign slv_clk = sck ^ cpol ^ cpha;

//Reset
always @(negedge rst_n) begin
    if (!rst_n) begin
        mem_addr <= 5'b00000;
        bit_cnt  <= 3'd7;          
    end
end

//Shift register config
always @(posedge slv_clk) begin
    sfr_in <= {sfr_in[6:0] , din} ;
end

always @(negedge slv_clk or negedge rst_n) begin
    if (!rst_n) begin
        sfr_out <= mem[0];
    end
    else if(ena) begin
        if (bit_cnt == 3'd7 && !sto_en) begin
            sfr_out <= mem[mem_addr] ; 
        end
        else if (bit_cnt == 3'd7 && sto_en) begin
            sfr_out <= mem[mem_addr + 1'b1];
        end
        else begin
            sfr_out <= {sfr_out[6:0] , 1'bx};
        end
    end
end
    
assign dout = sfr_out[7] ; 
 
//Generate bit counter
always @(posedge slv_clk) begin
    if (!ena) begin
        bit_cnt <= 3'd7;
    end
    else begin
        bit_cnt <= bit_cnt - 1'b1;
    end
end
 
//Store data input config
always @(posedge slv_clk) begin
    sto_en <= ! bit_cnt;
end
always @(negedge slv_clk) begin
    if (sto_en) begin
        mem[mem_addr] <= sfr_in         ; 
        mem_addr      <= mem_addr + 1'b1;
    end
end


//------------------Initialize memory data--------------//
initial begin
  for (i = 0; i < 32; i = i + 1) begin
    mem[i] = i+1;
  end
end

endmodule
