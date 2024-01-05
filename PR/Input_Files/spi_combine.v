/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Dec 27 15:30:54 2023
/////////////////////////////////////////////////////////////


module spi_fifo_DATAWIDTH8_1 ( clk, rstn, clr, din, wr_en, re_en, dout, full, 
        empty );
  input [7:0] din;
  output [7:0] dout;
  input clk, rstn, clr, wr_en, re_en;
  output full, empty;
  wire   N8, N9, \re_ptr[2] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] ,
         \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] ,
         \mem[2][0] , \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] ,
         \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] , N47, N49, N50, n1,
         n10, n12, n13, n14, n17, n18, n21, n22, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n2,
         n3, n4, n5, n6, n7, n8, n9, n11, n15, n16, n19, n20, n23, n24, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90;
  wire   [2:0] wr_ptr;

  AOI22BBV1_7TV50 U3 ( .B1(n1), .B2(n82), .A1(n1), .A2(\mem[3][0] ), .ZN(n34)
         );
  AOI22BBV1_7TV50 U4 ( .B1(n1), .B2(n83), .A1(n1), .A2(\mem[3][1] ), .ZN(n35)
         );
  AOI22BBV1_7TV50 U5 ( .B1(n1), .B2(n84), .A1(n1), .A2(\mem[3][2] ), .ZN(n36)
         );
  AOI22BBV1_7TV50 U6 ( .B1(n1), .B2(n85), .A1(n1), .A2(\mem[3][3] ), .ZN(n37)
         );
  AOI22BBV1_7TV50 U7 ( .B1(n1), .B2(n86), .A1(n1), .A2(\mem[3][4] ), .ZN(n38)
         );
  AOI22BBV1_7TV50 U8 ( .B1(n1), .B2(n87), .A1(n1), .A2(\mem[3][5] ), .ZN(n39)
         );
  AOI22BBV1_7TV50 U9 ( .B1(n1), .B2(n88), .A1(n1), .A2(\mem[3][6] ), .ZN(n40)
         );
  AOI22BBV1_7TV50 U10 ( .B1(n1), .B2(n89), .A1(n1), .A2(\mem[3][7] ), .ZN(n41)
         );
  AOI22BBV1_7TV50 U11 ( .B1(n10), .B2(n82), .A1(n10), .A2(\mem[2][0] ), .ZN(
        n42) );
  AOI22BBV1_7TV50 U12 ( .B1(n10), .B2(n83), .A1(n10), .A2(\mem[2][1] ), .ZN(
        n43) );
  AOI22BBV1_7TV50 U13 ( .B1(n10), .B2(n84), .A1(n10), .A2(\mem[2][2] ), .ZN(
        n44) );
  AOI22BBV1_7TV50 U14 ( .B1(n10), .B2(n85), .A1(n10), .A2(\mem[2][3] ), .ZN(
        n45) );
  AOI22BBV1_7TV50 U15 ( .B1(n10), .B2(n86), .A1(n10), .A2(\mem[2][4] ), .ZN(
        n46) );
  AOI22BBV1_7TV50 U16 ( .B1(n10), .B2(n87), .A1(n10), .A2(\mem[2][5] ), .ZN(
        n47) );
  AOI22BBV1_7TV50 U17 ( .B1(n10), .B2(n88), .A1(n10), .A2(\mem[2][6] ), .ZN(
        n48) );
  AOI22BBV1_7TV50 U18 ( .B1(n10), .B2(n89), .A1(n10), .A2(\mem[2][7] ), .ZN(
        n49) );
  AOI22BBV1_7TV50 U20 ( .B1(n13), .B2(n82), .A1(n13), .A2(\mem[1][0] ), .ZN(
        n50) );
  AOI22BBV1_7TV50 U21 ( .B1(n13), .B2(n83), .A1(n13), .A2(\mem[1][1] ), .ZN(
        n51) );
  AOI22BBV1_7TV50 U22 ( .B1(n13), .B2(n84), .A1(n13), .A2(\mem[1][2] ), .ZN(
        n52) );
  AOI22BBV1_7TV50 U23 ( .B1(n13), .B2(n85), .A1(n13), .A2(\mem[1][3] ), .ZN(
        n53) );
  AOI22BBV1_7TV50 U24 ( .B1(n13), .B2(n86), .A1(n13), .A2(\mem[1][4] ), .ZN(
        n54) );
  AOI22BBV1_7TV50 U25 ( .B1(n13), .B2(n87), .A1(n13), .A2(\mem[1][5] ), .ZN(
        n55) );
  AOI22BBV1_7TV50 U26 ( .B1(n13), .B2(n88), .A1(n13), .A2(\mem[1][6] ), .ZN(
        n56) );
  AOI22BBV1_7TV50 U27 ( .B1(n13), .B2(n89), .A1(n13), .A2(\mem[1][7] ), .ZN(
        n57) );
  AOI22BBV1_7TV50 U28 ( .B1(n14), .B2(n82), .A1(n14), .A2(\mem[0][0] ), .ZN(
        n58) );
  AOI22BBV1_7TV50 U30 ( .B1(n14), .B2(n83), .A1(n14), .A2(\mem[0][1] ), .ZN(
        n59) );
  AOI22BBV1_7TV50 U32 ( .B1(n14), .B2(n84), .A1(n14), .A2(\mem[0][2] ), .ZN(
        n60) );
  AOI22BBV1_7TV50 U34 ( .B1(n14), .B2(n85), .A1(n14), .A2(\mem[0][3] ), .ZN(
        n61) );
  AOI22BBV1_7TV50 U36 ( .B1(n14), .B2(n86), .A1(n14), .A2(\mem[0][4] ), .ZN(
        n62) );
  AOI22BBV1_7TV50 U38 ( .B1(n14), .B2(n87), .A1(n14), .A2(\mem[0][5] ), .ZN(
        n63) );
  AOI22BBV1_7TV50 U40 ( .B1(n14), .B2(n88), .A1(n14), .A2(\mem[0][6] ), .ZN(
        n64) );
  AOI22BBV1_7TV50 U42 ( .B1(n14), .B2(n89), .A1(n14), .A2(\mem[0][7] ), .ZN(
        n65) );
  DRQV1_7TV50 \re_ptr_reg[1]  ( .D(n69), .CK(clk), .RD(n75), .Q(N9) );
  LAHQV1_7TV50 empty_reg ( .E(N49), .D(N50), .Q(empty) );
  LAHQV1_7TV50 full_reg ( .E(N47), .D(n76), .Q(full) );
  DRQV1_7TV50 \re_ptr_reg[2]  ( .D(n70), .CK(clk), .RD(n75), .Q(\re_ptr[2] )
         );
  DRQV1_7TV50 \mem_reg[0][7]  ( .D(n65), .CK(clk), .RD(n75), .Q(\mem[0][7] )
         );
  DRQV1_7TV50 \mem_reg[0][6]  ( .D(n64), .CK(clk), .RD(n75), .Q(\mem[0][6] )
         );
  DRQV1_7TV50 \mem_reg[0][5]  ( .D(n63), .CK(clk), .RD(n75), .Q(\mem[0][5] )
         );
  DRQV1_7TV50 \mem_reg[0][4]  ( .D(n62), .CK(clk), .RD(n75), .Q(\mem[0][4] )
         );
  DRQV1_7TV50 \mem_reg[0][3]  ( .D(n61), .CK(clk), .RD(n75), .Q(\mem[0][3] )
         );
  DRQV1_7TV50 \mem_reg[0][2]  ( .D(n60), .CK(clk), .RD(n75), .Q(\mem[0][2] )
         );
  DRQV1_7TV50 \mem_reg[0][1]  ( .D(n59), .CK(clk), .RD(n75), .Q(\mem[0][1] )
         );
  DRQV1_7TV50 \mem_reg[0][0]  ( .D(n58), .CK(clk), .RD(n75), .Q(\mem[0][0] )
         );
  DRQV1_7TV50 \mem_reg[2][7]  ( .D(n49), .CK(clk), .RD(n75), .Q(\mem[2][7] )
         );
  DRQV1_7TV50 \mem_reg[2][6]  ( .D(n48), .CK(clk), .RD(n75), .Q(\mem[2][6] )
         );
  DRQV1_7TV50 \mem_reg[2][5]  ( .D(n47), .CK(clk), .RD(n75), .Q(\mem[2][5] )
         );
  DRQV1_7TV50 \mem_reg[2][4]  ( .D(n46), .CK(clk), .RD(n75), .Q(\mem[2][4] )
         );
  DRQV1_7TV50 \mem_reg[2][3]  ( .D(n45), .CK(clk), .RD(n75), .Q(\mem[2][3] )
         );
  DRQV1_7TV50 \mem_reg[2][2]  ( .D(n44), .CK(clk), .RD(n75), .Q(\mem[2][2] )
         );
  DRQV1_7TV50 \mem_reg[2][1]  ( .D(n43), .CK(clk), .RD(n75), .Q(\mem[2][1] )
         );
  DRQV1_7TV50 \mem_reg[2][0]  ( .D(n42), .CK(clk), .RD(n75), .Q(\mem[2][0] )
         );
  DRQV1_7TV50 \mem_reg[1][7]  ( .D(n57), .CK(clk), .RD(n75), .Q(\mem[1][7] )
         );
  DRQV1_7TV50 \mem_reg[1][6]  ( .D(n56), .CK(clk), .RD(n75), .Q(\mem[1][6] )
         );
  DRQV1_7TV50 \mem_reg[1][5]  ( .D(n55), .CK(clk), .RD(n75), .Q(\mem[1][5] )
         );
  DRQV1_7TV50 \mem_reg[1][4]  ( .D(n54), .CK(clk), .RD(n75), .Q(\mem[1][4] )
         );
  DRQV1_7TV50 \mem_reg[1][3]  ( .D(n53), .CK(clk), .RD(n75), .Q(\mem[1][3] )
         );
  DRQV1_7TV50 \mem_reg[1][2]  ( .D(n52), .CK(clk), .RD(n75), .Q(\mem[1][2] )
         );
  DRQV1_7TV50 \mem_reg[1][1]  ( .D(n51), .CK(clk), .RD(n75), .Q(\mem[1][1] )
         );
  DRQV1_7TV50 \mem_reg[1][0]  ( .D(n50), .CK(clk), .RD(n75), .Q(\mem[1][0] )
         );
  DRQV1_7TV50 \mem_reg[3][7]  ( .D(n41), .CK(clk), .RD(n75), .Q(\mem[3][7] )
         );
  DRQV1_7TV50 \mem_reg[3][6]  ( .D(n40), .CK(clk), .RD(n75), .Q(\mem[3][6] )
         );
  DRQV1_7TV50 \mem_reg[3][5]  ( .D(n39), .CK(clk), .RD(n75), .Q(\mem[3][5] )
         );
  DRQV1_7TV50 \mem_reg[3][4]  ( .D(n38), .CK(clk), .RD(n75), .Q(\mem[3][4] )
         );
  DRQV1_7TV50 \mem_reg[3][3]  ( .D(n37), .CK(clk), .RD(n75), .Q(\mem[3][3] )
         );
  DRQV1_7TV50 \mem_reg[3][2]  ( .D(n36), .CK(clk), .RD(n75), .Q(\mem[3][2] )
         );
  DRQV1_7TV50 \mem_reg[3][1]  ( .D(n35), .CK(clk), .RD(n75), .Q(\mem[3][1] )
         );
  DRQV1_7TV50 \mem_reg[3][0]  ( .D(n34), .CK(clk), .RD(n75), .Q(\mem[3][0] )
         );
  DRQV1_7TV50 \wr_ptr_reg[0]  ( .D(n68), .CK(clk), .RD(n75), .Q(wr_ptr[0]) );
  DRQV1_7TV50 \wr_ptr_reg[2]  ( .D(n66), .CK(clk), .RD(n75), .Q(wr_ptr[2]) );
  DRQV1_7TV50 \wr_ptr_reg[1]  ( .D(n67), .CK(clk), .RD(n75), .Q(wr_ptr[1]) );
  DRQV1_7TV50 \re_ptr_reg[0]  ( .D(n71), .CK(clk), .RD(n75), .Q(N8) );
  NAND3V1_7TV50 U60 ( .A1(N9), .A2(N8), .A3(re_en), .ZN(n25) );
  OAI21V1_7TV50 U59 ( .A1(n77), .A2(n25), .B(n90), .ZN(n26) );
  AOI21V1_7TV50 U58 ( .A1(n77), .A2(n25), .B(n26), .ZN(n70) );
  OAI21V1_7TV50 U55 ( .A1(n73), .A2(n21), .B(n90), .ZN(n22) );
  AOI21V1_7TV50 U54 ( .A1(n73), .A2(n21), .B(n22), .ZN(n69) );
  OA12V1_7TV50 U64 ( .A1(re_en), .A2(clr), .B(N8), .Z(n27) );
  AOI21V1_7TV50 U62 ( .A1(re_en), .A2(n90), .B(N8), .ZN(n28) );
  NOR2V1_7TV50 U61 ( .A1(n27), .A2(n28), .ZN(n71) );
  AOI221V1_7TV50 U45 ( .A1(wr_ptr[2]), .A2(n1), .B1(n81), .B2(n79), .C(clr), 
        .ZN(n66) );
  AOI21V1_7TV50 U49 ( .A1(wr_ptr[1]), .A2(n17), .B(n13), .ZN(n18) );
  AOI221V1_7TV50 U52 ( .A1(wr_en), .A2(n12), .B1(n78), .B2(n12), .C(clr), .ZN(
        n68) );
  OAI22V1_7TV50 U76 ( .A1(n78), .A2(N8), .B1(n80), .B2(N9), .ZN(n33) );
  AOI221V1_7TV50 U75 ( .A1(n78), .A2(N8), .B1(N9), .B2(n80), .C(n33), .ZN(n32)
         );
  NAND3BV1_7TV50 U67 ( .A1(n31), .B1(n32), .B2(n29), .ZN(N49) );
  NAND2XBV1_7TV50 U68 ( .A1(n30), .B1(n29), .ZN(N47) );
  XNOR2V1_7TV50 U72 ( .A1(n81), .A2(n77), .ZN(n31) );
  CLKNAND2V1_7TV50 U56 ( .A1(re_en), .A2(N8), .ZN(n21) );
  NAND2V1_7TV50 U71 ( .A1(n32), .A2(n31), .ZN(n30) );
  NOR2V1_7TV50 U48 ( .A1(clr), .A2(n18), .ZN(n67) );
  NOR2V1_7TV50 U69 ( .A1(clr), .A2(n75), .ZN(n29) );
  NAND2V1_7TV50 U65 ( .A1(n29), .A2(n30), .ZN(N50) );
  CLKNAND2V1_7TV50 U51 ( .A1(wr_ptr[0]), .A2(wr_en), .ZN(n17) );
  CLKNAND2V1_7TV50 U53 ( .A1(wr_en), .A2(n78), .ZN(n12) );
  NOR2V1_7TV50 U19 ( .A1(wr_ptr[1]), .A2(n17), .ZN(n13) );
  NOR2V1_7TV50 U29 ( .A1(wr_ptr[1]), .A2(n12), .ZN(n14) );
  INV0P7_7TV50 U31 ( .I(rstn), .ZN(n75) );
  INV0P7_7TV50 U33 ( .I(wr_ptr[0]), .ZN(n78) );
  INV0P7_7TV50 U35 ( .I(n1), .ZN(n79) );
  INV0P7_7TV50 U37 ( .I(clr), .ZN(n90) );
  NOR2V1_7TV50 U39 ( .A1(n80), .A2(n12), .ZN(n10) );
  NOR2V1_7TV50 U41 ( .A1(n80), .A2(n17), .ZN(n1) );
  CLKINV1_7TV50 U43 ( .I(N9), .ZN(n73) );
  CLKINV1_7TV50 U44 ( .I(N8), .ZN(n74) );
  CLKINV1_7TV50 U46 ( .I(N49), .ZN(n76) );
  CLKINV1_7TV50 U47 ( .I(din[3]), .ZN(n85) );
  CLKINV1_7TV50 U50 ( .I(din[2]), .ZN(n84) );
  CLKINV1_7TV50 U57 ( .I(din[0]), .ZN(n82) );
  CLKINV1_7TV50 U63 ( .I(din[4]), .ZN(n86) );
  CLKINV1_7TV50 U66 ( .I(din[7]), .ZN(n89) );
  CLKINV1_7TV50 U70 ( .I(din[1]), .ZN(n83) );
  CLKINV1_7TV50 U73 ( .I(din[5]), .ZN(n87) );
  CLKINV1_7TV50 U74 ( .I(din[6]), .ZN(n88) );
  CLKINV1_7TV50 U77 ( .I(wr_ptr[2]), .ZN(n81) );
  INV0P7_7TV50 U78 ( .I(wr_ptr[1]), .ZN(n80) );
  CLKINV1_7TV50 U79 ( .I(\re_ptr[2] ), .ZN(n77) );
  AOI22V1_7TV50 U80 ( .A1(N9), .A2(n2), .B1(n3), .B2(n73), .ZN(dout[7]) );
  AOI22V1_7TV50 U81 ( .A1(N8), .A2(\mem[1][7] ), .B1(\mem[0][7] ), .B2(n74), 
        .ZN(n3) );
  AOI22V1_7TV50 U82 ( .A1(N8), .A2(\mem[3][7] ), .B1(\mem[2][7] ), .B2(n74), 
        .ZN(n2) );
  AOI22V1_7TV50 U83 ( .A1(N9), .A2(n4), .B1(n5), .B2(n73), .ZN(dout[6]) );
  AOI22V1_7TV50 U84 ( .A1(N8), .A2(\mem[1][6] ), .B1(\mem[0][6] ), .B2(n74), 
        .ZN(n5) );
  AOI22V1_7TV50 U85 ( .A1(N8), .A2(\mem[3][6] ), .B1(\mem[2][6] ), .B2(n74), 
        .ZN(n4) );
  AOI22V1_7TV50 U86 ( .A1(N9), .A2(n6), .B1(n7), .B2(n73), .ZN(dout[5]) );
  AOI22V1_7TV50 U87 ( .A1(N8), .A2(\mem[1][5] ), .B1(\mem[0][5] ), .B2(n74), 
        .ZN(n7) );
  AOI22V1_7TV50 U88 ( .A1(N8), .A2(\mem[3][5] ), .B1(\mem[2][5] ), .B2(n74), 
        .ZN(n6) );
  AOI22V1_7TV50 U89 ( .A1(N9), .A2(n8), .B1(n9), .B2(n73), .ZN(dout[4]) );
  AOI22V1_7TV50 U90 ( .A1(N8), .A2(\mem[1][4] ), .B1(\mem[0][4] ), .B2(n74), 
        .ZN(n9) );
  AOI22V1_7TV50 U91 ( .A1(N8), .A2(\mem[3][4] ), .B1(\mem[2][4] ), .B2(n74), 
        .ZN(n8) );
  AOI22V1_7TV50 U92 ( .A1(N9), .A2(n11), .B1(n15), .B2(n73), .ZN(dout[3]) );
  AOI22V1_7TV50 U93 ( .A1(N8), .A2(\mem[1][3] ), .B1(\mem[0][3] ), .B2(n74), 
        .ZN(n15) );
  AOI22V1_7TV50 U94 ( .A1(N8), .A2(\mem[3][3] ), .B1(\mem[2][3] ), .B2(n74), 
        .ZN(n11) );
  AOI22V1_7TV50 U95 ( .A1(N9), .A2(n16), .B1(n19), .B2(n73), .ZN(dout[2]) );
  AOI22V1_7TV50 U96 ( .A1(N8), .A2(\mem[1][2] ), .B1(\mem[0][2] ), .B2(n74), 
        .ZN(n19) );
  AOI22V1_7TV50 U97 ( .A1(N8), .A2(\mem[3][2] ), .B1(\mem[2][2] ), .B2(n74), 
        .ZN(n16) );
  AOI22V1_7TV50 U98 ( .A1(N9), .A2(n20), .B1(n23), .B2(n73), .ZN(dout[1]) );
  AOI22V1_7TV50 U99 ( .A1(N8), .A2(\mem[1][1] ), .B1(\mem[0][1] ), .B2(n74), 
        .ZN(n23) );
  AOI22V1_7TV50 U100 ( .A1(N8), .A2(\mem[3][1] ), .B1(\mem[2][1] ), .B2(n74), 
        .ZN(n20) );
  AOI22V1_7TV50 U101 ( .A1(N9), .A2(n24), .B1(n72), .B2(n73), .ZN(dout[0]) );
  AOI22V1_7TV50 U102 ( .A1(N8), .A2(\mem[1][0] ), .B1(\mem[0][0] ), .B2(n74), 
        .ZN(n72) );
  AOI22V1_7TV50 U103 ( .A1(N8), .A2(\mem[3][0] ), .B1(\mem[2][0] ), .B2(n74), 
        .ZN(n24) );
