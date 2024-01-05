/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1V1_7TV50 ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1V2_7TV50 ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1V1_7TV50 ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1V2_7TV50 ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2V1_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2V2_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2V4_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3V1_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3V2_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3V4_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND4V1_7TV50 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

    
  and (Z, A1, A2, A3, A4); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND4V2_7TV50 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

    
  and (Z, A1, A2, A3, A4); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO112V1_7TV50 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
    and I0(OUT0, A1, A2); 
    or I1(Z, B, C, OUT0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO112V2_7TV50 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
    and I0(OUT0, A1, A2); 
    or I1(Z, B, C, OUT0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO12V1_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO12V2_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21BV1_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21BV2_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO221V1_7TV50 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

  
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, C, OUT0, OUT1);  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO221V2_7TV50 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

  
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, C, OUT0, OUT1);  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO222V1_7TV50 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   and I2(OUT2, C1, C2); 
   or  I3(Z, OUT0, OUT1, OUT2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO222V2_7TV50 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   and I2(OUT2, C1, C2); 
   or  I3(Z, OUT0, OUT1, OUT2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO22V1_7TV50 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, OUT0, OUT1); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO22V2_7TV50 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, OUT0, OUT1); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO31V1_7TV50 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

    
   and I0(OUT0, A1, A2, A3); 
   or  I1(Z, B, OUT0); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO31V2_7TV50 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

    
   and I0(OUT0, A1, A2, A3); 
   or  I1(Z, B, OUT0); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO32V1_7TV50 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO32V2_7TV50 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO33V1_7TV50 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2, B3); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO33V2_7TV50 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2, B3); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211V1_7TV50 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211V2_7TV50 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BV1_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BV2_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21V1_7TV50 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21V2_7TV50 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221V1_7TV50 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221V2_7TV50 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222V1_7TV50 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222V2_7TV50 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBV1_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBV2_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22V1_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22V2_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22XBV1_7TV50 ( ZN, A1, A2, B1, B2N); 
input A1, A2, B1, B2N;
output ZN;

    not SMC_I0(B2, B2N);
    and SMC_I1(OUT1, B1, B2); 
    and SMC_I2(OUT2, A1, A2);
    nor	SMC_I3(ZN, OUT1, OUT2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22XBV2_7TV50 ( ZN, A1, A2, B1, B2N); 
input A1, A2, B1, B2N;
output ZN;

    not SMC_I0(B2, B2N);
    and SMC_I1(OUT1, B1, B2); 
    and SMC_I2(OUT2, A1, A2);
    nor	SMC_I3(ZN, OUT1, OUT2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB11V1_7TV50 ( ZN, A1, A2N, B, C); 
input A1, A2N, B, C;
output ZN;

  not I2(A2,  A2N);
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 // specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 

 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB11V2_7TV50 ( ZN, A1, A2N, B, C); 
input A1, A2N, B, C;
output ZN;

  not I2(A2,  A2N);
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 // specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 

 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1V1_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1V2_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31V1_7TV50 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31V2_7TV50 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32V1_7TV50 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32V2_7TV50 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV16_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV1_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV2_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV3_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV4_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV6_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFV8_7TV50 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUSHOLD_7TV50 ( Z ); 
inout Z;
wire io_wire;

  buf(weak0,weak1) I0(Z, io_wire);
  buf              I1(io_wire, Z);

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2V1_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2V2_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2V3_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2V4_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFV1_7TV50 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFV2_7TV50 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFV3_7TV50 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFV4_7TV50 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFV6_7TV50 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFV8_7TV50 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV16_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV1_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV2_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV3_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV4_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV6_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINV8_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQV1_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQV2_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQV3_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQV1_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQV2_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQV3_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQV1_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQV2_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQV3_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQV1_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQV2_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQV3_7TV50 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKMUX2V1_7TV50 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 U0 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKMUX2V2_7TV50 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 U0 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2V1_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2V2_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2V3_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2V1_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2V2_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2V3_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2V1_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2V2_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2V3_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2V1_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2V2_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2V4_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL1V1_7TV50 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL1V2_7TV50 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL2V1_7TV50 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL2V2_7TV50 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL4V1_7TV50 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL4V2_7TV50 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQV1_7TV50 ( Q, CK, D); 
input CK, D;
output Q;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQV2_7TV50 ( Q, CK, D); 
input CK, D;
output Q;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQV1_7TV50 (D, RDN, CK, Q); 
  input D, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQV2_7TV50 (D, RDN, CK, Q); 
  input D, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQV1_7TV50 (D, RD, CK, Q); 
  input D, RD, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQV2_7TV50 (D, RD, CK, Q); 
  input D, RD, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSRNQV1_7TV50 (D, RDN, SDN, CK, Q); 
  input D, RDN, SDN, CK;

  output Q;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff_rdn_pre_sdn I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify

// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);
		

  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSRNQV2_7TV50 (D, RDN, SDN, CK, Q); 
  input D, RDN, SDN, CK;

  output Q;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff_rdn_pre_sdn I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify

// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);
		

  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module F_DIODE2_7TV50 ( A); 
input A;


   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module F_DIODEN2_7TV50 ( A); 
input A;


   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV0P7_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV16_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV1_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV2_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV3_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV4_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV6_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INV8_7TV50 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHQV1_7TV50 ( Q, D, E); 
input D, E;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  not I3(clk,E); 
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf      I1 (Q, n0); 

 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHQV2_7TV50 ( Q, D, E); 
input D, E;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  not I3(clk,E); 
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf      I1 (Q, n0); 

 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRNQV1_7TV50 (D, RDN, E, Q); 
  input D, RDN, E;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,E);
buf      XX0 (xRN,RDN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);


assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRNQV2_7TV50 (D, RDN, E, Q); 
  input D, RDN, E;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,E);
