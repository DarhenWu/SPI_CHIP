//This slave is a test for spi master mode
//NOT the slave mode of spi chip

module spi_slave (
    input       sck     ,
    input       ena     ,//high active
    input       din     ,
    input       rst_n   ,
    output      dout    
);
//
//------------------Module Body----------------------------- //
//
//------------------Reg/Wire Define--------------------------//
// slave clk config
wire      cpol = 1'b0    ;
wire      cpha = 1'b0    ;
wire      slv_clk ;
// slave data config
reg [7:0] mem[0:7]  ;        //slave ram
reg [2:0] mem_addr  ;        //slave ram 's address
reg [7:0] sfr_in    ;        //shift register of data input
reg [7:0] sfr_out   ;        //shift register of data output
reg [2:0] bit_cnt   ;        
reg       sto_en    ;

integer i;
//------------------Main Code--------------------------------//
assign slv_clk = sck ^ cpol ^ cpha;
 //reset
    always @(negedge rst_n) begin
        if (!rst_n) begin
            mem_addr <= 1'b0;
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
 
 //generate bit counter
    always @(posedge slv_clk) begin
        if (!ena) begin
            bit_cnt <= 3'd7;
        end
        else begin
            bit_cnt <= bit_cnt - 1'b1;
        end
    end
 
 //store data input config
    always @(posedge slv_clk) begin
        sto_en <= ! bit_cnt;
    end
    always @(negedge slv_clk) begin
        if (sto_en) begin
            mem[mem_addr] <= sfr_in         ; 
            mem_addr      <= mem_addr + 1'b1;
        end
    end
    
initial begin
  for (i=0; i<8; i=i+1) begin   //4 btyes begin with 0 and the other begin with 1 
    mem[i]  = i+1;
    //mem[i+4]= i+129;
  end
end
endmodule