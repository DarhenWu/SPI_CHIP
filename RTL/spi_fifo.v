//////////////////////////////////////////////////////////////
//// 4Byte Depth FIFO                                     ////
////        -using as spi data register                   ////
//// Authors: chy,drh,gez                                 ////
//// Description: This is a 4byte depth memory working    ////
////  as a fifo, which is used as data register of        ////
////  spi chip.                                           ////   
////                                                      ////
//////////////////////////////////////////////////////////////
module spi_fifo #(
    parameter DATAWIDTH = 8
)  (
    input                             clk       ,
    input                             rstn      ,
    input                             clr       ,
    input        [DATAWIDTH-1 : 0]    din       ,
    input                             wr_en     ,
    input                             re_en     ,
    output       [DATAWIDTH-1 : 0]    dout      ,
    output  reg                       full      ,
    output  reg                       empty
);
//
//------------------Module Body----------------------------- //
//
//------------------Reg/Wire Define--------------------------//
reg       [DATAWIDTH-1 : 0]   mem [0:3]    ;        //memory
reg       [2:0]               wr_ptr       ;        //fifo write pointer,addr needs 2bits,MSB is for setting full/empty flag
reg       [2:0]               re_ptr       ;        //fifo read  pointer
integer   i ;
//------------------Main Code--------------------------------//
//Set write pointer and read pointer
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        wr_ptr = 3'd0;
        re_ptr = 3'd0;
    end
    else begin
        if (clr) begin
            wr_ptr = 3'd0;
            re_ptr = 3'd0;
        end
        else begin
            if (wr_en || re_en) begin
                wr_ptr = wr_ptr + wr_en;
                re_ptr = re_ptr + re_en;
            end
        end
    end
end

//Write memory
always @(negedge clk or negedge rstn) begin
    if (!rstn) begin
        for(i=0; i<4; i=i+1)
            mem[i] = 8'd0;
    end
    else begin
        if (wr_en) begin 
            mem[wr_ptr[1:0]] = din;
        end
    end
end

//Read memory
assign dout = mem[re_ptr[1:0]] ;

//Set full/empty flag
always @(*) begin
  if (! rstn) begin
      full  = 1'b0;
      empty = 1'b1;
  end
  else begin
      if (clr) begin
          full  = 1'b0;
          empty = 1'b1;
      end
      else begin
          if ((wr_ptr[2] != re_ptr[2]) && wr_ptr[1:0] == re_ptr[1:0]) begin
              full  = 1'b1;
          end
          else if (wr_ptr == re_ptr) begin
              empty = 1'b1;
          end
          else begin
              full  = 1'b0;
              empty = 1'b0;
          end
      end
  end
end

endmodule