endmodule


module spi_fifo_DATAWIDTH8_0 ( clk, rstn, clr, din, wr_en, re_en, dout, full, 
        empty );
  input [7:0] din;
  output [7:0] dout;
  input clk, rstn, clr, wr_en, re_en;
  output full, empty;
  wire   N8, N9, \re_ptr[2] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] ,
         \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] ,
         \mem[2][0] , \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] ,
         \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] , N47, N49, N50, n2,
         n3, n4, n5, n6, n7, n8, n9, n11, n15, n16, n19, n20, n23, n24, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146;
  wire   [2:0] wr_ptr;

  AOI22BBV1_7TV50 U3 ( .B1(n146), .B2(n89), .A1(n146), .A2(\mem[3][0] ), .ZN(
        n128) );
  AOI22BBV1_7TV50 U4 ( .B1(n146), .B2(n88), .A1(n146), .A2(\mem[3][1] ), .ZN(
        n127) );
  AOI22BBV1_7TV50 U5 ( .B1(n146), .B2(n87), .A1(n146), .A2(\mem[3][2] ), .ZN(
        n126) );
  AOI22BBV1_7TV50 U6 ( .B1(n146), .B2(n86), .A1(n146), .A2(\mem[3][3] ), .ZN(
        n125) );
  AOI22BBV1_7TV50 U7 ( .B1(n146), .B2(n85), .A1(n146), .A2(\mem[3][4] ), .ZN(
        n124) );
  AOI22BBV1_7TV50 U8 ( .B1(n146), .B2(n84), .A1(n146), .A2(\mem[3][5] ), .ZN(
        n123) );
  AOI22BBV1_7TV50 U9 ( .B1(n146), .B2(n83), .A1(n146), .A2(\mem[3][6] ), .ZN(
        n122) );
  AOI22BBV1_7TV50 U10 ( .B1(n146), .B2(n82), .A1(n146), .A2(\mem[3][7] ), .ZN(
        n121) );
  AOI22BBV1_7TV50 U11 ( .B1(n145), .B2(n89), .A1(n145), .A2(\mem[2][0] ), .ZN(
        n120) );
  AOI22BBV1_7TV50 U12 ( .B1(n145), .B2(n88), .A1(n145), .A2(\mem[2][1] ), .ZN(
        n119) );
  AOI22BBV1_7TV50 U13 ( .B1(n145), .B2(n87), .A1(n145), .A2(\mem[2][2] ), .ZN(
        n118) );
  AOI22BBV1_7TV50 U14 ( .B1(n145), .B2(n86), .A1(n145), .A2(\mem[2][3] ), .ZN(
        n117) );
  AOI22BBV1_7TV50 U15 ( .B1(n145), .B2(n85), .A1(n145), .A2(\mem[2][4] ), .ZN(
        n116) );
  AOI22BBV1_7TV50 U16 ( .B1(n145), .B2(n84), .A1(n145), .A2(\mem[2][5] ), .ZN(
        n115) );
  AOI22BBV1_7TV50 U17 ( .B1(n145), .B2(n83), .A1(n145), .A2(\mem[2][6] ), .ZN(
        n114) );
  AOI22BBV1_7TV50 U18 ( .B1(n145), .B2(n82), .A1(n145), .A2(\mem[2][7] ), .ZN(
        n113) );
  AOI22BBV1_7TV50 U20 ( .B1(n143), .B2(n89), .A1(n143), .A2(\mem[1][0] ), .ZN(
        n112) );
  AOI22BBV1_7TV50 U21 ( .B1(n143), .B2(n88), .A1(n143), .A2(\mem[1][1] ), .ZN(
        n111) );
  AOI22BBV1_7TV50 U22 ( .B1(n143), .B2(n87), .A1(n143), .A2(\mem[1][2] ), .ZN(
        n110) );
  AOI22BBV1_7TV50 U23 ( .B1(n143), .B2(n86), .A1(n143), .A2(\mem[1][3] ), .ZN(
        n109) );
  AOI22BBV1_7TV50 U24 ( .B1(n143), .B2(n85), .A1(n143), .A2(\mem[1][4] ), .ZN(
        n108) );
  AOI22BBV1_7TV50 U25 ( .B1(n143), .B2(n84), .A1(n143), .A2(\mem[1][5] ), .ZN(
        n107) );
  AOI22BBV1_7TV50 U26 ( .B1(n143), .B2(n83), .A1(n143), .A2(\mem[1][6] ), .ZN(
        n106) );
  AOI22BBV1_7TV50 U27 ( .B1(n143), .B2(n82), .A1(n143), .A2(\mem[1][7] ), .ZN(
        n105) );
  AOI22BBV1_7TV50 U28 ( .B1(n142), .B2(n89), .A1(n142), .A2(\mem[0][0] ), .ZN(
        n104) );
  AOI22BBV1_7TV50 U30 ( .B1(n142), .B2(n88), .A1(n142), .A2(\mem[0][1] ), .ZN(
        n103) );
  AOI22BBV1_7TV50 U32 ( .B1(n142), .B2(n87), .A1(n142), .A2(\mem[0][2] ), .ZN(
        n102) );
  AOI22BBV1_7TV50 U34 ( .B1(n142), .B2(n86), .A1(n142), .A2(\mem[0][3] ), .ZN(
        n101) );
  AOI22BBV1_7TV50 U36 ( .B1(n142), .B2(n85), .A1(n142), .A2(\mem[0][4] ), .ZN(
        n100) );
  AOI22BBV1_7TV50 U38 ( .B1(n142), .B2(n84), .A1(n142), .A2(\mem[0][5] ), .ZN(
        n99) );
  AOI22BBV1_7TV50 U40 ( .B1(n142), .B2(n83), .A1(n142), .A2(\mem[0][6] ), .ZN(
        n98) );
  AOI22BBV1_7TV50 U42 ( .B1(n142), .B2(n82), .A1(n142), .A2(\mem[0][7] ), .ZN(
        n97) );
  LAHQV1_7TV50 empty_reg ( .E(N49), .D(N50), .Q(empty) );
  DRQV1_7TV50 \re_ptr_reg[1]  ( .D(n93), .CK(clk), .RD(n75), .Q(N9) );
  LAHQV1_7TV50 full_reg ( .E(N47), .D(n76), .Q(full) );
  DRQV1_7TV50 \re_ptr_reg[2]  ( .D(n92), .CK(clk), .RD(n75), .Q(\re_ptr[2] )
         );
  DRQV1_7TV50 \mem_reg[0][7]  ( .D(n97), .CK(clk), .RD(n75), .Q(\mem[0][7] )
         );
  DRQV1_7TV50 \mem_reg[0][6]  ( .D(n98), .CK(clk), .RD(n75), .Q(\mem[0][6] )
         );
  DRQV1_7TV50 \mem_reg[0][5]  ( .D(n99), .CK(clk), .RD(n75), .Q(\mem[0][5] )
         );
  DRQV1_7TV50 \mem_reg[0][4]  ( .D(n100), .CK(clk), .RD(n75), .Q(\mem[0][4] )
         );
  DRQV1_7TV50 \mem_reg[0][3]  ( .D(n101), .CK(clk), .RD(n75), .Q(\mem[0][3] )
         );
  DRQV1_7TV50 \mem_reg[0][2]  ( .D(n102), .CK(clk), .RD(n75), .Q(\mem[0][2] )
         );
  DRQV1_7TV50 \mem_reg[0][1]  ( .D(n103), .CK(clk), .RD(n75), .Q(\mem[0][1] )
         );
  DRQV1_7TV50 \mem_reg[0][0]  ( .D(n104), .CK(clk), .RD(n75), .Q(\mem[0][0] )
         );
  DRQV1_7TV50 \mem_reg[2][7]  ( .D(n113), .CK(clk), .RD(n75), .Q(\mem[2][7] )
         );
  DRQV1_7TV50 \mem_reg[2][6]  ( .D(n114), .CK(clk), .RD(n75), .Q(\mem[2][6] )
         );
  DRQV1_7TV50 \mem_reg[2][5]  ( .D(n115), .CK(clk), .RD(n75), .Q(\mem[2][5] )
         );
  DRQV1_7TV50 \mem_reg[2][4]  ( .D(n116), .CK(clk), .RD(n75), .Q(\mem[2][4] )
         );
  DRQV1_7TV50 \mem_reg[2][3]  ( .D(n117), .CK(clk), .RD(n75), .Q(\mem[2][3] )
         );
  DRQV1_7TV50 \mem_reg[2][2]  ( .D(n118), .CK(clk), .RD(n75), .Q(\mem[2][2] )
         );
  DRQV1_7TV50 \mem_reg[2][1]  ( .D(n119), .CK(clk), .RD(n75), .Q(\mem[2][1] )
         );
  DRQV1_7TV50 \mem_reg[2][0]  ( .D(n120), .CK(clk), .RD(n75), .Q(\mem[2][0] )
         );
  DRQV1_7TV50 \mem_reg[1][7]  ( .D(n105), .CK(clk), .RD(n75), .Q(\mem[1][7] )
         );
  DRQV1_7TV50 \mem_reg[1][6]  ( .D(n106), .CK(clk), .RD(n75), .Q(\mem[1][6] )
         );
  DRQV1_7TV50 \mem_reg[1][5]  ( .D(n107), .CK(clk), .RD(n75), .Q(\mem[1][5] )
         );
  DRQV1_7TV50 \mem_reg[1][4]  ( .D(n108), .CK(clk), .RD(n75), .Q(\mem[1][4] )
         );
  DRQV1_7TV50 \mem_reg[1][3]  ( .D(n109), .CK(clk), .RD(n75), .Q(\mem[1][3] )
         );
  DRQV1_7TV50 \mem_reg[1][2]  ( .D(n110), .CK(clk), .RD(n75), .Q(\mem[1][2] )
         );
  DRQV1_7TV50 \mem_reg[1][1]  ( .D(n111), .CK(clk), .RD(n75), .Q(\mem[1][1] )
         );
  DRQV1_7TV50 \mem_reg[1][0]  ( .D(n112), .CK(clk), .RD(n75), .Q(\mem[1][0] )
         );
  DRQV1_7TV50 \mem_reg[3][7]  ( .D(n121), .CK(clk), .RD(n75), .Q(\mem[3][7] )
         );
  DRQV1_7TV50 \mem_reg[3][6]  ( .D(n122), .CK(clk), .RD(n75), .Q(\mem[3][6] )
         );
  DRQV1_7TV50 \mem_reg[3][5]  ( .D(n123), .CK(clk), .RD(n75), .Q(\mem[3][5] )
         );
  DRQV1_7TV50 \mem_reg[3][4]  ( .D(n124), .CK(clk), .RD(n75), .Q(\mem[3][4] )
         );
  DRQV1_7TV50 \mem_reg[3][3]  ( .D(n125), .CK(clk), .RD(n75), .Q(\mem[3][3] )
         );
  DRQV1_7TV50 \mem_reg[3][2]  ( .D(n126), .CK(clk), .RD(n75), .Q(\mem[3][2] )
         );
  DRQV1_7TV50 \mem_reg[3][1]  ( .D(n127), .CK(clk), .RD(n75), .Q(\mem[3][1] )
         );
  DRQV1_7TV50 \mem_reg[3][0]  ( .D(n128), .CK(clk), .RD(n75), .Q(\mem[3][0] )
         );
  DRQV1_7TV50 \wr_ptr_reg[0]  ( .D(n94), .CK(clk), .RD(n75), .Q(wr_ptr[0]) );
  DRQV1_7TV50 \wr_ptr_reg[2]  ( .D(n96), .CK(clk), .RD(n75), .Q(wr_ptr[2]) );
  DRQV1_7TV50 \wr_ptr_reg[1]  ( .D(n95), .CK(clk), .RD(n75), .Q(wr_ptr[1]) );
  DRQV1_7TV50 \re_ptr_reg[0]  ( .D(n91), .CK(clk), .RD(n75), .Q(N8) );
  AOI221V1_7TV50 U45 ( .A1(wr_ptr[2]), .A2(n146), .B1(n81), .B2(n79), .C(clr), 
        .ZN(n96) );
  AOI21V1_7TV50 U49 ( .A1(wr_ptr[1]), .A2(n141), .B(n143), .ZN(n140) );
  AOI221V1_7TV50 U52 ( .A1(wr_en), .A2(n144), .B1(n78), .B2(n144), .C(clr), 
        .ZN(n94) );
  NAND3V1_7TV50 U60 ( .A1(N9), .A2(N8), .A3(re_en), .ZN(n137) );
  OAI21V1_7TV50 U59 ( .A1(n77), .A2(n137), .B(n90), .ZN(n136) );
  AOI21V1_7TV50 U58 ( .A1(n77), .A2(n137), .B(n136), .ZN(n92) );
  OAI21V1_7TV50 U55 ( .A1(n73), .A2(n139), .B(n90), .ZN(n138) );
  AOI21V1_7TV50 U54 ( .A1(n73), .A2(n139), .B(n138), .ZN(n93) );
  OA12V1_7TV50 U64 ( .A1(re_en), .A2(clr), .B(N8), .Z(n135) );
  AOI21V1_7TV50 U62 ( .A1(re_en), .A2(n90), .B(N8), .ZN(n134) );
  NOR2V1_7TV50 U61 ( .A1(n135), .A2(n134), .ZN(n91) );
  OAI22V1_7TV50 U76 ( .A1(n78), .A2(N8), .B1(n80), .B2(N9), .ZN(n129) );
  AOI221V1_7TV50 U75 ( .A1(n78), .A2(N8), .B1(N9), .B2(n80), .C(n129), .ZN(
        n130) );
  NAND3BV1_7TV50 U67 ( .A1(n131), .B1(n130), .B2(n133), .ZN(N49) );
  NAND2XBV1_7TV50 U68 ( .A1(n132), .B1(n133), .ZN(N47) );
  XNOR2V1_7TV50 U72 ( .A1(n81), .A2(n77), .ZN(n131) );
  CLKNAND2V1_7TV50 U56 ( .A1(re_en), .A2(N8), .ZN(n139) );
  NAND2V1_7TV50 U71 ( .A1(n130), .A2(n131), .ZN(n132) );
  NAND2V1_7TV50 U51 ( .A1(wr_ptr[0]), .A2(wr_en), .ZN(n141) );
  NOR2V1_7TV50 U48 ( .A1(clr), .A2(n140), .ZN(n95) );
  NOR2V1_7TV50 U69 ( .A1(clr), .A2(n75), .ZN(n133) );
  NAND2V1_7TV50 U65 ( .A1(n133), .A2(n132), .ZN(N50) );
  NAND2V1_7TV50 U53 ( .A1(wr_en), .A2(n78), .ZN(n144) );
  NOR2V1_7TV50 U19 ( .A1(wr_ptr[1]), .A2(n141), .ZN(n143) );
  NOR2V1_7TV50 U29 ( .A1(wr_ptr[1]), .A2(n144), .ZN(n142) );
  INV0P7_7TV50 U31 ( .I(n146), .ZN(n79) );
  NOR2V1_7TV50 U33 ( .A1(n80), .A2(n141), .ZN(n146) );
  NOR2V1_7TV50 U35 ( .A1(n80), .A2(n144), .ZN(n145) );
  INV0P7_7TV50 U37 ( .I(rstn), .ZN(n75) );
  INV0P7_7TV50 U39 ( .I(clr), .ZN(n90) );
  INV0P7_7TV50 U41 ( .I(wr_ptr[0]), .ZN(n78) );
  CLKINV1_7TV50 U43 ( .I(N9), .ZN(n73) );
  CLKINV1_7TV50 U44 ( .I(din[0]), .ZN(n89) );
  CLKINV1_7TV50 U46 ( .I(din[5]), .ZN(n84) );
  CLKINV1_7TV50 U47 ( .I(din[7]), .ZN(n82) );
  CLKINV1_7TV50 U50 ( .I(din[6]), .ZN(n83) );
  CLKINV1_7TV50 U57 ( .I(din[2]), .ZN(n87) );
  CLKINV1_7TV50 U63 ( .I(din[4]), .ZN(n85) );
  CLKINV1_7TV50 U66 ( .I(din[1]), .ZN(n88) );
  CLKINV1_7TV50 U70 ( .I(din[3]), .ZN(n86) );
  INV0P7_7TV50 U73 ( .I(wr_ptr[1]), .ZN(n80) );
  CLKINV1_7TV50 U74 ( .I(N49), .ZN(n76) );
  CLKINV1_7TV50 U77 ( .I(\re_ptr[2] ), .ZN(n77) );
  CLKINV1_7TV50 U78 ( .I(N8), .ZN(n74) );
  CLKINV1_7TV50 U79 ( .I(wr_ptr[2]), .ZN(n81) );
  AOI22V1_7TV50 U80 ( .A1(N9), .A2(n2), .B1(n3), .B2(n73), .ZN(dout[7]) );
  AOI22V1_7TV50 U81 ( .A1(N8), .A2(\mem[1][7] ), .B1(\mem[0][7] ), .B2(n74), 
        .ZN(n3) );
  AOI22V1_7TV50 U82 ( .A1(N8), .A2(\mem[3][7] ), .B1(\mem[2][7] ), .B2(n74), 
        .ZN(n2) );
  AOI22V1_7TV50 U83 ( .A1(N9), .A2(n4), .B1(n5), .B2(n73), .ZN(dout[6]) );
  AOI22V1_7TV50 U84 ( .A1(N8), .A2(\mem[1][6] ), .B1(\mem[0][6] ), .B2(n74), 
        .ZN(n5) );
  AOI22V1_7TV50 U85 ( .A1(N8), .A2(\mem[3][6] ), .B1(\mem[2][6] ), .B2(n74), 
        .ZN(n4) );
  AOI22V1_7TV50 U86 ( .A1(N9), .A2(n6), .B1(n7), .B2(n73), .ZN(dout[5]) );
  AOI22V1_7TV50 U87 ( .A1(N8), .A2(\mem[1][5] ), .B1(\mem[0][5] ), .B2(n74), 
        .ZN(n7) );
  AOI22V1_7TV50 U88 ( .A1(N8), .A2(\mem[3][5] ), .B1(\mem[2][5] ), .B2(n74), 
        .ZN(n6) );
  AOI22V1_7TV50 U89 ( .A1(N9), .A2(n8), .B1(n9), .B2(n73), .ZN(dout[4]) );
  AOI22V1_7TV50 U90 ( .A1(N8), .A2(\mem[1][4] ), .B1(\mem[0][4] ), .B2(n74), 
        .ZN(n9) );
  AOI22V1_7TV50 U91 ( .A1(N8), .A2(\mem[3][4] ), .B1(\mem[2][4] ), .B2(n74), 
        .ZN(n8) );
  AOI22V1_7TV50 U92 ( .A1(N9), .A2(n11), .B1(n15), .B2(n73), .ZN(dout[3]) );
  AOI22V1_7TV50 U93 ( .A1(N8), .A2(\mem[1][3] ), .B1(\mem[0][3] ), .B2(n74), 
        .ZN(n15) );
  AOI22V1_7TV50 U94 ( .A1(N8), .A2(\mem[3][3] ), .B1(\mem[2][3] ), .B2(n74), 
        .ZN(n11) );
  AOI22V1_7TV50 U95 ( .A1(N9), .A2(n16), .B1(n19), .B2(n73), .ZN(dout[2]) );
  AOI22V1_7TV50 U96 ( .A1(N8), .A2(\mem[1][2] ), .B1(\mem[0][2] ), .B2(n74), 
        .ZN(n19) );
  AOI22V1_7TV50 U97 ( .A1(N8), .A2(\mem[3][2] ), .B1(\mem[2][2] ), .B2(n74), 
        .ZN(n16) );
  AOI22V1_7TV50 U98 ( .A1(N9), .A2(n20), .B1(n23), .B2(n73), .ZN(dout[1]) );
  AOI22V1_7TV50 U99 ( .A1(N8), .A2(\mem[1][1] ), .B1(\mem[0][1] ), .B2(n74), 
        .ZN(n23) );
  AOI22V1_7TV50 U100 ( .A1(N8), .A2(\mem[3][1] ), .B1(\mem[2][1] ), .B2(n74), 
        .ZN(n20) );
  AOI22V1_7TV50 U101 ( .A1(N9), .A2(n24), .B1(n72), .B2(n73), .ZN(dout[0]) );
  AOI22V1_7TV50 U102 ( .A1(N8), .A2(\mem[1][0] ), .B1(\mem[0][0] ), .B2(n74), 
        .ZN(n72) );
  AOI22V1_7TV50 U103 ( .A1(N8), .A2(\mem[3][0] ), .B1(\mem[2][0] ), .B2(n74), 
        .ZN(n24) );
