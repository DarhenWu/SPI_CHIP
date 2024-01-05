//////////////////////////////////////////////////////////////
//// Data distributor                                     ////
////             -using to select a slave                 ////
//// Authors: chy,drh,gez                                 ////
//// Description: (NONE)                                  ////
////                                                      ////
////                                                      ////   
////                                                      ////
//////////////////////////////////////////////////////////////
module BitDistributor8 (
    input            inputs, 
    input      [2:0] select,   
    output reg [7:0] outputs    
);

//------------------Main Code-------------------//
always @(*) begin
    outputs = 8'b1111_1111;
    case (select)
        3'b000 : outputs[0] = inputs;
        3'b001 : outputs[1] = inputs;
        3'b010 : outputs[2] = inputs;
        3'b011 : outputs[3] = inputs;
        3'b100 : outputs[4] = inputs;
        3'b101 : outputs[5] = inputs;
        3'b110 : outputs[6] = inputs;
        3'b111 : outputs[7] = inputs;
        default: outputs = 8'b1111_1111; 
    endcase
end

endmodule
