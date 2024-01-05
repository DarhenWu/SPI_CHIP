//////////////////////////////////////////////////////////////
//// inout port                                           ////
////           - triple state control                     ////
//// Authors: chy,drh,gez                                 ////
//// Description: If 'control=1', it is a output port. If ////
////  'control=0' ,it is an input port.                   ////
////                                                      ////   
////                                                      ////
//////////////////////////////////////////////////////////////
module inout_port (
    input  wire outline ,       //data sent out
    input  wire control ,       //control to send or to receive
    output wire inline  ,       //data received
    inout  wire portline        //the port to send or receive data
);

//use two three-state gate to choose to send or to receive
assign portline =   control ? outline  : 1'bz;
assign inline   = ~ control ? portline : 1'bz;

endmodule