endmodule


module BitDistributor8 ( inputs, select, outputs );
  input [2:0] select;
  output [7:0] outputs;
  input inputs;
  wire   n2, n3, n4, n5, n1;

  NAND3V1_7TV50 U4 ( .A1(select[0]), .A2(n2), .A3(n1), .ZN(outputs[5]) );
  NAND3V1_7TV50 U7 ( .A1(select[1]), .A2(select[0]), .A3(n5), .ZN(outputs[3])
         );
  NAND3V1_7TV50 U2 ( .A1(select[1]), .A2(select[0]), .A3(n2), .ZN(outputs[7])
         );
  NAND3V1_7TV50 U10 ( .A1(select[0]), .A2(n5), .A3(n1), .ZN(outputs[1]) );
  NOR2V1_7TV50 U9 ( .A1(select[0]), .A2(n1), .ZN(n3) );
  NOR2V1_7TV50 U13 ( .A1(select[1]), .A2(select[0]), .ZN(n4) );
  NOR2XBV1_7TV50 U6 ( .A1(select[2]), .B1(inputs), .ZN(n2) );
  NAND2V1_7TV50 U5 ( .A1(n4), .A2(n2), .ZN(outputs[4]) );
  NOR2V1_7TV50 U12 ( .A1(inputs), .A2(select[2]), .ZN(n5) );
  NAND2V1_7TV50 U11 ( .A1(n4), .A2(n5), .ZN(outputs[0]) );
  NAND2V1_7TV50 U8 ( .A1(n5), .A2(n3), .ZN(outputs[2]) );
  NAND2V1_7TV50 U3 ( .A1(n3), .A2(n2), .ZN(outputs[6]) );
  INV0P7_7TV50 U14 ( .I(select[1]), .ZN(n1) );