buf      XX0 (xRN,RDN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);


assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHSQV1_7TV50 (D, SD, E, Q); 
  input D, SD, E;

  output Q;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,E);
  not      XX0 (xSDN,SD);
  udp_tlat I0 (n0,D, clk, xRN, xSDN, NOTIFIER);
  buf      I1 (Q, n0);
 
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_SD,SD);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            negedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            posedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), negedge SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge SD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule

`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHSQV2_7TV50 (D, SD, E, Q); 
  input D, SD, E;

  output Q;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,E);
  not      XX0 (xSDN,SD);
  udp_tlat I0 (n0,D, clk, xRN, xSDN, NOTIFIER);
  buf      I1 (Q, n0);
 
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_SD,SD);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            negedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            posedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), negedge SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge SD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule

`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23V1_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23V2_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222V1_7TV50 ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222V2_7TV50 ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222V1_7TV50 ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222V2_7TV50 ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2NV1_7TV50 ( ZN, I0, I1, S); 
input I0, I1, S;
output ZN;

 
  udp_mux2 I00(z, I0, I1, S); 
  not      I01(ZN, z);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2NV2_7TV50 ( ZN, I0, I1, S); 
input I0, I1, S;
output ZN;

 
  udp_mux2 I00(z, I0, I1, S); 
  not      I01(ZN, z);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2V1_7TV50 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 U0 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2V2_7TV50 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 U0 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3V1_7TV50 ( Z, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output Z;

    
  
  udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3V2_7TV50 ( Z, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output Z;

    
  
  udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2V1_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2V2_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2V3_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2V4_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2XBV1_7TV50 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2XBV2_7TV50 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2XBV4_7TV50 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBV1_7TV50 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBV2_7TV50 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BV1_7TV50 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BV2_7TV50 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3V1_7TV50 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3V2_7TV50 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BV1_7TV50 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BV2_7TV50 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4V1_7TV50 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4V2_7TV50 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4XXBBV1_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nand (ZN, A1x, A2x, B1, B2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4XXBBV2_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nand (ZN, A1x, A2x, B1, B2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2V1_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2V2_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2V3_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2V4_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2XBV1_7TV50 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2XBV2_7TV50 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BV1_7TV50 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BV2_7TV50 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3V1_7TV50 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3V2_7TV50 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4V1_7TV50 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4V2_7TV50 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4XXBBV1_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nor (ZN, A1x, A2x, B1, B2); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4XXBBV2_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nor (ZN, A1x, A2x, B1, B2); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA112V1_7TV50 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
   or   I0(outA, A1, A2); 
   and  I1(Z, B, C, outA); 
  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA112V2_7TV50 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
   or   I0(outA, A1, A2); 
   and  I1(Z, B, C, outA); 
  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA12V1_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA12V2_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21BV1_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  not I2(B_inv, B);
  and I1(Z, outA, B_inv); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21BV2_7TV50 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  not I2(B_inv, B);
  and I1(Z, outA, B_inv); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA221V1_7TV50 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

   
   or  I0(outA, A1, A2);    
   or  I1(outB, B1, B2);    
   and I2(Z, outA, outB, C); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA221V2_7TV50 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

   
   or  I0(outA, A1, A2);    
   or  I1(outB, B1, B2);    
   and I2(Z, outA, outB, C); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA222V1_7TV50 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   or  I2(outC, C1, C2); 
   and I3(Z, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA222V2_7TV50 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   or  I2(outC, C1, C2); 
   and I3(Z, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA22V1_7TV50 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

 
  or  I0(outA, A1, A2); 
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA22V2_7TV50 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

 
  or  I0(outA, A1, A2); 
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA31V1_7TV50 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    and I1(Z, outA, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA31V2_7TV50 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    and I1(Z, outA, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA32V1_7TV50 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  or  I0(outA, A1, A2, A3);  
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA32V2_7TV50 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  or  I0(outA, A1, A2, A3);  
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA33V1_7TV50 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    or  I1(outB, B1, B2, B3); 
    and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA33V2_7TV50 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    or  I1(outB, B1, B2, B3); 
    and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211V1_7TV50 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211V2_7TV50 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BV1_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BV2_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21V1_7TV50 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21V2_7TV50 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221V1_7TV50 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221V2_7TV50 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222V1_7TV50 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222V2_7TV50 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBV1_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBV2_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22V1_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22V2_7TV50 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22XBV1_7TV50 ( ZN, A1, A2, B1, B2N); 
input A1, A2, B1, B2N;
output ZN;

 
    not  SMC_I0(OUT0, B2N);
    or   SMC_I1(OUT1, OUT0, B1); 
    or   SMC_I2(OUT2, A1, A2);
    nand SMC_I3(ZN, OUT1, OUT2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22XBV2_7TV50 ( ZN, A1, A2, B1, B2N); 
input A1, A2, B1, B2N;
output ZN;

 
    not  SMC_I0(OUT0, B2N);
    or   SMC_I1(OUT1, OUT0, B1); 
    or   SMC_I2(OUT2, A1, A2);
    nand SMC_I3(ZN, OUT1, OUT2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI2XB11V1_7TV50 ( ZN, A1, A2N, B, C); 
input A1, A2N, B, C;
output ZN;

  not  I0(a2nn, A2N);
  or   I2(outA, A1, a2nn);
  nand I4(ZN, outA, B, C);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

// specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 




	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI2XB11V2_7TV50 ( ZN, A1, A2N, B, C); 
input A1, A2N, B, C;
output ZN;

  not  I0(a2nn, A2N);
  or   I2(outA, A1, a2nn);
  nand I4(ZN, outA, B, C);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

// specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 




	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI2XB1V1_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

  not  I2(B2_inv, B2);
  or   I0(outB, B1, B2_inv); 
  nand I1(ZN, A, outB);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI2XB1V2_7TV50 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

  not  I2(B2_inv, B2);
  or   I0(outB, B1, B2_inv); 
  nand I1(ZN, A, outB);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31V1_7TV50 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31V2_7TV50 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32V1_7TV50 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32V2_7TV50 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2V1_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2V2_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2V4_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3V1_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3V2_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR4V1_7TV50 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

 
    buf I0(OUT0, A4); 
    buf I1(OUT1, A2); 
    buf I2(OUT2, A3); 
    buf I3(OUT3, A1); 
    or  I4(Z, OUT0, OUT1, OUT2, OUT3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR4V2_7TV50 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

 
    buf I0(OUT0, A4); 
    buf I1(OUT1, A2); 
    buf I2(OUT2, A3); 
    buf I3(OUT3, A1); 
    or  I4(Z, OUT0, OUT1, OUT2, OUT3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module PULL0_7TV50 ( Z); 
output Z;

	assign Z = 1'b0; 

   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module PULL1_7TV50 ( Z); 
output Z;

	assign Z = 1'b1; 

   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQNV1_7TV50 ( QN, CK, D, SE, SI); 
input CK, D, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 

  not     I3 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQNV2_7TV50 ( QN, CK, D, SE, SI); 
input CK, D, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 

  not     I3 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQV1_7TV50 ( Q, CK, D, SE, SI); 
input CK, D, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 
  buf     I2 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQV2_7TV50 ( Q, CK, D, SE, SI); 
input CK, D, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 
  buf     I2 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDRNQV1_7TV50 (D, RDN, SE, SI, CK, Q); 
  input D, RDN, SE, SI, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDRNQV2_7TV50 (D, RDN, SE, SI, CK, Q); 
  input D, RDN, SE, SI, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDRQV1_7TV50 (D, RD, SE, SI, CK, Q); 
  input D, RD, SE, SI, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_NOT_RD_AND_NOT_SE,ENABLE_NOT_RD, SE_bar);

    not SMC_I6(ENABLE_NOT_RD,RD);

    and SMC_I7(ENABLE_NOT_RD_AND_SE,ENABLE_NOT_RD,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), negedge RD &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDRQV2_7TV50 (D, RD, SE, SI, CK, Q); 
  input D, RD, SE, SI, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_NOT_RD_AND_NOT_SE,ENABLE_NOT_RD, SE_bar);

    not SMC_I6(ENABLE_NOT_RD,RD);

    and SMC_I7(ENABLE_NOT_RD_AND_SE,ENABLE_NOT_RD,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), negedge RD &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDSRNQV1_7TV50 (D, RDN, SDN, SE, SI, CK, Q); 
  input D, RDN, SDN, SE, SI, CK;
  output Q;

  reg NOTIFIER;

wire ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI;
wire ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI;

//mini syn

  buf   XX0 (xRN,RDN);
  buf   XX1 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff_rdn_pre_sdn I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);


  assign ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI=(D&SDN&!SE|SDN&SE&SI)? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI=(!D&RDN&!SE|RDN&SE&!SI)? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    not SMC_I7(SE_bar,SE);

    and SMC_I8(ENABLE_RDN_AND_SDN_AND_NOT_SE,RDN,SDN, SE_bar);

    buf SMC_I9(ENABLE_SDN,SDN);

    buf SMC_I10(ENABLE_RDN,RDN);

    and SMC_I11(ENABLE_RDN_AND_SDN,RDN,SDN);

    and SMC_I12(ENABLE_RDN_AND_SDN_AND_SE,RDN,SDN,SE);


  specify


	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);



  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDSRNQV2_7TV50 (D, RDN, SDN, SE, SI, CK, Q); 
  input D, RDN, SDN, SE, SI, CK;
  output Q;

  reg NOTIFIER;

wire ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI;
wire ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI;

//mini syn

  buf   XX0 (xRN,RDN);
  buf   XX1 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff_rdn_pre_sdn I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);


  assign ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI=(D&SDN&!SE|SDN&SE&SI)? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI=(!D&RDN&!SE|RDN&SE&!SI)? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    not SMC_I7(SE_bar,SE);

    and SMC_I8(ENABLE_RDN_AND_SDN_AND_NOT_SE,RDN,SDN, SE_bar);

    buf SMC_I9(ENABLE_SDN,SDN);

    buf SMC_I10(ENABLE_RDN,RDN);

    and SMC_I11(ENABLE_RDN_AND_SDN,RDN,SDN);

    and SMC_I12(ENABLE_RDN_AND_SDN_AND_SE,RDN,SDN,SE);


  specify


	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);



  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module TBUFV1_7TV50 ( Z, I, OE); 
input I, OE;
output Z;

 
  bufif1 I0(Z, I, OE); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module TBUFV2_7TV50 ( Z, I, OE); 
input I, OE;
output Z;

 
  bufif1 I0(Z, I, OE); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module TBUFV3_7TV50 ( Z, I, OE); 
input I, OE;
output Z;

 
  bufif1 I0(Z, I, OE); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module TBUFV4_7TV50 ( Z, I, OE); 
input I, OE;
output Z;

 
  bufif1 I0(Z, I, OE); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XNOR2V1_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    xnor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XNOR2V2_7TV50 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    xnor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XNOR3V1_7TV50 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   xnor I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XNOR3V2_7TV50 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   xnor I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XOR2V1_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XOR2V2_7TV50 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XOR3V1_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
   xor I0(Z, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module XOR3V2_7TV50 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
   xor I0(Z, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
// $Id: udp_dff.v
// verilog UDP for d flip-flops 
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
primitive udp_dff (out, in, clk, clr_, set_, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  r   1   ?   ?   : ?  :  1  ; // clock in 1
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_dff
// $Id: udp_dff_rdn_pre_sdn.v
// verilog UDP for d flip-flops 
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
primitive udp_dff_rdn_pre_sdn (out, in, clk, clr_, set_, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  r   1   ?   ?   : ?  :  1  ; // clock in 1
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   1   0   ?   : ?  :  1  ; // set output
   ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   ?   ?   : ?  :  0  ; // reset output
   ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_dff_rdn_pre_sdn



// $Id: udp_edff.v
// verilog UDP for d flip-flops with enable
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_edff (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      ?     0   ?    : ?  :  -  ; // no changes, not enabled
   *   ?    1      ?     0   ?    : ?  :  -  ; // no changes, not enabled
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   x    1      1     0   ?    : ?  :  -  ; // no changes when en is disabled
   ?   ?    ?      0     ?   ?    : ?  :  1  ; // set output
   ?   b    1      *     ?   ?    : 1  :  1  ; // cover all transistions on set_
   ?   ?    1      *     0   ?    : 1  :  1  ; // cover all transistions on set_
   ?   ?    0      1     ?   ?    : ?  :  0  ; // reset output
   ?   b    *      1     ?   ?    : 0  :  0  ; // cover all transistions on clr_
   ?   ?    *      1     0   ?    : 0  :  0  ; // cover all transistions on clr_
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edff

// $Id: udp_edfft.v
// verilog UDP for d flip-flops with enable
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_edfft (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   ?   r    0      1     ?   ?    : ?  :  0  ; // clock in 0
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   ?   r    ?      0     ?   ?    : ?  :  1  ; // clock in 1
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      1     0   ?    : ?  :  -  ; // no changes, not enabled
   ?   *    ?      1     0   ?    : 0  :  0  ; // no changes, not enabled
   ?   *    1      ?     0   ?    : 1  :  1  ; // no changes, not enabled
   ?  (x0)  ?      ?     ?   ?    : ?  :  -  ; // no changes
   ?  (x1)  ?      0     ?   ?    : 1  :  1  ; // no changes
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   ?   x    1      ?     0   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   x    ?      1     0   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   b    *      ?     ?   ?    : ?  :  -  ; // no changes when clr_ switches
   ?   x    0      1     ?   ?    : 0  :  0  ; // no changes when clr_ switches
   ?   b    ?      *     ?   ?    : ?  :  -  ; // no changes when set_ switches
   ?   x    ?      0     ?   ?    : 1  :  1  ; // no changes when set_ switches
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edfft

// $Id: udp_edffts.v
//
// verilog UDP for d flip-flops with enable
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_edffts (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   ?   r    0      ?     ?   ?    : ?  :  0  ; // clock in 0
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   ?   r    1      0     ?   ?    : ?  :  1  ; // clock in 1
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      1     0   ?    : ?  :  -  ; // no changes, not enabled
   ?   *    ?      1     0   ?    : 0  :  0  ; // no changes, not enabled
   ?   *    1      ?     0   ?    : 1  :  1  ; // no changes, not enabled
   ?  (x0)  ?      ?     ?   ?    : ?  :  -  ; // no changes
   ?  (x1)  ?      0     ?   ?    : 1  :  1  ; // no changes
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   ?   x    1      ?     0   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   x    ?      1     0   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   b    *      ?     ?   ?    : ?  :  -  ; // no changes when clr_ switches
   ?   x    0      1     ?   ?    : 0  :  0  ; // no changes when clr_ switches
   ?   b    ?      *     ?   ?    : ?  :  -  ; // no changes when set_ switches
   ?   x    ?      0     ?   ?    : 1  :  1  ; // no changes when set_ switches
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edffts

// $Id: udp_jkff.v
//
// verilog UDP for jk flip-flps
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_jkff (out, j, k, clk, clr_, set_, NOTIFIER);
   output out;  
   input  j, k, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// j  k  clk  clr_   set_  NOT  : Qt : Qt+1
//       
   0  0  r   1   1   ?   : ?  :  -  ; // output remains same
   0  1  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  0  r   1   ?   ?   : ?  :  1  ; // clock in 1
//   1  1  r   ?   1   ?   : 1  :  0  ; // clock in 0
   ?  1  r   ?   1   ?   : 1  :  0  ; // clock in 0
//   1  1  r   1   ?   ?   : 0  :  1  ; // clock in 1
   1  ?  r   1   ?   ?   : 0  :  1  ; // clock in 1
   ?  0  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  ?  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  ?  b   ?   ?   ?   : ?  :  -  ; // no changes when j switches
   *  0  x   1   ?   ?   : 1  :  1  ; // no changes when j switches
   ?  *  b   ?   ?   ?   : ?  :  -  ; // no changes when k switches
   0  *  x   ?   1   ?   : 0  :  0  ; // no changes when k switches
   ?  ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  0  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  ?  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER change

   endtable
endprimitive // udp_jkff

// $Id: udp_sedff.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedff (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    ?    0     ?   ?   ?   ?  : ?  :  0;     
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    1     1   1   ?   ?  : ?  :  1;
      ?    b    1     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    1     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    1     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      *    ?    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      ?    ?    ?     *   0   0   ?  : 0  :  0; // no changes when in switches
      ?    b    1     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?    ?    *     ?   0   0   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   ?   *   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   *   ?   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     *   ?   ?   ?  : 0  :  0; // no changes when en switches
      *    b    ?     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?  (10)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      ?    *    1     1   1   ?   ?  : 1  :  1;
      ?    x    1     1   1   ?   ?  : 1  :  1;
      ?    *    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    *    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      0    *    ?     0   ?   ?   ?  : 0  :  0 ; 
      0    x    ?     0   ?   ?   ?  : 0  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      1    *    1     1   ?   ?   ?  : 1  :  1 ; 
      1    x    1     1   ?   ?   ?  : 1  :  1 ; 
      ?  (x0)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    *    ?     ?   0   0   ?  : ?  :  -;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    x    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedff */

// $Id: udp_sedfft.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedfft (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    ?     1   1   ?   ?  : ?  :  1;
      ?    b    ?     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    ?     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    ?     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      ?    b    ?     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : ?  :  -; // no changes when clr switches
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      ?    r    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      ?    r    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     1   1   ?   ?  : 1  :  1;
      1    *    1     1   ?   ?   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    *    0     0   ?   ?   ?  : 0  :  0;
      0    *    ?     0   ?   ?   ?  : 0  :  0;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   1   ?   ?  : 1  :  1;
      1    x    1     1   ?   ?   ?  : 1  :  1;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    x    0     0   ?   ?   ?  : 0  :  0;
      0    x    ?     0   ?   ?   ?  : 0  :  0;
      ?    r    0     0   ?   ?   ?  : ?  :  0 ; 
      ?   (?0)  ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    r    0     ?   0   ?   ?  : ?  :  0;
      ?    x    0     ?   0   ?   ?  : 0  :  0;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedfft */

/*
// $Id: udp_sedffts.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedffts (out, in, clk, set_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, set_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  set_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    ?     1   1   ?   ?  : ?  :  1;
      ?    b    ?     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    ?     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    ?     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      ?    b    ?     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : ?  :  -; // no changes when clr switches
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      ?    r    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      ?    r    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     1   1   ?   ?  : 1  :  1;
      1    *    1     1   ?   ?   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    *    0     0   ?   ?   ?  : 0  :  1;
      0    *    ?     0   ?   ?   ?  : 0  :  0;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   1   ?   ?  : 1  :  1;
      1    x    1     1   ?   ?   ?  : 1  :  1;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    x    0     0   ?   ?   ?  : 0  :  1;
      0    x    ?     0   ?   ?   ?  : 0  :  0;
      ?    r    0     0   ?   ?   ?  : ?  :  1 ; 
      ?   (?0)  ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    r    0     ?   0   ?   ?  : ?  :  1;
      ?    x    0     ?   0   ?   ?  : 0  :  0;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  // udp_sedffts 
*/

// $Id: udp_sedffsr.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedffsr (out, in, clk, clr_, set_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  set_ si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    ?    0     1   ?   ?   ?   ?  : ?  :  0; 
      ?    ?    ?     0   ?   ?   ?   ?  : ?  :  1; 
      ?    r    ?     1   0   1   ?   ?  : ?  :  0;
      ?    r    1     ?   1   1   ?   ?  : ?  :  1;      
      ?    b    ?     1   ?   *   ?   ?  : 0  :  0; // no changes when se switches
      ?    b    1     ?   ?   *   ?   ?  : 1  :  1; // no changes when se switches
      ?    b    ?     1   *   ?   ?   ?  : 0  :  0; // no changes when si switches
      ?    b    1     ?   *   ?   ?   ?  : 1  :  1; // no changes when si switches
      *    b    ?     1   ?   ?   ?   ?  : 0  :  0; // no changes when in switches
      *    b    1     ?   ?   ?   ?   ?  : 1  :  1; // no changes when in switches
      ?    b    ?     1   ?   ?   *   ?  : 0  :  0; // no changes when en switches
      ?    b    1     ?   ?   ?   *   ?  : 1  :  1; // no changes when en switches
      ?    ?    *     1   ?   0   0   ?  : 0  :  0; //new
      ?    x    1     1   ?   0   0   ?  : 0  :  0;
      ?    x    1     1   ?   0   0   ?  : 1  :  1;
      ?    ?    *     1   0   ?   0   ?  : 0  :  0; //new
      0    ?    *     1   ?   0   1   ?  : 0  :  0; //new
      ?    b    *     1   ?   ?   ?   ?  : 0  :  0; //new
      ?    ?    1     *   ?   0   0   ?  : 1  :  1; //new
      ?    ?    1     *   1   ?   0   ?  : 1  :  1; //new
      1    ?    1     *   ?   0   1   ?  : 1  :  1; //new
      ?    b    1     *   ?   ?   ?   ?  : 1  :  1; //new
      ?    *    1     ?   1   1   ?   ?  : 1  :  1;
      ?    x    1     ?   1   1   ?   ?  : 1  :  1;
      ?    x    1     ?   ?   0   0   ?  : 1  :  1;
      ?    x    1     ?   1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   1   ?   0   ?  : 1  :  1;
      ?    *    ?     1   0   1   ?   ?  : 0  :  0;
      ?    x    ?     1   0   1   ?   ?  : 0  :  0;
      ?    x    ?     1   ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   0   ?   0   ?  : 0  :  0;
      ?    *    ?     1   0   ?   0   ?  : 0  :  0;
      0    r    ?     1   0   ?   1   ?  : ?  :  0 ; 
      0    *    ?     1   0   ?   ?   ?  : 0  :  0 ;
      0    x    ?     1   0   ?   ?   ?  : 0  :  0 ; 
      1    r    1     ?   1   ?   1   ?  : ?  :  1 ; 
      1    *    1     ?   1   ?   ?   ?  : 1  :  1 ; 
      1    x    1     ?   1   ?   ?   ?  : 1  :  1 ; 
      ?  (10)   ?     ?   ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      ?  (x0)   ?     ?   ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   ?   0   1   ?  : ?  :  1;
      0    r    ?     1   ?   0   1   ?  : ?  :  0 ; 
      ?    *    ?     1   ?   0   0   ?  : 0  :  0;
      ?    *    1     ?   ?   0   0   ?  : 1  :  1;
      1    x    1     ?   ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     1   ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     1   ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive // udp_sedffsr

// $Id: udp_mux.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_mux (out, in, s_in, s_sel);
   output out;  
   input  in, s_in, s_sel;

   table

// in  s_in  s_sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux

// $Id: udp_mux2.v
//
// verilog UDP for 2-input muxes
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_mux2 (out, in0, in1, sel);
   output out;  
   input  in0, in1, sel;

   table

// in0 in1  sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux2

// $Id: udp_mux4.v
//
// verilog UDP for 4-input muxes
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_mux4 (out, in0, in1, in2, in3, sel_0, sel_1);
   output out;  
   input  in0, in1, in2, in3, sel_0, sel_1;

   table

// in0 in1 in2 in3 sel_0 sel_1 :  out
//
   0  ?  ?  ?  0  0  :  0;
   1  ?  ?  ?  0  0  :  1;
   ?  0  ?  ?  1  0  :  0;
   ?  1  ?  ?  1  0  :  1;
   ?  ?  0  ?  0  1  :  0;
   ?  ?  1  ?  0  1  :  1;
   ?  ?  ?  0  1  1  :  0;
   ?  ?  ?  1  1  1  :  1;
   0  0  ?  ?  x  0  :  0;
   1  1  ?  ?  x  0  :  1;
   ?  ?  0  0  x  1  :  0;
   ?  ?  1  1  x  1  :  1;
   0  ?  0  ?  0  x  :  0;
   1  ?  1  ?  0  x  :  1;
   ?  0  ?  0  1  x  :  0;
   ?  1  ?  1  1  x  :  1;
   1  1  1  1  x  x  :  1;
   0  0  0  0  x  x  :  0;

   endtable
endprimitive // udp_mux4

// $Id: udp_rslatn_out.v
//
// verilog UDP for the true output of rslatn cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslatn_out (out, r_, s_, NOTIFIER);
   output out;  
   input  r_, s_, NOTIFIER;
   reg    out;

   table

// r_  s_  NOT : Qt : Qt+1
// 
  (?1) 1   ?   : ?  :  -  ; // no change
   1  (?1) ?   : ?  :  -  ; // no change
  (?0) 1   ?   : ?  :  0  ; // reset
   0  (?1) ?   : ?  :  0  ; // reset
   ?   0   ?   : ?  :  1  ; // unused state
  (?1) x   ?   : 1  :  1  ; // reduced pessimism
   1  (?x) ?   : 1  :  1  ; // reduced pessimism
  (?x) 1   ?   : 0  :  0  ; // reduced pessimism
   x  (?1) ?   : 0  :  0  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslatn_out

// $Id: udp_rslatn_out_.v
//
// verilog UDP for the complementary output of rslatn cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslatn_out_ (out_, r_, s_, NOTIFIER);
   output out_;  
   input  r_, s_, NOTIFIER;
   reg    out_;

   table

// r_  s_  NOT : Qt : Qt+1
// 
  (?1) 1   ?   : ?  :  -  ; // no change
   1  (?1) ?   : ?  :  -  ; // no change
   0   ?   ?   : ?  :  1  ; // reset
  (?1) 0   ?   : ?  :  0  ; // set
   1  (?0) ?   : ?  :  0  ; // set
  (?1) x   ?   : 0  :  0  ; // reduced pessimism
   1  (?x) ?   : 0  :  0  ; // reduced pessimism
  (?x) 1   ?   : 1  :  1  ; // reduced pessimism
   x  (?1) ?   : 1  :  1  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslatn_out_

// $Id: udp_rslat_out.v
//
// verilog UDP for true output of rslat cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslat_out (out, r, s, NOTIFIER);
   output out;  
   input  r, s, NOTIFIER;
   reg    out;

   table

// r   s   NOT : Qt : Qt+1
// 
  (?0) 0   ?   : ?  :  -  ; // no change
   0  (?0) ?   : ?  :  -  ; // no change
   1   ?   ?   : ?  :  0  ; // reset
  (?0) 1   ?   : ?  :  1  ; // set
   0  (?1) ?   : ?  :  1  ; // set
  (?0) x   ?   : 1  :  1  ; // reduced pessimism
   0  (?x) ?   : 1  :  1  ; // reduced pessimism
  (?x) 0   ?   : 0  :  0  ; // reduced pessimism
   x  (?0) ?   : 0  :  0  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslat_out

// $Id: udp_rslat_out_.v
//
// verilog UDP for complementary output on rslat cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslat_out_ (out_, r, s, NOTIFIER);
   output out_;  
   input  r, s, NOTIFIER;
   reg    out_;

   table

// r   s   NOT : Qt : Qt+1
// 
  (?0) 0   ?   : ?  :  -  ; // no change
   0  (?0) ?   : ?  :  -  ; // no change
  (?1) 0   ?   : ?  :  1  ; // reset
   1  (?0) ?   : ?  :  1  ; // reset
   ?   1   ?   : ?  :  0  ; // set
  (?0) x   ?   : 0  :  0  ; // reduced pessimism
   0  (?x) ?   : 0  :  0  ; // reduced pessimism
  (?x) 0   ?   : 1  :  1  ; // reduced pessimism
   x  (?0) ?   : 1  :  1  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslat_out_

// $Id: udp_tlat.v
//
// verilog UDP for d latches
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_tlat (out, in, hold, clr_, set_, NOTIFIER);
   output out;  
   input  in, hold, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  hold  clr_   set_  NOT  : Qt : Qt+1
//
   1  0   1   ?   ?   : ?  :  1  ; // 
   0  0   ?   1   ?   : ?  :  0  ; // 
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   *  1   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  1   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  ?   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  1   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  ?   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_tlat

//$Id udp_xgen.v
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_xgen (out, in, en, e);
   output out;  
   input  in, en, e;

   table

// in  en    e   : out;
//	     	  
   0   0     0    : x  ; // 
   0   0     1    : 0  ; // 
   0   1     0    : 0  ; // 
   0   1     1    : x  ; // 
   1   0     0    : x  ; // 
   1   0     1    : 1  ; // 
   1   1     0    : 1  ; // 
   1   1     1    : x  ; // 

   endtable
endprimitive // udp_xgen

//$Id udp_tlatrf.v
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_tlatrf (out, in, ww, wwn, NOTIFIER);
   output out;  
   input  in, ww, wwn, NOTIFIER;
   reg    out;

   table

// in  ww    wwn  NOT  : Qt : Qt+1
//	     
   1   ?     0    ?    : ?  :  1  ; // 
   1   1     ?    ?    : ?  :  1  ; // 
   0   ?     0    ?    : ?  :  0  ; // 
   0   1     ?    ?    : ?  :  0  ; // 
   1   *     ?    ?    : 1  :  1  ; // reduce pessimism
   1   ?     *    ?    : 1  :  1  ; // reduce pessimism
   0   *     ?    ?    : 0  :  0  ; // reduce pessimism
   0   ?     *    ?    : 0  :  0  ; // reduce pessimism
   *   0     1    ?    : ?  :  -  ; // no changes when in switches
   ?   ?     ?    *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_tlatrf

//$Id udp_tlatrf2.v
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_tlatrf2 (out, in1, w1w, in2, w2w, NOTIFIER);
   output out;  
   input  in1, w1w, NOTIFIER;
   input  in2, w2w;
   reg    out;

   table

// in1 ww1 in2 ww2  NOT  : Qt : Qt+1
//	     
   ?   ?    ?   ?    *    : ?  :  x  ; //
   1   1    ?   0    ?    : ?  :  1  ; //
   1   *    ?   0    ?    : 1  :  1  ; //
   0   1    ?   0    ?    : ?  :  0  ; //
   0   *    ?   0    ?    : 0  :  0  ; //
   ?   0    1   1    ?    : ?  :  1  ; //
   ?   0    1   *    ?    : 1  :  1  ; //
   ?   0    0   1    ?    : ?  :  0  ; //
   ?   0    0   *    ?    : 0  :  0  ; //
   *   0    ?   0    ?    : ?  :  -  ; //
   ?   0    *   0    ?    : ?  :  -  ; //
   1   *    1   1    ?    : ?  :  1  ; //
   1   1    1   *    ?    : ?  :  1  ; //
   0   *    0   1    ?    : ?  :  0  ; //
   0   1    0   *    ?    : ?  :  0  ; //


   endtable
endprimitive // udp_tlatrf2

// $Id udp_outrf.v
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_outrf (out, in, rwn, rw);
   output out;  
   input  in, rwn, rw;

   table

// in  rwn   rw   : out;
//	     	  
   0   0     ?    : 1  ; // 
   1   ?     1    : 1  ; // 
   ?   1     0    : 0  ; // 
   1   ?     0    : 0  ; // 
   0   1     ?    : 0  ; // 

   endtable
endprimitive // udp_outrf

//$Id udp_bmx.v
//
// verilog UDP for 4-input muxes
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_bmx (out, x2, a, s, m1, m0);
   output out;  
   input   x2, a, s, m1, m0;

   table

// x2 a  s m1 m0 :  out
//
   0  1  1  ?  ? :  0;
   0  1  0  0  ? :  1;
   0  1  0  1  ? :  0;
   0  0  1  0  ? :  0;
   0  0  1  1  ? :  1;
   0  0  0  ?  ? :  1;
   1  1  1  ?  ? :  0;
   1  1  0  ?  0 :  1;
   1  1  0  ?  1 :  0;
   1  0  1  ?  0 :  0;
   1  0  1  ?  1 :  1;
   1  0  0  ?  ? :  1;

   endtable
endprimitive // udp_bmx


primitive udp_dff_rs_Q(out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

    //  in   clk   clr_  set_ NOT :  Qt  :   Qt+1

        1   (01)    1     1   ?   :   ?   :   1;  // clocked data
        1   (01)    1     x   ?   :   ?   :   1;  // clocked data or be set
        1    ?      1     x   ?   :   1   :   1;  // be set or follow Qt
        0    0      1     x   ?   :   1   :   1;  // be set or follow Qt
        0    x      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        0    1      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        x    0      1     x   ?   :   1   :   1;  // be set or follow Qt
        x    x      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        x    1      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        0   (01)    1     1   ?   :   ?   :   0;  // clocked data
        0   (01)    x     1   ?   :   ?   :   0;  // clocked data or be set
        0    ?      x     1   ?   :   0   :   0;  // be clear or follow Qt
        1    0      x     1   ?   :   0   :   0;  // be clear or follow Qt
        1    x    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        1    1    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        x    0      x     1   ?   :   0   :   0;  // be clear or follow Qt
        x    x    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        x    1    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        ?   ?       0     ?   ?   :   ?   :   0;  // asynchronous clear
        ?   ?       1     0   ?   :   ?   :   1;  // asynchronous set
        ?   (?0)    1     1   ?   :   ?   :   -;  // no change
        ?   (1x)    1     1   ?   :   ?   :   x;  // ignore falling clock
        ?   (0x)    1     1   ?   :   ?   :   x;  // ignore falling clock
        *    ?      ?     ?   ?   :   ?   :   -;  // no change
        ?   ?     (?1)    1   ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?    (?1) ?   :   ?   :   -;  // set and clear
        ?   ?       ?     ?   *   :   ?   :   x;  // any NOTIFIER changed

    endtable
endprimitive

primitive udp_dff_rs_QN(out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

    //  in   clk   clr_  set_ NOT :  Qtn  :   Qtn+1

        1   (10)    1   1   ?     :   ?   :   0;  // clocked data
        1   (10)    1   x   ?     :   ?   :   0;  // clocked data or set
        1    ?      1   x   ?     :   0   :   0;  // be set or follow Qtn
        0    1      1   x   ?     :   0   :   0;  // be set or follow Qtn
        0    x      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        0    0      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        x    1      1   x   ?     :   0   :   0;  // be set or follow Qtn
        x    x      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        x    0      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        0   (10)    1   1   ?     :   ?   :   1;  // clocked data
        0   (10)    x   1   ?     :   ?   :   1;  // clocked data or set
        0    ?      x   1   ?     :   1   :   1;  // be clear or follow Qtn
        1    1      x   1   ?     :   1   :   1;  // be clear or follow Qtn
        1    x    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        1    0    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        x    1      x   1   ?     :   1   :   1;  // be clear or follow Qtn
        x    x    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        x    0    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        ?    ?      0   1   ?     :   ?   :   1;  // asynchronous clear
        ?    ?      ?   0   ?     :   ?   :   0;  // asynchronous set
        ?   (?1)    ?   ?   ?     :   ?   :   -;  // no change
        ?   (0x)    1   1   ?     :   ?   :   x;  // ignore rising clock
        ?   (1x)    1   1   ?     :   ?   :   x;  // ignore rising clock
        *    ?      ?   ?   ?     :   ?   :   -;  // no change
        ?    ?     (?1) ?   ?     :   ?   :   -;  // ignore the edges on
        ?    ?      1  (?1) ?     :   ?   :   -;  // set and clear
        ?    ?      ?   ?   *     :   ?   :   x;  // any NOTIFIER changed

    endtable
endprimitive