endmodule


module spi_MasterMode_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;

  INV0P7_7TV50 U27 ( .I(A[0]), .ZN(SUM[0]) );
  NAND2V1_7TV50 U28 ( .A1(n46), .A2(n42), .ZN(n45) );
  INV0P7_7TV50 U29 ( .I(A[6]), .ZN(n42) );
  XNOR2V1_7TV50 U30 ( .A1(A[9]), .A2(n43), .ZN(SUM[9]) );
  AOI22BBV1_7TV50 U31 ( .B1(A[8]), .B2(n44), .A1(A[8]), .A2(n44), .ZN(SUM[8])
         );
  XNOR2V1_7TV50 U32 ( .A1(A[7]), .A2(n45), .ZN(SUM[7]) );
  XNOR2V1_7TV50 U33 ( .A1(n46), .A2(n42), .ZN(SUM[6]) );
  XNOR2V1_7TV50 U34 ( .A1(A[5]), .A2(n47), .ZN(SUM[5]) );
  AOI22BBV1_7TV50 U35 ( .B1(A[4]), .B2(n48), .A1(A[4]), .A2(n48), .ZN(SUM[4])
         );
  AOI22BBV1_7TV50 U36 ( .B1(A[3]), .B2(n49), .A1(A[3]), .A2(n49), .ZN(SUM[3])
         );
  NOR3V1_7TV50 U37 ( .A1(A[2]), .A2(A[1]), .A3(A[0]), .ZN(n49) );
  AOI22BBV1_7TV50 U38 ( .B1(A[2]), .B2(n50), .A1(A[2]), .A2(n50), .ZN(SUM[2])
         );
  NOR2V1_7TV50 U39 ( .A1(A[1]), .A2(A[0]), .ZN(n50) );
  XNOR2V1_7TV50 U40 ( .A1(A[1]), .A2(A[0]), .ZN(SUM[1]) );
  OAI31V1_7TV50 U41 ( .A1(A[11]), .A2(A[12]), .A3(n51), .B(n52), .ZN(SUM[12])
         );
  OAI21V1_7TV50 U42 ( .A1(A[11]), .A2(n51), .B(A[12]), .ZN(n52) );
  XNOR2V1_7TV50 U43 ( .A1(A[11]), .A2(n51), .ZN(SUM[11]) );
  NAND2XBV1_7TV50 U44 ( .A1(A[10]), .B1(n53), .ZN(n51) );
  AOI22BBV1_7TV50 U45 ( .B1(A[10]), .B2(n53), .A1(A[10]), .A2(n53), .ZN(
        SUM[10]) );
  NOR2V1_7TV50 U46 ( .A1(A[9]), .A2(n43), .ZN(n53) );
  NAND2XBV1_7TV50 U47 ( .A1(A[8]), .B1(n44), .ZN(n43) );
  NOR2V1_7TV50 U48 ( .A1(A[7]), .A2(n45), .ZN(n44) );
  NOR2V1_7TV50 U49 ( .A1(A[5]), .A2(n47), .ZN(n46) );
  NAND2XBV1_7TV50 U50 ( .A1(A[4]), .B1(n48), .ZN(n47) );
  NOR4V1_7TV50 U51 ( .A1(A[3]), .A2(A[2]), .A3(A[1]), .A4(A[0]), .ZN(n48) );
endmodule


module spi_MasterMode ( clk_i, rstn_i, master_mode, stb_i, addr_i, we_i, 
        data_i, spi_con_i, data_o, ack_o, int_o, sck_o, ssn_o_8, mosi_o, 
        miso_i );
  input [1:0] addr_i;
  input [7:0] data_i;
  input [7:0] spi_con_i;
  output [7:0] data_o;
  output [7:0] ssn_o_8;
  input clk_i, rstn_i, master_mode, stb_i, we_i, miso_i;
  output ack_o, int_o, sck_o, mosi_o;
  wire   rfifo_wen, spi_sta_7, spi_sta_6, wfifo_wen, rfifo_ren, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, trans_en, N187,
         wfifo_ren, ssn, N197, N207, N226, N229, N237, n1, n2, n4, n5, n6, n7,
         n10, n12, n13, n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n29,
         n30, n31, n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n47, n48, n50, n51, n53, n54, n55, n56, n58, n59, n60, n63, n65,
         n66, n67, n68, n69, n70, n71, n74, n75, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n90, n91, n92, n93, n95, n96, n97, n98,
         n99, n101, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n187, n188, n189, n190, n191, n193, n3, n8, n9, n11, n14,
         n15, n16, n24, n28, n35, n46, n49, n52, n57, n61, n62, n64, n72, n73,
         n76, n89, n94, n100, n102, n124, n125, n135, n136, n137, n186, n192,
         n194, n195, n196, n197, n198, n199;
  wire   [7:0] spi_ext;
  wire   [1:0] trans_cnt;
  wire   [3:0] spi_sta;
  wire   [7:0] rfifo_dout;
  wire   [12:0] clk_cnt;
  wire   [2:0] state;
  wire   [7:0] wfifo_dout;
  wire   [2:0] bit_cnt;
  wire   [6:0] data_buf;
  tri   miso_i;

  DRNQV1_7TV50 \spi_ext_reg[2]  ( .D(n185), .CK(clk_i), .RDN(rstn_i), .Q(
        spi_ext[2]) );
  DRNQV1_7TV50 \spi_ext_reg[1]  ( .D(n184), .CK(clk_i), .RDN(rstn_i), .Q(
        spi_ext[1]) );
  DRNQV1_7TV50 \spi_ext_reg[0]  ( .D(n183), .CK(clk_i), .RDN(rstn_i), .Q(
        spi_ext[0]) );
  DRNQV1_7TV50 ack_o_reg ( .D(n182), .CK(clk_i), .RDN(rstn_i), .Q(ack_o) );
  DRNQV1_7TV50 wr_col_f_reg ( .D(n180), .CK(clk_i), .RDN(rstn_i), .Q(spi_sta_6) );
  DRNQV1_7TV50 \state_reg[0]  ( .D(n179), .CK(clk_i), .RDN(rstn_i), .Q(
        state[0]) );
  DRNQV1_7TV50 \clk_cnt_reg[8]  ( .D(n178), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[8]) );
  DRNQV1_7TV50 \clk_cnt_reg[0]  ( .D(n177), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[0]) );
  DRNQV1_7TV50 \clk_cnt_reg[1]  ( .D(n176), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[1]) );
  DRNQV1_7TV50 \clk_cnt_reg[2]  ( .D(n175), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[2]) );
  DRNQV1_7TV50 \clk_cnt_reg[3]  ( .D(n174), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[3]) );
  DRNQV1_7TV50 \clk_cnt_reg[4]  ( .D(n173), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[4]) );
  DRNQV1_7TV50 \clk_cnt_reg[5]  ( .D(n172), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[5]) );
  DRNQV1_7TV50 \clk_cnt_reg[6]  ( .D(n171), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[6]) );
  DRNQV1_7TV50 \clk_cnt_reg[7]  ( .D(n170), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[7]) );
  DRNQV1_7TV50 \clk_cnt_reg[9]  ( .D(n169), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[9]) );
  DRNQV1_7TV50 \clk_cnt_reg[10]  ( .D(n168), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[10]) );
  DRNQV1_7TV50 \clk_cnt_reg[11]  ( .D(n167), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[11]) );
  DRNQV1_7TV50 \clk_cnt_reg[12]  ( .D(n166), .CK(clk_i), .RDN(rstn_i), .Q(
        clk_cnt[12]) );
  DRNQV1_7TV50 \bit_cnt_reg[1]  ( .D(n164), .CK(clk_i), .RDN(rstn_i), .Q(
        bit_cnt[1]) );
  DRNQV1_7TV50 \bit_cnt_reg[2]  ( .D(n163), .CK(clk_i), .RDN(rstn_i), .Q(
        bit_cnt[2]) );
  DRNQV1_7TV50 \state_reg[2]  ( .D(n162), .CK(clk_i), .RDN(rstn_i), .Q(
        state[2]) );
  DRNQV1_7TV50 \bit_cnt_reg[0]  ( .D(n161), .CK(clk_i), .RDN(rstn_i), .Q(
        bit_cnt[0]) );
  DRNQV1_7TV50 \data_buf_reg[0]  ( .D(n160), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[0]) );
  DRNQV1_7TV50 \data_buf_reg[1]  ( .D(n159), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[1]) );
  DRNQV1_7TV50 \data_buf_reg[2]  ( .D(n158), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[2]) );
  DRNQV1_7TV50 \data_buf_reg[3]  ( .D(n157), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[3]) );
  DRNQV1_7TV50 \data_buf_reg[4]  ( .D(n156), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[4]) );
  DRNQV1_7TV50 \data_buf_reg[5]  ( .D(n155), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[5]) );
  DRNQV1_7TV50 \data_buf_reg[6]  ( .D(n154), .CK(clk_i), .RDN(rstn_i), .Q(
        data_buf[6]) );
  DRNQV1_7TV50 \data_buf_reg[7]  ( .D(n153), .CK(clk_i), .RDN(rstn_i), .Q(
        mosi_o) );
  DRNQV1_7TV50 rfifo_wen_reg ( .D(n152), .CK(clk_i), .RDN(rstn_i), .Q(
        rfifo_wen) );
  DRNQV1_7TV50 \data_o_reg[0]  ( .D(n151), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[0]) );
  DRNQV1_7TV50 \data_o_reg[1]  ( .D(n150), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[1]) );
  DRNQV1_7TV50 \data_o_reg[2]  ( .D(n149), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[2]) );
  DRNQV1_7TV50 \data_o_reg[3]  ( .D(n148), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[3]) );
  DRNQV1_7TV50 \data_o_reg[4]  ( .D(n147), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[4]) );
  DRNQV1_7TV50 \data_o_reg[5]  ( .D(n146), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[5]) );
  DRNQV1_7TV50 \data_o_reg[6]  ( .D(n145), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[6]) );
  DRNQV1_7TV50 spi_int_f_reg ( .D(n144), .CK(clk_i), .RDN(rstn_i), .Q(
        spi_sta_7) );
  DRNQV1_7TV50 int_o_reg ( .D(n143), .CK(clk_i), .RDN(rstn_i), .Q(int_o) );
  DRNQV1_7TV50 \data_o_reg[7]  ( .D(n142), .CK(clk_i), .RDN(rstn_i), .Q(
        data_o[7]) );
  DRNQV1_7TV50 \trans_cnt_reg[0]  ( .D(n141), .CK(clk_i), .RDN(rstn_i), .Q(
        trans_cnt[0]) );
  DRNQV1_7TV50 \trans_cnt_reg[1]  ( .D(n140), .CK(clk_i), .RDN(rstn_i), .Q(
        trans_cnt[1]) );
  DRNQV1_7TV50 sck_o_reg ( .D(n139), .CK(clk_i), .RDN(rstn_i), .Q(sck_o) );
  AOI22BBV1_7TV50 U4 ( .B1(n2), .B2(N197), .A1(n2), .A2(ssn), .ZN(n138) );
  AOI22XBV1_7TV50 U14 ( .A1(trans_cnt[1]), .A2(n22), .B2N(n23), .B1(
        trans_cnt[0]), .ZN(n18) );
  OAI2XB11V1_7TV50 U38 ( .A2N(spi_con_i[2]), .A1(n192), .B(n44), .C(n45), .ZN(
        n149) );
  OAI31V1_7TV50 U52 ( .A1(n196), .A2(n125), .A3(n54), .B(n55), .ZN(n152) );
  OAI221V1_7TV50 U63 ( .A1(n49), .A2(n137), .B1(bit_cnt[0]), .B2(n60), .C(n63), 
        .ZN(n161) );
  OAI31V1_7TV50 U70 ( .A1(bit_cnt[0]), .A2(bit_cnt[1]), .A3(n60), .B(n69), 
        .ZN(n164) );
  NAND4BV1_7TV50 U94 ( .A1(n91), .B1(n79), .B2(n92), .B3(n93), .ZN(n171) );
  NAND4BV1_7TV50 U104 ( .A1(n103), .B1(n104), .B2(n105), .B3(n106), .ZN(n173)
         );
  AOI22BBV1_7TV50 U182 ( .B1(n186), .B2(n64), .A1(n186), .A2(data_i[3]), .ZN(
        n187) );
  AOI22BBV1_7TV50 U184 ( .B1(n186), .B2(n62), .A1(n186), .A2(data_i[4]), .ZN(
        n188) );
  AOI22BBV1_7TV50 U187 ( .B1(n52), .B2(n186), .A1(n186), .A2(data_i[6]), .ZN(
        n190) );
  AOI22BBV1_7TV50 U190 ( .B1(n20), .B2(n195), .A1(spi_ext[7]), .A2(n20), .ZN(
        n191) );
  AOI22BBV1_7TV50 U197 ( .B1(sck_o), .B2(N197), .A1(N197), .A2(spi_con_i[4]), 
        .ZN(N207) );
  spi_fifo_DATAWIDTH8_1 read_fifo ( .clk(clk_i), .rstn(rstn_i), .clr(n193), 
        .din({mosi_o, data_buf}), .wr_en(rfifo_wen), .re_en(rfifo_ren), .dout(
        rfifo_dout), .full(spi_sta[1]), .empty(spi_sta[0]) );
  spi_fifo_DATAWIDTH8_0 write_fifo ( .clk(clk_i), .rstn(rstn_i), .clr(n193), 
        .din(data_i), .wr_en(wfifo_wen), .re_en(wfifo_ren), .dout(wfifo_dout), 
        .full(spi_sta[3]), .empty(spi_sta[2]) );
  BitDistributor8 slave_selector ( .inputs(ssn), .select(spi_ext[2:0]), 
        .outputs(ssn_o_8) );
  spi_MasterMode_DW01_dec_0 sub_234 ( .A(clk_cnt), .SUM({N98, N97, N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86}) );
  DRQV1_7TV50 \spi_ext_reg[7]  ( .D(n191), .CK(clk_i), .RD(n8), .Q(spi_ext[7])
         );
  DRQV1_7TV50 \spi_ext_reg[6]  ( .D(n190), .CK(clk_i), .RD(n8), .Q(spi_ext[6])
         );
  DRQV1_7TV50 \spi_ext_reg[4]  ( .D(n188), .CK(clk_i), .RD(n8), .Q(spi_ext[4])
         );
  DRQV1_7TV50 \spi_ext_reg[5]  ( .D(n189), .CK(clk_i), .RD(n8), .Q(spi_ext[5])
         );
  DRNQV1_7TV50 \state_reg[1]  ( .D(n165), .CK(clk_i), .RDN(rstn_i), .Q(
        state[1]) );
  NAND4V1_7TV50 U174 ( .A1(addr_i[1]), .A2(stb_i), .A3(ack_o), .A4(n194), .ZN(
        n1) );
  AO222V1_7TV50 U27 ( .A1(n37), .A2(spi_con_i[6]), .B1(n31), .B2(spi_sta_6), 
        .C1(n32), .C2(spi_ext[6]), .Z(n36) );
  AO221V1_7TV50 U26 ( .A1(rfifo_dout[6]), .A2(n33), .B1(data_o[6]), .B2(n196), 
        .C(n36), .Z(n145) );
  NAND3V1_7TV50 U171 ( .A1(stb_i), .A2(we_i), .A3(n31), .ZN(n34) );
  NAND2XBV1_7TV50 U170 ( .A1(n34), .B1(data_i[6]), .ZN(n134) );
  AO32V1_7TV50 U169 ( .A1(wfifo_wen), .A2(master_mode), .A3(spi_sta[3]), .B1(
        spi_sta_6), .B2(n134), .Z(n180) );
  NAND4V1_7TV50 U193 ( .A1(addr_i[0]), .A2(addr_i[1]), .A3(stb_i), .A4(we_i), 
        .ZN(n27) );
  OA22V1_7TV50 U186 ( .A1(n20), .A2(spi_ext[5]), .B1(n186), .B2(data_i[5]), 
        .Z(n189) );
  NAND3BV1_7TV50 U25 ( .A1(trans_cnt[0]), .B1(master_mode), .B2(rfifo_wen), 
        .ZN(n26) );
  NOR2V1_7TV50 U24 ( .A1(trans_cnt[1]), .A2(n26), .ZN(n21) );
  OA22V1_7TV50 U23 ( .A1(n34), .A2(n195), .B1(spi_sta_7), .B2(n21), .Z(n144)
         );
  AOI22V1_7TV50 U40 ( .A1(spi_sta[2]), .A2(n31), .B1(n32), .B2(spi_ext[2]), 
        .ZN(n44) );
  AOI22V1_7TV50 U39 ( .A1(rfifo_dout[2]), .A2(n33), .B1(data_o[2]), .B2(n196), 
        .ZN(n45) );
  AOI22V1_7TV50 U21 ( .A1(rfifo_dout[7]), .A2(n33), .B1(data_o[7]), .B2(n196), 
        .ZN(n29) );
  AOI22V1_7TV50 U20 ( .A1(n31), .A2(spi_sta_7), .B1(n32), .B2(spi_ext[7]), 
        .ZN(n30) );
  OAI211V1_7TV50 U19 ( .A1(n193), .A2(n192), .B(n29), .C(n30), .ZN(n142) );
  AOI22V1_7TV50 U47 ( .A1(rfifo_dout[0]), .A2(n33), .B1(data_o[0]), .B2(n196), 
        .ZN(n50) );
  AOI22V1_7TV50 U45 ( .A1(n31), .A2(spi_sta[0]), .B1(n32), .B2(spi_ext[0]), 
        .ZN(n51) );
  OAI211V1_7TV50 U44 ( .A1(n199), .A2(n192), .B(n50), .C(n51), .ZN(n151) );
  AOI22V1_7TV50 U43 ( .A1(rfifo_dout[1]), .A2(n33), .B1(data_o[1]), .B2(n196), 
        .ZN(n47) );
  AOI22V1_7TV50 U42 ( .A1(n31), .A2(spi_sta[1]), .B1(n32), .B2(spi_ext[1]), 
        .ZN(n48) );
  OAI211V1_7TV50 U41 ( .A1(n198), .A2(n192), .B(n47), .C(n48), .ZN(n150) );
  OAI2XB1V1_7TV50 U18 ( .B2(n27), .B1(rfifo_wen), .A(master_mode), .ZN(n22) );
  AOI22V1_7TV50 U17 ( .A1(n20), .A2(spi_ext[6]), .B1(trans_cnt[0]), .B2(n22), 
        .ZN(n25) );
  AOI32V1_7TV50 U15 ( .A1(n52), .A2(n25), .A3(n23), .B1(n26), .B2(n25), .ZN(
        n141) );
  AOI22V1_7TV50 U36 ( .A1(rfifo_dout[3]), .A2(n33), .B1(data_o[3]), .B2(n196), 
        .ZN(n42) );
  AOI22V1_7TV50 U35 ( .A1(spi_ext[3]), .A2(n32), .B1(n31), .B2(spi_sta[3]), 
        .ZN(n43) );
  OAI211V1_7TV50 U34 ( .A1(n197), .A2(n192), .B(n42), .C(n43), .ZN(n148) );
  AOI22V1_7TV50 U30 ( .A1(n32), .A2(spi_ext[5]), .B1(data_o[5]), .B2(n196), 
        .ZN(n38) );
  AOI22V1_7TV50 U29 ( .A1(n37), .A2(spi_con_i[5]), .B1(n33), .B2(rfifo_dout[5]), .ZN(n39) );
  AOI22V1_7TV50 U33 ( .A1(n32), .A2(spi_ext[4]), .B1(data_o[4]), .B2(n196), 
        .ZN(n40) );
  AOI22V1_7TV50 U32 ( .A1(n37), .A2(spi_con_i[4]), .B1(n33), .B2(rfifo_dout[4]), .ZN(n41) );
  OAI21V1_7TV50 U13 ( .A1(n20), .A2(n21), .B(spi_ext[7]), .ZN(n19) );
  NOR4V1_7TV50 U162 ( .A1(clk_cnt[7]), .A2(clk_cnt[6]), .A3(clk_cnt[3]), .A4(
        clk_cnt[5]), .ZN(n132) );
  NOR4V1_7TV50 U161 ( .A1(clk_cnt[4]), .A2(clk_cnt[12]), .A3(clk_cnt[2]), .A4(
        clk_cnt[1]), .ZN(n133) );
  NAND4XXBBV1_7TV50 U160 ( .A1(clk_cnt[0]), .A2(clk_cnt[11]), .B1(n132), .B2(
        n133), .ZN(n131) );
  NAND3V1_7TV50 U147 ( .A1(spi_con_i[7]), .A2(n125), .A3(n128), .ZN(n127) );
  NOR3V1_7TV50 U121 ( .A1(spi_con_i[0]), .A2(spi_con_i[1]), .A3(n115), .ZN(n97) );
  OAI21V1_7TV50 U103 ( .A1(n198), .A2(n82), .B(n100), .ZN(n101) );
  OAI22V1_7TV50 U102 ( .A1(master_mode), .A2(clk_cnt[5]), .B1(spi_con_i[2]), 
        .B2(n101), .ZN(n98) );
  OAI22V1_7TV50 U101 ( .A1(N91), .A2(n102), .B1(n89), .B2(n82), .ZN(n99) );
  AOI211V1_7TV50 U100 ( .A1(n90), .A2(n97), .B(n98), .C(n99), .ZN(n172) );
  OAI21V1_7TV50 U114 ( .A1(spi_con_i[1]), .A2(n84), .B(spi_con_i[0]), .ZN(n110) );
  OAI22V1_7TV50 U112 ( .A1(master_mode), .A2(clk_cnt[3]), .B1(N89), .B2(n102), 
        .ZN(n111) );
  NAND2XBV1_7TV50 U139 ( .A1(n87), .B1(spi_con_i[0]), .ZN(n114) );
  AOI21V1_7TV50 U111 ( .A1(n113), .A2(n114), .B(n82), .ZN(n112) );
  AOI211V1_7TV50 U110 ( .A1(n109), .A2(n110), .B(n111), .C(n112), .ZN(n174) );
  AO222V1_7TV50 U81 ( .A1(n61), .A2(n94), .B1(n196), .B2(clk_cnt[12]), .C1(N98), .C2(n74), .Z(n166) );
  AO222V1_7TV50 U61 ( .A1(n56), .A2(data_buf[0]), .B1(n46), .B2(wfifo_dout[0]), 
        .C1(miso_i), .C2(n58), .Z(n160) );
  NAND2XBV1_7TV50 U89 ( .A1(n84), .B1(n85), .ZN(n80) );
  AOI22V1_7TV50 U87 ( .A1(N96), .A2(n74), .B1(clk_cnt[10]), .B2(n196), .ZN(n81) );
  OAI211V1_7TV50 U86 ( .A1(n79), .A2(n61), .B(n80), .C(n81), .ZN(n168) );
  OAI21V1_7TV50 U120 ( .A1(spi_con_i[2]), .A2(n82), .B(n61), .ZN(n95) );
  NOR2V1_7TV50 U119 ( .A1(n113), .A2(n84), .ZN(n108) );
  AOI32V1_7TV50 U108 ( .A1(n199), .A2(n95), .A3(n76), .B1(n108), .B2(
        spi_con_i[0]), .ZN(n104) );
  AOI22V1_7TV50 U107 ( .A1(N90), .A2(n74), .B1(clk_cnt[4]), .B2(n196), .ZN(
        n105) );
  NOR2V1_7TV50 U106 ( .A1(n199), .A2(n82), .ZN(n107) );
  OAI211V1_7TV50 U105 ( .A1(spi_con_i[2]), .A2(n107), .B(n198), .C(n100), .ZN(
        n106) );
  AOI22V1_7TV50 U124 ( .A1(N88), .A2(n74), .B1(clk_cnt[2]), .B2(n196), .ZN(
        n116) );
  AOI31V1_7TV50 U122 ( .A1(n76), .A2(spi_con_i[0]), .A3(n90), .B(n103), .ZN(
        n117) );
  AOI21V1_7TV50 U118 ( .A1(n97), .A2(n95), .B(n108), .ZN(n118) );
  NAND4V1_7TV50 U116 ( .A1(n116), .A2(n117), .A3(n118), .A4(n75), .ZN(n175) );
  AOI21V1_7TV50 U98 ( .A1(n96), .A2(n84), .B(n87), .ZN(n91) );
  NAND3V1_7TV50 U96 ( .A1(n76), .A2(n95), .A3(spi_con_i[0]), .ZN(n92) );
  AOI22V1_7TV50 U95 ( .A1(N92), .A2(n74), .B1(clk_cnt[6]), .B2(n196), .ZN(n93)
         );
  AOI22V1_7TV50 U140 ( .A1(N94), .A2(n74), .B1(clk_cnt[8]), .B2(n196), .ZN(
        n126) );
  OAI211V1_7TV50 U138 ( .A1(n90), .A2(n89), .B(n126), .C(n114), .ZN(n178) );
  OAI211V1_7TV50 U133 ( .A1(n115), .A2(n84), .B(n113), .C(n87), .ZN(n121) );
  NAND3V1_7TV50 U132 ( .A1(spi_con_i[0]), .A2(n90), .A3(n100), .ZN(n122) );
  AOI22V1_7TV50 U131 ( .A1(N86), .A2(n74), .B1(clk_cnt[0]), .B2(n196), .ZN(
        n123) );
  NAND3BV1_7TV50 U130 ( .A1(n121), .B1(n122), .B2(n123), .ZN(n177) );
  AOI22V1_7TV50 U90 ( .A1(N95), .A2(n74), .B1(clk_cnt[9]), .B2(n196), .ZN(n83)
         );
  OAI211V1_7TV50 U88 ( .A1(n75), .A2(n82), .B(n83), .C(n80), .ZN(n169) );
  AOI22V1_7TV50 U128 ( .A1(N87), .A2(n74), .B1(clk_cnt[1]), .B2(n196), .ZN(
        n119) );
  AOI211V1_7TV50 U126 ( .A1(spi_con_i[0]), .A2(n121), .B(n85), .C(n103), .ZN(
        n120) );
  OAI211V1_7TV50 U125 ( .A1(n57), .A2(n113), .B(n119), .C(n120), .ZN(n176) );
  AOI22V1_7TV50 U85 ( .A1(N97), .A2(n74), .B1(clk_cnt[11]), .B2(n196), .ZN(n77) );
  NAND2XBV1_7TV50 U84 ( .A1(n79), .B1(n57), .ZN(n78) );
  OAI211V1_7TV50 U83 ( .A1(n57), .A2(n75), .B(n77), .C(n78), .ZN(n167) );
  AOI221V1_7TV50 U93 ( .A1(spi_con_i[0]), .A2(n61), .B1(n199), .B2(n90), .C(
        n57), .ZN(n86) );
  AOI22V1_7TV50 U92 ( .A1(N93), .A2(n74), .B1(clk_cnt[7]), .B2(n196), .ZN(n88)
         );
  OAI211V1_7TV50 U91 ( .A1(n86), .A2(n87), .B(n88), .C(n89), .ZN(n170) );
  AO32V1_7TV50 U177 ( .A1(stb_i), .A2(master_mode), .A3(n72), .B1(n196), .B2(
        ack_o), .Z(n182) );
  OAI21V1_7TV50 U80 ( .A1(n136), .A2(n65), .B(state[1]), .ZN(n70) );
  NAND3V1_7TV50 U152 ( .A1(state[2]), .A2(n35), .A3(N197), .ZN(n71) );
  OAI211V1_7TV50 U79 ( .A1(n65), .A2(n124), .B(n70), .C(n71), .ZN(n165) );
  NOR3V1_7TV50 U155 ( .A1(bit_cnt[0]), .A2(bit_cnt[2]), .A3(bit_cnt[1]), .ZN(
        n68) );
  NOR3V1_7TV50 U154 ( .A1(state[0]), .A2(state[2]), .A3(n68), .ZN(n130) );
  OAI21V1_7TV50 U153 ( .A1(n130), .A2(n135), .B(n35), .ZN(n129) );
  OAI211V1_7TV50 U151 ( .A1(n35), .A2(n124), .B(n129), .C(n71), .ZN(n179) );
  AOI22V1_7TV50 U64 ( .A1(n35), .A2(n54), .B1(n136), .B2(n65), .ZN(n162) );
  NOR2V1_7TV50 U5 ( .A1(n196), .A2(n4), .ZN(n2) );
  AOI221V1_7TV50 U10 ( .A1(state[1]), .A2(n73), .B1(n135), .B2(n197), .C(n125), 
        .ZN(n12) );
  OAI211V1_7TV50 U9 ( .A1(n12), .A2(n13), .B(master_mode), .C(N229), .ZN(n6)
         );
  NOR3V1_7TV50 U8 ( .A1(state[1]), .A2(spi_con_i[3]), .A3(n124), .ZN(n10) );
  AOI32V1_7TV50 U7 ( .A1(state[1]), .A2(n136), .A3(n73), .B1(n10), .B2(n136), 
        .ZN(n7) );
  AOI32V1_7TV50 U6 ( .A1(n5), .A2(n6), .A3(n7), .B1(N187), .B2(n6), .ZN(n139)
         );
  AO32V1_7TV50 U22 ( .A1(spi_con_i[6]), .A2(master_mode), .A3(spi_sta_7), .B1(
        n196), .B2(int_o), .Z(n143) );
  AO222V1_7TV50 U54 ( .A1(n56), .A2(mosi_o), .B1(n46), .B2(wfifo_dout[7]), 
        .C1(data_buf[6]), .C2(n58), .Z(n153) );
  AO222V1_7TV50 U60 ( .A1(n56), .A2(data_buf[1]), .B1(n46), .B2(wfifo_dout[1]), 
        .C1(data_buf[0]), .C2(n58), .Z(n159) );
  AO222V1_7TV50 U59 ( .A1(n56), .A2(data_buf[2]), .B1(n46), .B2(wfifo_dout[2]), 
        .C1(data_buf[1]), .C2(n58), .Z(n158) );
  AO222V1_7TV50 U58 ( .A1(n56), .A2(data_buf[3]), .B1(n46), .B2(wfifo_dout[3]), 
        .C1(data_buf[2]), .C2(n58), .Z(n157) );
  AO222V1_7TV50 U56 ( .A1(n56), .A2(data_buf[5]), .B1(n46), .B2(wfifo_dout[5]), 
        .C1(data_buf[4]), .C2(n58), .Z(n155) );
  AO222V1_7TV50 U55 ( .A1(n56), .A2(data_buf[6]), .B1(n46), .B2(wfifo_dout[6]), 
        .C1(data_buf[5]), .C2(n58), .Z(n154) );
  AO222V1_7TV50 U57 ( .A1(n56), .A2(data_buf[4]), .B1(n46), .B2(wfifo_dout[4]), 
        .C1(data_buf[3]), .C2(n58), .Z(n156) );
  OAI21V1_7TV50 U74 ( .A1(state[0]), .A2(n137), .B(n49), .ZN(n67) );
  AOI21V1_7TV50 U71 ( .A1(bit_cnt[1]), .A2(n67), .B(n46), .ZN(n69) );
  AOI32V1_7TV50 U68 ( .A1(bit_cnt[2]), .A2(n124), .A3(bit_cnt[1]), .B1(n67), 
        .B2(bit_cnt[2]), .ZN(n66) );
  OAI211V1_7TV50 U67 ( .A1(n17), .A2(n56), .B(n63), .C(n66), .ZN(n163) );
  NAND2V1_7TV50 U49 ( .A1(master_mode), .A2(addr_i[1]), .ZN(n53) );
  NOR3V1_7TV50 U172 ( .A1(addr_i[1]), .A2(n194), .A3(n196), .ZN(n31) );
  NOR4V1_7TV50 U159 ( .A1(clk_cnt[9]), .A2(clk_cnt[8]), .A3(clk_cnt[10]), .A4(
        n131), .ZN(trans_en) );
  NAND2V1_7TV50 U166 ( .A1(n135), .A2(n124), .ZN(n4) );
  NAND2V1_7TV50 U73 ( .A1(n49), .A2(n13), .ZN(n63) );
  NOR2V1_7TV50 U127 ( .A1(n57), .A2(n87), .ZN(n103) );
  OA21BV1_7TV50 U158 ( .A1(n13), .A2(trans_en), .B(n196), .Z(n5) );
  OAI21V1_7TV50 U157 ( .A1(n128), .A2(N197), .B(n5), .ZN(n65) );
  CLKNAND2V1_7TV50 U16 ( .A1(trans_cnt[1]), .A2(n27), .ZN(n23) );
  MUX2V1_7TV50 U180 ( .I0(spi_ext[1]), .I1(data_i[1]), .S(n20), .Z(n184) );
  NAND2V1_7TV50 U12 ( .A1(n18), .A2(n19), .ZN(n140) );
  NAND2V1_7TV50 U146 ( .A1(n127), .A2(master_mode), .ZN(n115) );
  NAND2V1_7TV50 U135 ( .A1(n82), .A2(n61), .ZN(n84) );
  NAND2V1_7TV50 U163 ( .A1(n136), .A2(n4), .ZN(n13) );
  NAND2V1_7TV50 U66 ( .A1(n136), .A2(state[1]), .ZN(n59) );
  NAND2V1_7TV50 U76 ( .A1(n49), .A2(n124), .ZN(n60) );
  NOR2V1_7TV50 U62 ( .A1(n59), .A2(n60), .ZN(n58) );
  NAND2V1_7TV50 U97 ( .A1(n199), .A2(n85), .ZN(n79) );
  NAND2V1_7TV50 U99 ( .A1(n57), .A2(n198), .ZN(n96) );
  NAND2V1_7TV50 U69 ( .A1(n68), .A2(n124), .ZN(n17) );
  CLKOR2V1_7TV50 U65 ( .A1(n59), .A2(n17), .Z(n54) );
  NOR3V1_7TV50 U51 ( .A1(addr_i[1]), .A2(n196), .A3(addr_i[0]), .ZN(n37) );
  NOR3V1_7TV50 U150 ( .A1(n62), .A2(spi_ext[5]), .A3(spi_ext[3]), .ZN(n90) );
  NAND3V1_7TV50 U137 ( .A1(n62), .A2(n64), .A3(spi_ext[5]), .ZN(n82) );
  NOR2V1_7TV50 U143 ( .A1(n198), .A2(n87), .ZN(n85) );
  NOR2V1_7TV50 U115 ( .A1(spi_con_i[2]), .A2(n115), .ZN(n109) );
  CLKNAND2V1_7TV50 U53 ( .A1(rfifo_wen), .A2(n196), .ZN(n55) );
  NOR2V1_7TV50 U48 ( .A1(addr_i[0]), .A2(n53), .ZN(n33) );
  NOR2V1_7TV50 U46 ( .A1(n194), .A2(n53), .ZN(n32) );
  OR2V1_7TV50 U165 ( .A1(n4), .A2(state[2]), .Z(n128) );
  NAND2V1_7TV50 U28 ( .A1(n38), .A2(n39), .ZN(n146) );
  NAND2V1_7TV50 U31 ( .A1(n40), .A2(n41), .ZN(n147) );
  CLKMUX2V1_7TV50 U181 ( .I0(spi_ext[2]), .I1(data_i[2]), .S(n20), .Z(n185) );
  CLKNAND2V1_7TV50 U134 ( .A1(spi_con_i[1]), .A2(n100), .ZN(n113) );
  CLKNAND2V1_7TV50 U117 ( .A1(spi_con_i[0]), .A2(n85), .ZN(n75) );
  MUX2V1_7TV50 U176 ( .I0(wfifo_ren), .I1(N237), .S(master_mode), .Z(n181) );
  NOR2V1_7TV50 U3 ( .A1(we_i), .A2(n1), .ZN(rfifo_ren) );
  NOR2XBV1_7TV50 U173 ( .A1(we_i), .B1(n1), .ZN(wfifo_wen) );
  MUX2V1_7TV50 U179 ( .I0(spi_ext[0]), .I1(data_i[0]), .S(n20), .Z(n183) );
  NAND2V1_7TV50 U144 ( .A1(spi_con_i[2]), .A2(n100), .ZN(n87) );
  DSRNQV1_7TV50 ssn_reg ( .D(n138), .CK(clk_i), .RDN(n3), .SDN(rstn_i), .Q(ssn) );
  DSRNQV1_7TV50 \spi_ext_reg[3]  ( .D(n187), .CK(clk_i), .RDN(n3), .SDN(rstn_i), .Q(spi_ext[3]) );
  DRQV1_7TV50 wfifo_ren_reg ( .D(n181), .CK(clk_i), .RD(n8), .Q(wfifo_ren) );
  PULL1_7TV50 U11 ( .Z(n3) );
  INV0P7_7TV50 U37 ( .I(n20), .ZN(n186) );
  INV0P7_7TV50 U50 ( .I(master_mode), .ZN(n196) );
  INV0P7_7TV50 U72 ( .I(n37), .ZN(n192) );
  NOR2V1_7TV50 U75 ( .A1(n196), .A2(n27), .ZN(n20) );
  CLKINV1_7TV50 U77 ( .I(addr_i[0]), .ZN(n194) );
  CLKINV1_7TV50 U78 ( .I(n115), .ZN(n100) );
  CLKINV1_7TV50 U82 ( .I(n63), .ZN(n46) );
  CLKNAND2V1_7TV50 U109 ( .A1(state[2]), .A2(N197), .ZN(n11) );
  INV0P7_7TV50 U113 ( .I(n74), .ZN(n102) );
  INV0P7_7TV50 U123 ( .I(n65), .ZN(n35) );
  INV0P7_7TV50 U129 ( .I(state[2]), .ZN(n136) );
  INV0P7_7TV50 U136 ( .I(n85), .ZN(n89) );
  NOR2V1_7TV50 U141 ( .A1(n196), .A2(n127), .ZN(n74) );
  INV0P7_7TV50 U142 ( .I(state[0]), .ZN(n124) );
  INV0P7_7TV50 U145 ( .I(spi_con_i[1]), .ZN(n198) );
  CLKINV1_7TV50 U148 ( .I(spi_ext[4]), .ZN(n62) );
  INV0P7_7TV50 U149 ( .I(spi_con_i[7]), .ZN(n193) );
  INV0P7_7TV50 U156 ( .I(sck_o), .ZN(N187) );
  CLKINV1_7TV50 U164 ( .I(n82), .ZN(n57) );
  CLKINV1_7TV50 U167 ( .I(n56), .ZN(n49) );
  NAND2V1_7TV50 U168 ( .A1(master_mode), .A2(N226), .ZN(n56) );
  CLKINV1_7TV50 U175 ( .I(spi_sta[2]), .ZN(N197) );
  CLKINV1_7TV50 U178 ( .I(rstn_i), .ZN(n8) );
  INV0P7_7TV50 U183 ( .I(n90), .ZN(n61) );
  INV0P7_7TV50 U185 ( .I(state[1]), .ZN(n135) );
  INV0P7_7TV50 U188 ( .I(spi_con_i[0]), .ZN(n199) );
  CLKINV1_7TV50 U189 ( .I(spi_ext[3]), .ZN(n64) );
  INV0P7_7TV50 U191 ( .I(spi_ext[6]), .ZN(n52) );
  MUX2V1_7TV50 U192 ( .I0(n28), .I1(n14), .S(state[0]), .Z(N237) );
  CLKINV1_7TV50 U194 ( .I(n11), .ZN(n28) );
  INV0P7_7TV50 U195 ( .I(bit_cnt[0]), .ZN(n137) );
  CLKINV1_7TV50 U196 ( .I(n17), .ZN(n73) );
  CLKINV1_7TV50 U198 ( .I(n113), .ZN(n76) );
  NAND2V1_7TV50 U199 ( .A1(state[1]), .A2(n9), .ZN(n16) );
  CLKINV1_7TV50 U200 ( .I(n75), .ZN(n94) );
  INV0P7_7TV50 U201 ( .I(spi_con_i[3]), .ZN(n197) );
  CLKINV1_7TV50 U202 ( .I(data_i[7]), .ZN(n195) );
  INV0P7_7TV50 U203 ( .I(ack_o), .ZN(n72) );
  INV0P7_7TV50 U204 ( .I(trans_en), .ZN(n125) );
  MUX2NV1_7TV50 U205 ( .I0(trans_en), .I1(N197), .S(state[2]), .ZN(n9) );
  AOI21V1_7TV50 U206 ( .A1(n11), .A2(state[1]), .B(n9), .ZN(n14) );
  NOR2V1_7TV50 U207 ( .A1(state[0]), .A2(state[1]), .ZN(n15) );
  MUX3V1_7TV50 U208 ( .I0(N187), .I1(spi_con_i[4]), .I2(N207), .S0(n15), .S1(
        state[2]), .Z(N229) );
  OAI2XB1V1_7TV50 U209 ( .B2(state[2]), .B1(N197), .A(n16), .ZN(n24) );
  MUX2NV1_7TV50 U210 ( .I0(n24), .I1(n11), .S(state[0]), .ZN(N226) );
endmodule


module spi_SlaveMode ( sck_i, ssn_i, mosi_i, miso_o, sys_clk_i, sys_rstn_i, 
        slave_mode, tx_valid, tx_data, rx_valid_d1, rx_data, cpol, cpha );
  input [7:0] tx_data;
  output [7:0] rx_data;
  input sck_i, ssn_i, mosi_i, sys_clk_i, sys_rstn_i, slave_mode, tx_valid,
         cpol, cpha;
  output miso_o, rx_valid_d1;
  wire   N3, N4, N5, rx_valid, rx_valid_d0, miso_bit, n1, n2, n3, n4, n5, n6,
         n14, n16, n17, n18, n19, n20, n23, n25, n27, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n42, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n7,
         n8, n9, n10, n11, n12, n13, n15, n21, n22, n24, n26, n28, n41, n43,
         n62;
  wire   [7:0] sfr_rx;
  wire   [2:0] rx_bit_cnt;
  wire   [7:0] sfr_tx;
  wire   [2:0] tx_bit_cnt;
  tri   sck_i;
  tri   mosi_i;
  tri   miso_o;

  DRNQV1_7TV50 rx_valid_reg ( .D(n40), .CK(n61), .RDN(sys_rstn_i), .Q(rx_valid) );
  DRNQV1_7TV50 rx_valid_d0_reg ( .D(n39), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_valid_d0) );
  DRNQV1_7TV50 rx_valid_d1_reg ( .D(n38), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_valid_d1) );
  DRNQV1_7TV50 \rx_data_reg[0]  ( .D(n37), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[0]) );
  DRNQV1_7TV50 \rx_data_reg[1]  ( .D(n36), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[1]) );
  DRNQV1_7TV50 \rx_data_reg[2]  ( .D(n35), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[2]) );
  DRNQV1_7TV50 \rx_data_reg[3]  ( .D(n34), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[3]) );
  DRNQV1_7TV50 \rx_data_reg[4]  ( .D(n33), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[4]) );
  DRNQV1_7TV50 \rx_data_reg[5]  ( .D(n32), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[5]) );
  DRNQV1_7TV50 \rx_data_reg[6]  ( .D(n31), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[6]) );
  DRNQV1_7TV50 \rx_data_reg[7]  ( .D(n30), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[7]) );
  AOI22BBV1_7TV50 U3 ( .B1(tx_bit_cnt[2]), .B2(n1), .A1(tx_bit_cnt[2]), .A2(n1), .ZN(n23) );
  AOI22BBV1_7TV50 U5 ( .B1(tx_bit_cnt[1]), .B2(n3), .A1(tx_bit_cnt[1]), .A2(n3), .ZN(n25) );
  OAI31V1_7TV50 U8 ( .A1(rx_bit_cnt[1]), .A2(rx_bit_cnt[2]), .A3(n4), .B(n5), 
        .ZN(n29) );
  AOI22BBV1_7TV50 U11 ( .B1(n6), .B2(n41), .A1(n6), .A2(rx_data[6]), .ZN(n31)
         );
  AOI22BBV1_7TV50 U12 ( .B1(n6), .B2(n28), .A1(n6), .A2(rx_data[5]), .ZN(n32)
         );
  AOI22BBV1_7TV50 U13 ( .B1(n6), .B2(n26), .A1(n6), .A2(rx_data[4]), .ZN(n33)
         );
  AOI22BBV1_7TV50 U14 ( .B1(n6), .B2(n24), .A1(n6), .A2(rx_data[3]), .ZN(n34)
         );
  AOI22BBV1_7TV50 U15 ( .B1(n6), .B2(n22), .A1(n6), .A2(rx_data[2]), .ZN(n35)
         );
  AOI22BBV1_7TV50 U16 ( .B1(n6), .B2(n21), .A1(n6), .A2(rx_data[1]), .ZN(n36)
         );
  AOI22BBV1_7TV50 U17 ( .B1(n6), .B2(n15), .A1(n6), .A2(rx_data[0]), .ZN(n37)
         );
  AO21BV1_7TV50 U19 ( .A1(rx_valid_d1), .A2(n2), .B(n14), .Z(n38) );
  OAI31V1_7TV50 U22 ( .A1(n4), .A2(rx_bit_cnt[2]), .A3(rx_bit_cnt[1]), .B(n16), 
        .ZN(n40) );
  AO21BV1_7TV50 U25 ( .A1(rx_bit_cnt[0]), .A2(n2), .B(n4), .Z(n44) );
  AOI22BBV1_7TV50 U36 ( .B1(n43), .B2(n41), .A1(sfr_rx[7]), .A2(n43), .ZN(n53)
         );
  AOI22BBV1_7TV50 U50 ( .B1(n2), .B2(n15), .A1(n2), .A2(mosi_i), .ZN(n60) );
  AOI22BBV1_7TV50 U56 ( .B1(sck_i), .B2(cpol), .A1(sck_i), .A2(cpol), .ZN(n18)
         );
  AOI22BBV1_7TV50 U62 ( .B1(tx_bit_cnt[0]), .B2(cpha), .A1(tx_bit_cnt[0]), 
        .A2(cpha), .ZN(N3) );
  DQV1_7TV50 \sfr_tx_reg[7]  ( .D(n52), .CK(sys_clk_i), .Q(sfr_tx[7]) );
  DQV1_7TV50 \sfr_tx_reg[5]  ( .D(n50), .CK(sys_clk_i), .Q(sfr_tx[5]) );
  DQV1_7TV50 \sfr_tx_reg[3]  ( .D(n48), .CK(sys_clk_i), .Q(sfr_tx[3]) );
  DQV1_7TV50 \sfr_tx_reg[1]  ( .D(n46), .CK(sys_clk_i), .Q(sfr_tx[1]) );
  DQV1_7TV50 \sfr_tx_reg[6]  ( .D(n51), .CK(sys_clk_i), .Q(sfr_tx[6]) );
  DQV1_7TV50 \sfr_tx_reg[4]  ( .D(n49), .CK(sys_clk_i), .Q(sfr_tx[4]) );
  DQV1_7TV50 \sfr_tx_reg[2]  ( .D(n47), .CK(sys_clk_i), .Q(sfr_tx[2]) );
  DQV1_7TV50 \sfr_tx_reg[0]  ( .D(n45), .CK(sys_clk_i), .Q(sfr_tx[0]) );
  TBUFV1_7TV50 miso_o_tri ( .I(miso_bit), .OE(n62), .Z(miso_o) );
  XNOR2V1_7TV50 U60 ( .A1(tx_bit_cnt[1]), .A2(n20), .ZN(N4) );
  NAND3V1_7TV50 U59 ( .A1(tx_bit_cnt[0]), .A2(cpha), .A3(tx_bit_cnt[1]), .ZN(
        n19) );
  XNOR2V1_7TV50 U58 ( .A1(n19), .A2(tx_bit_cnt[2]), .ZN(N5) );
  OA22V1_7TV50 U21 ( .A1(n2), .A2(rx_valid), .B1(rx_valid_d0), .B2(n43), .Z(
        n39) );
  OAI21V1_7TV50 U9 ( .A1(rx_bit_cnt[1]), .A2(n4), .B(rx_bit_cnt[2]), .ZN(n5)
         );
  NOR3V1_7TV50 U4 ( .A1(tx_bit_cnt[1]), .A2(tx_bit_cnt[0]), .A3(n2), .ZN(n1)
         );
  XNOR2V1_7TV50 U24 ( .A1(rx_bit_cnt[1]), .A2(n4), .ZN(n42) );
  AO12V1_7TV50 U6 ( .A1(tx_bit_cnt[0]), .A2(n2), .B(n3), .Z(n27) );
  AOI22V1_7TV50 U41 ( .A1(n43), .A2(n24), .B1(n26), .B2(n2), .ZN(n56) );
  AOI22V1_7TV50 U45 ( .A1(n43), .A2(n21), .B1(n22), .B2(n2), .ZN(n58) );
  AOI22V1_7TV50 U37 ( .A1(n43), .A2(n28), .B1(n41), .B2(n2), .ZN(n54) );
  AOI22V1_7TV50 U43 ( .A1(n43), .A2(n22), .B1(n24), .B2(n2), .ZN(n57) );
  AOI22V1_7TV50 U39 ( .A1(n43), .A2(n26), .B1(n28), .B2(n2), .ZN(n55) );
  AOI22V1_7TV50 U47 ( .A1(n43), .A2(n15), .B1(n21), .B2(n2), .ZN(n59) );
  NAND2V1_7TV50 U61 ( .A1(tx_bit_cnt[0]), .A2(cpha), .ZN(n20) );
  NAND2V1_7TV50 U20 ( .A1(n43), .A2(rx_valid_d0), .ZN(n14) );
  CLKNAND2V1_7TV50 U23 ( .A1(rx_valid), .A2(n2), .ZN(n16) );
  OR2V1_7TV50 U26 ( .A1(rx_bit_cnt[0]), .A2(n2), .Z(n4) );
  NOR2V1_7TV50 U7 ( .A1(tx_bit_cnt[0]), .A2(n2), .ZN(n3) );
  NAND2V1_7TV50 U35 ( .A1(n43), .A2(tx_valid), .ZN(n17) );
  CLKMUX2V1_7TV50 U31 ( .I0(tx_data[4]), .I1(sfr_tx[4]), .S(n17), .Z(n49) );
  CLKMUX2V1_7TV50 U27 ( .I0(tx_data[0]), .I1(sfr_tx[0]), .S(n17), .Z(n45) );
  CLKMUX2V1_7TV50 U33 ( .I0(tx_data[6]), .I1(sfr_tx[6]), .S(n17), .Z(n51) );
  CLKMUX2V1_7TV50 U28 ( .I0(tx_data[1]), .I1(sfr_tx[1]), .S(n17), .Z(n46) );
  CLKMUX2V1_7TV50 U32 ( .I0(tx_data[5]), .I1(sfr_tx[5]), .S(n17), .Z(n50) );
  CLKMUX2V1_7TV50 U34 ( .I0(tx_data[7]), .I1(sfr_tx[7]), .S(n17), .Z(n52) );
  CLKMUX2V1_7TV50 U29 ( .I0(tx_data[2]), .I1(sfr_tx[2]), .S(n17), .Z(n47) );
  CLKMUX2V1_7TV50 U30 ( .I0(tx_data[3]), .I1(sfr_tx[3]), .S(n17), .Z(n48) );
  MUX2V1_7TV50 U10 ( .I0(rx_data[7]), .I1(sfr_rx[7]), .S(n6), .Z(n30) );
  DSRNQV1_7TV50 \rx_bit_cnt_reg[0]  ( .D(n44), .CK(n61), .RDN(n7), .SDN(
        sys_rstn_i), .Q(rx_bit_cnt[0]) );
  DSRNQV1_7TV50 \tx_bit_cnt_reg[0]  ( .D(n27), .CK(n63), .RDN(n7), .SDN(
        sys_rstn_i), .Q(tx_bit_cnt[0]) );
  DSRNQV1_7TV50 \rx_bit_cnt_reg[2]  ( .D(n29), .CK(n61), .RDN(n7), .SDN(
        sys_rstn_i), .Q(rx_bit_cnt[2]) );
  DSRNQV1_7TV50 \rx_bit_cnt_reg[1]  ( .D(n42), .CK(n61), .RDN(n7), .SDN(
        sys_rstn_i), .Q(rx_bit_cnt[1]) );
  DSRNQV1_7TV50 \tx_bit_cnt_reg[1]  ( .D(n25), .CK(n63), .RDN(n7), .SDN(
        sys_rstn_i), .Q(tx_bit_cnt[1]) );
  DSRNQV1_7TV50 \tx_bit_cnt_reg[2]  ( .D(n23), .CK(n63), .RDN(n7), .SDN(
        sys_rstn_i), .Q(tx_bit_cnt[2]) );
  DRNQV1_7TV50 \sfr_rx_reg[7]  ( .D(n53), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[7]) );
  DRNQV1_7TV50 \sfr_rx_reg[0]  ( .D(n60), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[0]) );
  DRNQV1_7TV50 \sfr_rx_reg[1]  ( .D(n59), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[1]) );
  DRNQV1_7TV50 \sfr_rx_reg[6]  ( .D(n54), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[6]) );
  DRNQV1_7TV50 \sfr_rx_reg[5]  ( .D(n55), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[5]) );
  DRNQV1_7TV50 \sfr_rx_reg[4]  ( .D(n56), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[4]) );
  DRNQV1_7TV50 \sfr_rx_reg[3]  ( .D(n57), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[3]) );
  DRNQV1_7TV50 \sfr_rx_reg[2]  ( .D(n58), .CK(n61), .RDN(sys_rstn_i), .Q(
        sfr_rx[2]) );
  PULL1_7TV50 U18 ( .Z(n7) );
  INV1_7TV50 U38 ( .I(n2), .ZN(n43) );
  CLKINV1_7TV50 U40 ( .I(ssn_i), .ZN(n62) );
  NOR2V1_7TV50 U42 ( .A1(rx_valid_d1), .A2(n14), .ZN(n6) );
  NAND2V1_7TV50 U44 ( .A1(slave_mode), .A2(n62), .ZN(n2) );
  CLKINV1_7TV50 U46 ( .I(sfr_rx[4]), .ZN(n26) );
  CLKINV1_7TV50 U48 ( .I(sfr_rx[5]), .ZN(n28) );
  CLKINV1_7TV50 U49 ( .I(sfr_rx[6]), .ZN(n41) );
  CLKINV1_7TV50 U51 ( .I(sfr_rx[1]), .ZN(n21) );
  CLKINV1_7TV50 U52 ( .I(sfr_rx[3]), .ZN(n24) );
  CLKINV1_7TV50 U53 ( .I(sfr_rx[2]), .ZN(n22) );
  CLKINV1_7TV50 U54 ( .I(sfr_rx[0]), .ZN(n15) );
  MUX2V1_7TV50 U55 ( .I0(n8), .I1(n9), .S(N5), .Z(miso_bit) );
  INV1_7TV50 U57 ( .I(n63), .ZN(n61) );
  XNOR2V1_7TV50 U63 ( .A1(cpha), .A2(n18), .ZN(n63) );
  MUX2NV1_7TV50 U64 ( .I0(n10), .I1(n11), .S(N4), .ZN(n9) );
  MUX2NV1_7TV50 U65 ( .I0(sfr_tx[6]), .I1(sfr_tx[7]), .S(N3), .ZN(n11) );
  MUX2NV1_7TV50 U66 ( .I0(sfr_tx[4]), .I1(sfr_tx[5]), .S(N3), .ZN(n10) );
  MUX2NV1_7TV50 U67 ( .I0(n12), .I1(n13), .S(N4), .ZN(n8) );
  MUX2NV1_7TV50 U68 ( .I0(sfr_tx[2]), .I1(sfr_tx[3]), .S(N3), .ZN(n13) );
  MUX2NV1_7TV50 U69 ( .I0(sfr_tx[0]), .I1(sfr_tx[1]), .S(N3), .ZN(n12) );
endmodule


module inout_port_2 ( outline, control, inline, portline );
  input outline, control;
  output inline;
  inout portline;
  wire   n1;
  tri   inline;
  tri   portline;

  TBUFV1_7TV50 inline_tri ( .I(portline), .OE(n1), .Z(inline) );
  TBUFV1_7TV50 portline_tri ( .I(outline), .OE(control), .Z(portline) );
  INV0P7_7TV50 U1 ( .I(control), .ZN(n1) );
endmodule


module inout_port_1 ( outline, control, inline, portline );
  input outline, control;
  output inline;
  inout portline;
  wire   n1;
  tri   outline;
  tri   inline;
  tri   portline;

  TBUFV1_7TV50 inline_tri ( .I(portline), .OE(n1), .Z(inline) );
  TBUFV1_7TV50 portline_tri ( .I(outline), .OE(control), .Z(portline) );
  INV0P7_7TV50 U1 ( .I(control), .ZN(n1) );
endmodule


module inout_port_0 ( outline, control, inline, portline );
  input outline, control;
  output inline;
  inout portline;
  wire   n1;
  tri   inline;
  tri   portline;

  TBUFV1_7TV50 inline_tri ( .I(portline), .OE(n1), .Z(inline) );
  TBUFV1_7TV50 portline_tri ( .I(outline), .OE(control), .Z(portline) );
  INV0P7_7TV50 U1 ( .I(control), .ZN(n1) );
endmodule


module spi_combine ( clk_i, rstn_i, mosi, miso, sck, ssn_i, ssn_o, stb_i, 
        addr_i, we_i, data_i, data_o, ack_o, int_o, tx_valid, tx_data, 
        rx_valid, rx_data );
  output [7:0] ssn_o;
  input [1:0] addr_i;
  input [7:0] data_i;
  output [7:0] data_o;
  input [7:0] tx_data;
  output [7:0] rx_data;
  input clk_i, rstn_i, ssn_i, stb_i, we_i, tx_valid;
  output ack_o, int_o, rx_valid;
  inout mosi,  miso,  sck;
  wire   \*Logic1* , rstn_sync, rstn_temp, master_mode_en, slave_mode_en,
         sck_o, mosi_o, n2, n3, n4, n5, n6, n7, n9, n10, n11, n13, n15, n16,
         n17;
  wire   [7:0] spi_con;
  tri   mosi;
  tri   miso;
  tri   sck;
  tri   miso_i;
  tri   sck_i;
  tri   mosi_i;
  tri   miso_o;

  DRNQV1_7TV50 \spi_con_reg[4]  ( .D(n7), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[4]) );
  DRNQV1_7TV50 \spi_con_reg[3]  ( .D(n6), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[3]) );
  DRNQV1_7TV50 \spi_con_reg[2]  ( .D(n5), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[2]) );
  DRNQV1_7TV50 \spi_con_reg[1]  ( .D(n4), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[1]) );
  DRNQV1_7TV50 \spi_con_reg[0]  ( .D(n3), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[0]) );
  AOI22BBV1_7TV50 U9 ( .B1(n2), .B2(n13), .A1(n2), .A2(data_i[5]), .ZN(n9) );
  AOI22BBV1_7TV50 U11 ( .B1(n2), .B2(n17), .A1(n2), .A2(data_i[7]), .ZN(n11)
         );
  spi_MasterMode spi_MasterMode_u ( .clk_i(clk_i), .rstn_i(rstn_sync), 
        .master_mode(master_mode_en), .stb_i(stb_i), .addr_i(addr_i), .we_i(
        we_i), .data_i(data_i), .spi_con_i(spi_con), .data_o(data_o), .ack_o(
        ack_o), .int_o(int_o), .sck_o(sck_o), .ssn_o_8(ssn_o), .mosi_o(mosi_o), 
        .miso_i(miso_i) );
  spi_SlaveMode spi_SlaveMode_u ( .sck_i(sck_i), .ssn_i(ssn_i), .mosi_i(mosi_i), .miso_o(miso_o), .sys_clk_i(clk_i), .sys_rstn_i(rstn_sync), .slave_mode(
        slave_mode_en), .tx_valid(tx_valid), .tx_data(tx_data), .rx_valid_d1(
        rx_valid), .rx_data(rx_data), .cpol(spi_con[4]), .cpha(spi_con[3]) );
  inout_port_2 mosi_inout_port ( .outline(mosi_o), .control(spi_con[5]), 
        .inline(mosi_i), .portline(mosi) );
  inout_port_1 miso_inout_port ( .outline(miso_o), .control(n13), .inline(
        miso_i), .portline(miso) );
  inout_port_0 sck_inout_port ( .outline(sck_o), .control(spi_con[5]), 
        .inline(sck_i), .portline(sck) );
  DRQV1_7TV50 \spi_con_reg[7]  ( .D(n11), .CK(clk_i), .RD(n15), .Q(spi_con[7])
         );
  DRQV1_7TV50 rstn_temp_reg ( .D(\*Logic1* ), .CK(clk_i), .RD(n16), .Q(
        rstn_temp) );
  DRQV1_7TV50 \spi_con_reg[6]  ( .D(n10), .CK(clk_i), .RD(n15), .Q(spi_con[6])
         );
  MUX2V1_7TV50 U10 ( .I0(data_i[6]), .I1(spi_con[6]), .S(n2), .Z(n10) );
  MUX2V1_7TV50 U4 ( .I0(data_i[0]), .I1(spi_con[0]), .S(n2), .Z(n3) );
  MUX2V1_7TV50 U7 ( .I0(data_i[3]), .I1(spi_con[3]), .S(n2), .Z(n6) );
  MUX2V1_7TV50 U5 ( .I0(data_i[1]), .I1(spi_con[1]), .S(n2), .Z(n4) );
  MUX2V1_7TV50 U8 ( .I0(data_i[4]), .I1(spi_con[4]), .S(n2), .Z(n7) );
  MUX2V1_7TV50 U6 ( .I0(data_i[2]), .I1(spi_con[2]), .S(n2), .Z(n5) );
  NAND4XXBBV1_7TV50 U12 ( .A1(addr_i[1]), .A2(addr_i[0]), .B1(stb_i), .B2(we_i), .ZN(n2) );
  NOR2V1_7TV50 U15 ( .A1(n17), .A2(n13), .ZN(master_mode_en) );
  DSRNQV1_7TV50 \spi_con_reg[5]  ( .D(n9), .CK(clk_i), .RDN(\*Logic1* ), .SDN(
        rstn_sync), .Q(spi_con[5]) );
  DRQV2_7TV50 rstn_sync_reg ( .D(rstn_temp), .CK(clk_i), .RD(n16), .Q(
        rstn_sync) );
  PULL1_7TV50 U19 ( .Z(\*Logic1* ) );
  NOR2V1_7TV50 U20 ( .A1(spi_con[5]), .A2(n17), .ZN(slave_mode_en) );
  INV0P7_7TV50 U21 ( .I(spi_con[5]), .ZN(n13) );
  INV0P7_7TV50 U22 ( .I(spi_con[7]), .ZN(n17) );
  CLKINV1_7TV50 U23 ( .I(rstn_i), .ZN(n16) );
  CLKINV1_7TV50 U24 ( .I(rstn_sync), .ZN(n15) );
endmodule

