/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jan  1 18:08:47 2024
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
         \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] , N47, N49, N50,
         n10, n12, n21, n22, n24, n26, n28, n30, n31, n32, n34, n36, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n11, n13, n14, n15, n16, n17, n18,
         n19, n20, n23, n25, n27, n29, n33, n35, n37, n81, n82, n83, n84;
  wire   [2:0] wr_ptr;

  OAI31V1_7TV50 U46 ( .A1(n25), .A2(clr), .A3(n20), .B(n26), .ZN(n75) );
  OAI32V1_7TV50 U50 ( .A1(n23), .A2(clr), .A3(n28), .B1(clr), .B2(n21), .ZN(
        n76) );
  OAI32V1_7TV50 U53 ( .A1(n19), .A2(wr_en), .A3(clr), .B1(clr), .B2(n24), .ZN(
        n77) );
  OAI32V1_7TV50 U55 ( .A1(n30), .A2(\re_ptr[2] ), .A3(n31), .B1(n32), .B2(n17), 
        .ZN(n78) );
  OAI32V1_7TV50 U58 ( .A1(n30), .A2(N9), .A3(n15), .B1(n36), .B2(n16), .ZN(n79) );
  NAND4BV1_7TV50 U67 ( .A1(n41), .B1(n39), .B2(n40), .B3(n42), .ZN(N49) );
  LAHQV1_7TV50 empty_reg ( .E(N49), .D(N50), .Q(empty) );
  LAHQV1_7TV50 full_reg ( .E(N47), .D(n14), .Q(full) );
  DRQV1_7TV50 \re_ptr_reg[2]  ( .D(n78), .CK(clk), .RD(n3), .Q(\re_ptr[2] ) );
  DRQV1_7TV50 \wr_ptr_reg[2]  ( .D(n75), .CK(clk), .RD(n3), .Q(wr_ptr[2]) );
  DRQV1_7TV50 \mem_reg[1][7]  ( .D(n66), .CK(clk), .RD(n3), .Q(\mem[1][7] ) );
  DRQV1_7TV50 \mem_reg[1][6]  ( .D(n65), .CK(clk), .RD(n3), .Q(\mem[1][6] ) );
  DRQV1_7TV50 \mem_reg[1][5]  ( .D(n64), .CK(clk), .RD(n3), .Q(\mem[1][5] ) );
  DRQV1_7TV50 \mem_reg[1][4]  ( .D(n63), .CK(clk), .RD(n3), .Q(\mem[1][4] ) );
  DRQV1_7TV50 \mem_reg[1][3]  ( .D(n62), .CK(clk), .RD(n3), .Q(\mem[1][3] ) );
  DRQV1_7TV50 \mem_reg[1][2]  ( .D(n61), .CK(clk), .RD(n3), .Q(\mem[1][2] ) );
  DRQV1_7TV50 \mem_reg[1][1]  ( .D(n60), .CK(clk), .RD(n3), .Q(\mem[1][1] ) );
  DRQV1_7TV50 \mem_reg[1][0]  ( .D(n59), .CK(clk), .RD(n3), .Q(\mem[1][0] ) );
  DRQV1_7TV50 \mem_reg[0][7]  ( .D(n74), .CK(clk), .RD(n3), .Q(\mem[0][7] ) );
  DRQV1_7TV50 \mem_reg[0][6]  ( .D(n73), .CK(clk), .RD(n3), .Q(\mem[0][6] ) );
  DRQV1_7TV50 \mem_reg[0][5]  ( .D(n72), .CK(clk), .RD(n3), .Q(\mem[0][5] ) );
  DRQV1_7TV50 \mem_reg[0][4]  ( .D(n71), .CK(clk), .RD(n3), .Q(\mem[0][4] ) );
  DRQV1_7TV50 \mem_reg[0][3]  ( .D(n70), .CK(clk), .RD(n3), .Q(\mem[0][3] ) );
  DRQV1_7TV50 \mem_reg[0][2]  ( .D(n69), .CK(clk), .RD(n3), .Q(\mem[0][2] ) );
  DRQV1_7TV50 \mem_reg[0][1]  ( .D(n68), .CK(clk), .RD(n3), .Q(\mem[0][1] ) );
  DRQV1_7TV50 \mem_reg[0][0]  ( .D(n67), .CK(clk), .RD(n3), .Q(\mem[0][0] ) );
  DRQV1_7TV50 \mem_reg[2][7]  ( .D(n58), .CK(clk), .RD(n3), .Q(\mem[2][7] ) );
  DRQV1_7TV50 \mem_reg[2][6]  ( .D(n57), .CK(clk), .RD(n3), .Q(\mem[2][6] ) );
  DRQV1_7TV50 \mem_reg[2][5]  ( .D(n56), .CK(clk), .RD(n3), .Q(\mem[2][5] ) );
  DRQV1_7TV50 \mem_reg[2][4]  ( .D(n55), .CK(clk), .RD(n3), .Q(\mem[2][4] ) );
  DRQV1_7TV50 \mem_reg[2][3]  ( .D(n54), .CK(clk), .RD(n3), .Q(\mem[2][3] ) );
  DRQV1_7TV50 \mem_reg[2][2]  ( .D(n53), .CK(clk), .RD(n3), .Q(\mem[2][2] ) );
  DRQV1_7TV50 \mem_reg[2][1]  ( .D(n52), .CK(clk), .RD(n3), .Q(\mem[2][1] ) );
  DRQV1_7TV50 \mem_reg[2][0]  ( .D(n51), .CK(clk), .RD(n3), .Q(\mem[2][0] ) );
  DRQV1_7TV50 \mem_reg[3][7]  ( .D(n50), .CK(clk), .RD(n3), .Q(\mem[3][7] ) );
  DRQV1_7TV50 \mem_reg[3][6]  ( .D(n49), .CK(clk), .RD(n3), .Q(\mem[3][6] ) );
  DRQV1_7TV50 \mem_reg[3][5]  ( .D(n48), .CK(clk), .RD(n3), .Q(\mem[3][5] ) );
  DRQV1_7TV50 \mem_reg[3][4]  ( .D(n47), .CK(clk), .RD(n3), .Q(\mem[3][4] ) );
  DRQV1_7TV50 \mem_reg[3][3]  ( .D(n46), .CK(clk), .RD(n3), .Q(\mem[3][3] ) );
  DRQV1_7TV50 \mem_reg[3][2]  ( .D(n45), .CK(clk), .RD(n3), .Q(\mem[3][2] ) );
  DRQV1_7TV50 \mem_reg[3][1]  ( .D(n44), .CK(clk), .RD(n3), .Q(\mem[3][1] ) );
  DRQV1_7TV50 \mem_reg[3][0]  ( .D(n43), .CK(clk), .RD(n3), .Q(\mem[3][0] ) );
  DRQV1_7TV50 \wr_ptr_reg[0]  ( .D(n77), .CK(clk), .RD(n3), .Q(wr_ptr[0]) );
  DRQV1_7TV50 \wr_ptr_reg[1]  ( .D(n76), .CK(clk), .RD(n3), .Q(wr_ptr[1]) );
  DRQV1_7TV50 \re_ptr_reg[1]  ( .D(n79), .CK(clk), .RD(n3), .Q(N9) );
  DRQV1_7TV50 \re_ptr_reg[0]  ( .D(n80), .CK(clk), .RD(n3), .Q(N8) );
  INV1_7TV50 U3 ( .I(n2), .ZN(n3) );
  BUFV1_7TV50 U4 ( .I(rstn), .Z(n2) );
  INV1_7TV50 U5 ( .I(N49), .ZN(n14) );
  NAND4V1_7TV50 U6 ( .A1(n39), .A2(n41), .A3(n42), .A4(n40), .ZN(N47) );
  NAND3V1_7TV50 U7 ( .A1(n2), .A2(n84), .A3(n38), .ZN(N50) );
  NAND3V1_7TV50 U8 ( .A1(n39), .A2(n40), .A3(n41), .ZN(n38) );
  NOR2V1_7TV50 U9 ( .A1(clr), .A2(re_en), .ZN(n34) );
  NAND2V1_7TV50 U10 ( .A1(re_en), .A2(n84), .ZN(n30) );
  OAI22BBV1_7TV50 U11 ( .B1(n1), .B2(n30), .A1(n1), .A2(n34), .ZN(n80) );
  NAND2V1_7TV50 U12 ( .A1(n28), .A2(n23), .ZN(n21) );
  NAND2V1_7TV50 U13 ( .A1(n18), .A2(n23), .ZN(n22) );
  NAND3V1_7TV50 U14 ( .A1(n84), .A2(n25), .A3(n20), .ZN(n26) );
  INV1_7TV50 U15 ( .I(clr), .ZN(n84) );
  INV1_7TV50 U16 ( .I(n24), .ZN(n18) );
  INV1_7TV50 U17 ( .I(n10), .ZN(n20) );
  INV1_7TV50 U18 ( .I(n1), .ZN(n15) );
  XNOR2V1_7TV50 U19 ( .A1(n23), .A2(n16), .ZN(n40) );
  XNOR2V1_7TV50 U20 ( .A1(n25), .A2(n17), .ZN(n41) );
  XNOR2V1_7TV50 U21 ( .A1(n19), .A2(n15), .ZN(n39) );
  NOR2V1_7TV50 U22 ( .A1(clr), .A2(n3), .ZN(n42) );
  AOI21V1_7TV50 U23 ( .A1(n31), .A2(n84), .B(n34), .ZN(n32) );
  NAND2V1_7TV50 U24 ( .A1(N9), .A2(n1), .ZN(n31) );
  AOI21V1_7TV50 U25 ( .A1(n15), .A2(n84), .B(n34), .ZN(n36) );
  MUX2V1_7TV50 U26 ( .I0(\mem[2][7] ), .I1(\mem[3][7] ), .S(n1), .Z(n13) );
  MUX2V1_7TV50 U27 ( .I0(\mem[2][6] ), .I1(\mem[3][6] ), .S(n1), .Z(n11) );
  MUX2V1_7TV50 U28 ( .I0(\mem[2][3] ), .I1(\mem[3][3] ), .S(n1), .Z(n7) );
  MUX2V1_7TV50 U29 ( .I0(\mem[2][2] ), .I1(\mem[3][2] ), .S(n1), .Z(n6) );
  MUX2V1_7TV50 U30 ( .I0(\mem[2][1] ), .I1(\mem[3][1] ), .S(n1), .Z(n5) );
  MUX2V1_7TV50 U31 ( .I0(\mem[2][0] ), .I1(\mem[3][0] ), .S(n1), .Z(n4) );
  BUFV1_7TV50 U32 ( .I(N8), .Z(n1) );
  NAND2V1_7TV50 U33 ( .A1(n18), .A2(wr_ptr[1]), .ZN(n12) );
  INV1_7TV50 U34 ( .I(wr_ptr[1]), .ZN(n23) );
  AND2V1_7TV50 U35 ( .A1(wr_en), .A2(wr_ptr[0]), .Z(n28) );
  NAND2V1_7TV50 U36 ( .A1(wr_ptr[1]), .A2(n28), .ZN(n10) );
  OAI22BBV1_7TV50 U37 ( .B1(n27), .B2(n21), .A1(\mem[1][0] ), .A2(n21), .ZN(
        n59) );
  OAI22BBV1_7TV50 U38 ( .B1(n29), .B2(n21), .A1(\mem[1][1] ), .A2(n21), .ZN(
        n60) );
  OAI22BBV1_7TV50 U39 ( .B1(n33), .B2(n21), .A1(\mem[1][2] ), .A2(n21), .ZN(
        n61) );
  OAI22BBV1_7TV50 U40 ( .B1(n35), .B2(n21), .A1(\mem[1][3] ), .A2(n21), .ZN(
        n62) );
  OAI22BBV1_7TV50 U41 ( .B1(n37), .B2(n21), .A1(\mem[1][4] ), .A2(n21), .ZN(
        n63) );
  OAI22BBV1_7TV50 U42 ( .B1(n81), .B2(n21), .A1(\mem[1][5] ), .A2(n21), .ZN(
        n64) );
  OAI22BBV1_7TV50 U43 ( .B1(n82), .B2(n21), .A1(\mem[1][6] ), .A2(n21), .ZN(
        n65) );
  OAI22BBV1_7TV50 U44 ( .B1(n83), .B2(n21), .A1(\mem[1][7] ), .A2(n21), .ZN(
        n66) );
  OAI22BBV1_7TV50 U45 ( .B1(n27), .B2(n22), .A1(\mem[0][0] ), .A2(n22), .ZN(
        n67) );
  OAI22BBV1_7TV50 U47 ( .B1(n29), .B2(n22), .A1(\mem[0][1] ), .A2(n22), .ZN(
        n68) );
  OAI22BBV1_7TV50 U48 ( .B1(n33), .B2(n22), .A1(\mem[0][2] ), .A2(n22), .ZN(
        n69) );
  OAI22BBV1_7TV50 U49 ( .B1(n35), .B2(n22), .A1(\mem[0][3] ), .A2(n22), .ZN(
        n70) );
  OAI22BBV1_7TV50 U51 ( .B1(n37), .B2(n22), .A1(\mem[0][4] ), .A2(n22), .ZN(
        n71) );
  OAI22BBV1_7TV50 U52 ( .B1(n81), .B2(n22), .A1(\mem[0][5] ), .A2(n22), .ZN(
        n72) );
  OAI22BBV1_7TV50 U54 ( .B1(n82), .B2(n22), .A1(\mem[0][6] ), .A2(n22), .ZN(
        n73) );
  OAI22BBV1_7TV50 U56 ( .B1(n83), .B2(n22), .A1(\mem[0][7] ), .A2(n22), .ZN(
        n74) );
  OAI22BBV1_7TV50 U57 ( .B1(n27), .B2(n12), .A1(\mem[2][0] ), .A2(n12), .ZN(
        n51) );
  OAI22BBV1_7TV50 U59 ( .B1(n29), .B2(n12), .A1(\mem[2][1] ), .A2(n12), .ZN(
        n52) );
  OAI22BBV1_7TV50 U60 ( .B1(n33), .B2(n12), .A1(\mem[2][2] ), .A2(n12), .ZN(
        n53) );
  OAI22BBV1_7TV50 U61 ( .B1(n35), .B2(n12), .A1(\mem[2][3] ), .A2(n12), .ZN(
        n54) );
  OAI22BBV1_7TV50 U62 ( .B1(n37), .B2(n12), .A1(\mem[2][4] ), .A2(n12), .ZN(
        n55) );
  OAI22BBV1_7TV50 U63 ( .B1(n81), .B2(n12), .A1(\mem[2][5] ), .A2(n12), .ZN(
        n56) );
  OAI22BBV1_7TV50 U64 ( .B1(n82), .B2(n12), .A1(\mem[2][6] ), .A2(n12), .ZN(
        n57) );
  OAI22BBV1_7TV50 U65 ( .B1(n83), .B2(n12), .A1(\mem[2][7] ), .A2(n12), .ZN(
        n58) );
  NAND2V1_7TV50 U66 ( .A1(wr_en), .A2(n19), .ZN(n24) );
  INV1_7TV50 U68 ( .I(din[0]), .ZN(n27) );
  INV1_7TV50 U69 ( .I(din[1]), .ZN(n29) );
  INV1_7TV50 U70 ( .I(din[2]), .ZN(n33) );
  INV1_7TV50 U71 ( .I(din[3]), .ZN(n35) );
  INV1_7TV50 U72 ( .I(din[4]), .ZN(n37) );
  INV1_7TV50 U73 ( .I(din[5]), .ZN(n81) );
  INV1_7TV50 U74 ( .I(din[6]), .ZN(n82) );
  INV1_7TV50 U75 ( .I(din[7]), .ZN(n83) );
  INV1_7TV50 U76 ( .I(wr_ptr[2]), .ZN(n25) );
  INV1_7TV50 U77 ( .I(wr_ptr[0]), .ZN(n19) );
  INV1_7TV50 U78 ( .I(N9), .ZN(n16) );
  MUX2V1_7TV50 U79 ( .I0(\mem[2][5] ), .I1(\mem[3][5] ), .S(n1), .Z(n9) );
  MUX2V1_7TV50 U80 ( .I0(\mem[2][4] ), .I1(\mem[3][4] ), .S(n1), .Z(n8) );
  AO22V1_7TV50 U81 ( .A1(n20), .A2(din[0]), .B1(\mem[3][0] ), .B2(n10), .Z(n43) );
  AO22V1_7TV50 U82 ( .A1(n20), .A2(din[1]), .B1(\mem[3][1] ), .B2(n10), .Z(n44) );
  AO22V1_7TV50 U83 ( .A1(n20), .A2(din[2]), .B1(\mem[3][2] ), .B2(n10), .Z(n45) );
  AO22V1_7TV50 U84 ( .A1(n20), .A2(din[3]), .B1(\mem[3][3] ), .B2(n10), .Z(n46) );
  AO22V1_7TV50 U85 ( .A1(n20), .A2(din[4]), .B1(\mem[3][4] ), .B2(n10), .Z(n47) );
  AO22V1_7TV50 U86 ( .A1(n20), .A2(din[5]), .B1(\mem[3][5] ), .B2(n10), .Z(n48) );
  AO22V1_7TV50 U87 ( .A1(n20), .A2(din[6]), .B1(\mem[3][6] ), .B2(n10), .Z(n49) );
  AO22V1_7TV50 U88 ( .A1(n20), .A2(din[7]), .B1(\mem[3][7] ), .B2(n10), .Z(n50) );
  INV1_7TV50 U89 ( .I(\re_ptr[2] ), .ZN(n17) );
  MUX3V1_7TV50 U90 ( .I0(\mem[0][0] ), .I1(\mem[1][0] ), .I2(n4), .S0(n1), 
        .S1(N9), .Z(dout[0]) );
  MUX3V1_7TV50 U91 ( .I0(\mem[0][1] ), .I1(\mem[1][1] ), .I2(n5), .S0(n1), 
        .S1(N9), .Z(dout[1]) );
  MUX3V1_7TV50 U92 ( .I0(\mem[0][2] ), .I1(\mem[1][2] ), .I2(n6), .S0(n1), 
        .S1(N9), .Z(dout[2]) );
  MUX3V1_7TV50 U93 ( .I0(\mem[0][3] ), .I1(\mem[1][3] ), .I2(n7), .S0(n1), 
        .S1(N9), .Z(dout[3]) );
  MUX3V1_7TV50 U94 ( .I0(\mem[0][4] ), .I1(\mem[1][4] ), .I2(n8), .S0(n1), 
        .S1(N9), .Z(dout[4]) );
  MUX3V1_7TV50 U95 ( .I0(\mem[0][5] ), .I1(\mem[1][5] ), .I2(n9), .S0(n1), 
        .S1(N9), .Z(dout[5]) );
  MUX3V1_7TV50 U96 ( .I0(\mem[0][6] ), .I1(\mem[1][6] ), .I2(n11), .S0(n1), 
        .S1(N9), .Z(dout[6]) );
  MUX3V1_7TV50 U97 ( .I0(\mem[0][7] ), .I1(\mem[1][7] ), .I2(n13), .S0(n1), 
        .S1(N9), .Z(dout[7]) );
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
         \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] , N47, N49, N50, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n11, n13, n14, n15, n16, n17, n18,
         n19, n20, n23, n25, n27, n29, n33, n35, n37, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139;
  wire   [2:0] wr_ptr;

  OAI31V1_7TV50 U46 ( .A1(n25), .A2(clr), .A3(n20), .B(n134), .ZN(n90) );
  OAI32V1_7TV50 U50 ( .A1(n23), .A2(clr), .A3(n133), .B1(clr), .B2(n137), .ZN(
        n89) );
  OAI32V1_7TV50 U53 ( .A1(n19), .A2(wr_en), .A3(clr), .B1(clr), .B2(n135), 
        .ZN(n88) );
  OAI32V1_7TV50 U55 ( .A1(n132), .A2(\re_ptr[2] ), .A3(n131), .B1(n130), .B2(
        n17), .ZN(n87) );
  OAI32V1_7TV50 U58 ( .A1(n132), .A2(N9), .A3(n15), .B1(n128), .B2(n16), .ZN(
        n86) );
  NAND4BV1_7TV50 U67 ( .A1(n124), .B1(n126), .B2(n125), .B3(n123), .ZN(N49) );
  LAHQV1_7TV50 full_reg ( .E(N47), .D(n14), .Q(full) );
  LAHQV1_7TV50 empty_reg ( .E(N49), .D(N50), .Q(empty) );
  DRQV1_7TV50 \re_ptr_reg[2]  ( .D(n87), .CK(clk), .RD(n3), .Q(\re_ptr[2] ) );
  DRQV1_7TV50 \wr_ptr_reg[2]  ( .D(n90), .CK(clk), .RD(n3), .Q(wr_ptr[2]) );
  DRQV1_7TV50 \mem_reg[1][7]  ( .D(n99), .CK(clk), .RD(n3), .Q(\mem[1][7] ) );
  DRQV1_7TV50 \mem_reg[1][6]  ( .D(n100), .CK(clk), .RD(n3), .Q(\mem[1][6] )
         );
  DRQV1_7TV50 \mem_reg[1][5]  ( .D(n101), .CK(clk), .RD(n3), .Q(\mem[1][5] )
         );
  DRQV1_7TV50 \mem_reg[1][4]  ( .D(n102), .CK(clk), .RD(n3), .Q(\mem[1][4] )
         );
  DRQV1_7TV50 \mem_reg[1][3]  ( .D(n103), .CK(clk), .RD(n3), .Q(\mem[1][3] )
         );
  DRQV1_7TV50 \mem_reg[1][2]  ( .D(n104), .CK(clk), .RD(n3), .Q(\mem[1][2] )
         );
  DRQV1_7TV50 \mem_reg[1][1]  ( .D(n105), .CK(clk), .RD(n3), .Q(\mem[1][1] )
         );
  DRQV1_7TV50 \mem_reg[1][0]  ( .D(n106), .CK(clk), .RD(n3), .Q(\mem[1][0] )
         );
  DRQV1_7TV50 \mem_reg[0][7]  ( .D(n91), .CK(clk), .RD(n3), .Q(\mem[0][7] ) );
  DRQV1_7TV50 \mem_reg[0][6]  ( .D(n92), .CK(clk), .RD(n3), .Q(\mem[0][6] ) );
  DRQV1_7TV50 \mem_reg[0][5]  ( .D(n93), .CK(clk), .RD(n3), .Q(\mem[0][5] ) );
  DRQV1_7TV50 \mem_reg[0][4]  ( .D(n94), .CK(clk), .RD(n3), .Q(\mem[0][4] ) );
  DRQV1_7TV50 \mem_reg[0][3]  ( .D(n95), .CK(clk), .RD(n3), .Q(\mem[0][3] ) );
  DRQV1_7TV50 \mem_reg[0][2]  ( .D(n96), .CK(clk), .RD(n3), .Q(\mem[0][2] ) );
  DRQV1_7TV50 \mem_reg[0][1]  ( .D(n97), .CK(clk), .RD(n3), .Q(\mem[0][1] ) );
  DRQV1_7TV50 \mem_reg[0][0]  ( .D(n98), .CK(clk), .RD(n3), .Q(\mem[0][0] ) );
  DRQV1_7TV50 \mem_reg[2][7]  ( .D(n107), .CK(clk), .RD(n3), .Q(\mem[2][7] )
         );
  DRQV1_7TV50 \mem_reg[2][6]  ( .D(n108), .CK(clk), .RD(n3), .Q(\mem[2][6] )
         );
  DRQV1_7TV50 \mem_reg[2][5]  ( .D(n109), .CK(clk), .RD(n3), .Q(\mem[2][5] )
         );
  DRQV1_7TV50 \mem_reg[2][4]  ( .D(n110), .CK(clk), .RD(n3), .Q(\mem[2][4] )
         );
  DRQV1_7TV50 \mem_reg[2][3]  ( .D(n111), .CK(clk), .RD(n3), .Q(\mem[2][3] )
         );
  DRQV1_7TV50 \mem_reg[2][2]  ( .D(n112), .CK(clk), .RD(n3), .Q(\mem[2][2] )
         );
  DRQV1_7TV50 \mem_reg[2][1]  ( .D(n113), .CK(clk), .RD(n3), .Q(\mem[2][1] )
         );
  DRQV1_7TV50 \mem_reg[2][0]  ( .D(n114), .CK(clk), .RD(n3), .Q(\mem[2][0] )
         );
  DRQV1_7TV50 \mem_reg[3][7]  ( .D(n115), .CK(clk), .RD(n3), .Q(\mem[3][7] )
         );
  DRQV1_7TV50 \mem_reg[3][6]  ( .D(n116), .CK(clk), .RD(n3), .Q(\mem[3][6] )
         );
  DRQV1_7TV50 \mem_reg[3][5]  ( .D(n117), .CK(clk), .RD(n3), .Q(\mem[3][5] )
         );
  DRQV1_7TV50 \mem_reg[3][4]  ( .D(n118), .CK(clk), .RD(n3), .Q(\mem[3][4] )
         );
  DRQV1_7TV50 \mem_reg[3][3]  ( .D(n119), .CK(clk), .RD(n3), .Q(\mem[3][3] )
         );
  DRQV1_7TV50 \mem_reg[3][2]  ( .D(n120), .CK(clk), .RD(n3), .Q(\mem[3][2] )
         );
  DRQV1_7TV50 \mem_reg[3][1]  ( .D(n121), .CK(clk), .RD(n3), .Q(\mem[3][1] )
         );
  DRQV1_7TV50 \mem_reg[3][0]  ( .D(n122), .CK(clk), .RD(n3), .Q(\mem[3][0] )
         );
  DRQV1_7TV50 \wr_ptr_reg[0]  ( .D(n88), .CK(clk), .RD(n3), .Q(wr_ptr[0]) );
  DRQV1_7TV50 \re_ptr_reg[0]  ( .D(n85), .CK(clk), .RD(n3), .Q(N8) );
  DRQV1_7TV50 \wr_ptr_reg[1]  ( .D(n89), .CK(clk), .RD(n3), .Q(wr_ptr[1]) );
  DRQV1_7TV50 \re_ptr_reg[1]  ( .D(n86), .CK(clk), .RD(n3), .Q(N9) );
  INV1_7TV50 U3 ( .I(n2), .ZN(n3) );
  BUFV1_7TV50 U4 ( .I(rstn), .Z(n2) );
  INV1_7TV50 U5 ( .I(N49), .ZN(n14) );
  INV1_7TV50 U6 ( .I(n135), .ZN(n18) );
  NAND4V1_7TV50 U7 ( .A1(n126), .A2(n124), .A3(n123), .A4(n125), .ZN(N47) );
  NAND3V1_7TV50 U8 ( .A1(n2), .A2(n84), .A3(n127), .ZN(N50) );
  NAND3V1_7TV50 U9 ( .A1(n126), .A2(n125), .A3(n124), .ZN(n127) );
  NAND2V1_7TV50 U10 ( .A1(n133), .A2(n23), .ZN(n137) );
  NAND2V1_7TV50 U11 ( .A1(n18), .A2(n23), .ZN(n136) );
  NAND3V1_7TV50 U12 ( .A1(n84), .A2(n25), .A3(n20), .ZN(n134) );
  INV1_7TV50 U13 ( .I(n139), .ZN(n20) );
  NAND2V1_7TV50 U14 ( .A1(wr_en), .A2(n19), .ZN(n135) );
  INV1_7TV50 U15 ( .I(clr), .ZN(n84) );
  OAI22BBV1_7TV50 U16 ( .B1(n1), .B2(n132), .A1(n1), .A2(n129), .ZN(n85) );
  INV1_7TV50 U17 ( .I(n1), .ZN(n15) );
  XNOR2V1_7TV50 U18 ( .A1(n23), .A2(n16), .ZN(n125) );
  XNOR2V1_7TV50 U19 ( .A1(n25), .A2(n17), .ZN(n124) );
  XNOR2V1_7TV50 U20 ( .A1(n19), .A2(n15), .ZN(n126) );
  NOR2V1_7TV50 U21 ( .A1(clr), .A2(n3), .ZN(n123) );
  NAND2V1_7TV50 U22 ( .A1(n18), .A2(wr_ptr[1]), .ZN(n138) );
  AND2V1_7TV50 U23 ( .A1(wr_en), .A2(wr_ptr[0]), .Z(n133) );
  NAND2V1_7TV50 U24 ( .A1(wr_ptr[1]), .A2(n133), .ZN(n139) );
  OAI22BBV1_7TV50 U25 ( .B1(n83), .B2(n137), .A1(\mem[1][0] ), .A2(n137), .ZN(
        n106) );
  OAI22BBV1_7TV50 U26 ( .B1(n82), .B2(n137), .A1(\mem[1][1] ), .A2(n137), .ZN(
        n105) );
  OAI22BBV1_7TV50 U27 ( .B1(n81), .B2(n137), .A1(\mem[1][2] ), .A2(n137), .ZN(
        n104) );
  OAI22BBV1_7TV50 U28 ( .B1(n37), .B2(n137), .A1(\mem[1][3] ), .A2(n137), .ZN(
        n103) );
  OAI22BBV1_7TV50 U29 ( .B1(n35), .B2(n137), .A1(\mem[1][4] ), .A2(n137), .ZN(
        n102) );
  OAI22BBV1_7TV50 U30 ( .B1(n33), .B2(n137), .A1(\mem[1][5] ), .A2(n137), .ZN(
        n101) );
  OAI22BBV1_7TV50 U31 ( .B1(n29), .B2(n137), .A1(\mem[1][6] ), .A2(n137), .ZN(
        n100) );
  OAI22BBV1_7TV50 U32 ( .B1(n27), .B2(n137), .A1(\mem[1][7] ), .A2(n137), .ZN(
        n99) );
  OAI22BBV1_7TV50 U33 ( .B1(n83), .B2(n136), .A1(\mem[0][0] ), .A2(n136), .ZN(
        n98) );
  OAI22BBV1_7TV50 U34 ( .B1(n82), .B2(n136), .A1(\mem[0][1] ), .A2(n136), .ZN(
        n97) );
  OAI22BBV1_7TV50 U35 ( .B1(n81), .B2(n136), .A1(\mem[0][2] ), .A2(n136), .ZN(
        n96) );
  OAI22BBV1_7TV50 U36 ( .B1(n37), .B2(n136), .A1(\mem[0][3] ), .A2(n136), .ZN(
        n95) );
  OAI22BBV1_7TV50 U37 ( .B1(n35), .B2(n136), .A1(\mem[0][4] ), .A2(n136), .ZN(
        n94) );
  OAI22BBV1_7TV50 U38 ( .B1(n33), .B2(n136), .A1(\mem[0][5] ), .A2(n136), .ZN(
        n93) );
  OAI22BBV1_7TV50 U39 ( .B1(n29), .B2(n136), .A1(\mem[0][6] ), .A2(n136), .ZN(
        n92) );
  OAI22BBV1_7TV50 U40 ( .B1(n27), .B2(n136), .A1(\mem[0][7] ), .A2(n136), .ZN(
        n91) );
  OAI22BBV1_7TV50 U41 ( .B1(n83), .B2(n138), .A1(\mem[2][0] ), .A2(n138), .ZN(
        n114) );
  OAI22BBV1_7TV50 U42 ( .B1(n82), .B2(n138), .A1(\mem[2][1] ), .A2(n138), .ZN(
        n113) );
  OAI22BBV1_7TV50 U43 ( .B1(n81), .B2(n138), .A1(\mem[2][2] ), .A2(n138), .ZN(
        n112) );
  OAI22BBV1_7TV50 U44 ( .B1(n37), .B2(n138), .A1(\mem[2][3] ), .A2(n138), .ZN(
        n111) );
  OAI22BBV1_7TV50 U45 ( .B1(n35), .B2(n138), .A1(\mem[2][4] ), .A2(n138), .ZN(
        n110) );
  OAI22BBV1_7TV50 U47 ( .B1(n33), .B2(n138), .A1(\mem[2][5] ), .A2(n138), .ZN(
        n109) );
  OAI22BBV1_7TV50 U48 ( .B1(n29), .B2(n138), .A1(\mem[2][6] ), .A2(n138), .ZN(
        n108) );
  OAI22BBV1_7TV50 U49 ( .B1(n27), .B2(n138), .A1(\mem[2][7] ), .A2(n138), .ZN(
        n107) );
  AO22V1_7TV50 U51 ( .A1(n20), .A2(din[0]), .B1(\mem[3][0] ), .B2(n139), .Z(
        n122) );
  AO22V1_7TV50 U52 ( .A1(n20), .A2(din[1]), .B1(\mem[3][1] ), .B2(n139), .Z(
        n121) );
  AO22V1_7TV50 U54 ( .A1(n20), .A2(din[2]), .B1(\mem[3][2] ), .B2(n139), .Z(
        n120) );
  AO22V1_7TV50 U56 ( .A1(n20), .A2(din[3]), .B1(\mem[3][3] ), .B2(n139), .Z(
        n119) );
  AO22V1_7TV50 U57 ( .A1(n20), .A2(din[4]), .B1(\mem[3][4] ), .B2(n139), .Z(
        n118) );
  AO22V1_7TV50 U59 ( .A1(n20), .A2(din[5]), .B1(\mem[3][5] ), .B2(n139), .Z(
        n117) );
  AO22V1_7TV50 U60 ( .A1(n20), .A2(din[6]), .B1(\mem[3][6] ), .B2(n139), .Z(
        n116) );
  AO22V1_7TV50 U61 ( .A1(n20), .A2(din[7]), .B1(\mem[3][7] ), .B2(n139), .Z(
        n115) );
  INV1_7TV50 U62 ( .I(din[6]), .ZN(n29) );
  INV1_7TV50 U63 ( .I(din[7]), .ZN(n27) );
  INV1_7TV50 U64 ( .I(din[3]), .ZN(n37) );
  INV1_7TV50 U65 ( .I(din[4]), .ZN(n35) );
  INV1_7TV50 U66 ( .I(din[0]), .ZN(n83) );
  INV1_7TV50 U68 ( .I(din[1]), .ZN(n82) );
  INV1_7TV50 U69 ( .I(din[2]), .ZN(n81) );
  INV1_7TV50 U70 ( .I(din[5]), .ZN(n33) );
  MUX2V1_7TV50 U71 ( .I0(\mem[2][0] ), .I1(\mem[3][0] ), .S(n1), .Z(n4) );
  MUX2V1_7TV50 U72 ( .I0(\mem[2][7] ), .I1(\mem[3][7] ), .S(n1), .Z(n13) );
  MUX2V1_7TV50 U73 ( .I0(\mem[2][6] ), .I1(\mem[3][6] ), .S(n1), .Z(n11) );
  MUX2V1_7TV50 U74 ( .I0(\mem[2][5] ), .I1(\mem[3][5] ), .S(n1), .Z(n9) );
  MUX2V1_7TV50 U75 ( .I0(\mem[2][4] ), .I1(\mem[3][4] ), .S(n1), .Z(n8) );
  MUX2V1_7TV50 U76 ( .I0(\mem[2][3] ), .I1(\mem[3][3] ), .S(n1), .Z(n7) );
  MUX2V1_7TV50 U77 ( .I0(\mem[2][2] ), .I1(\mem[3][2] ), .S(n1), .Z(n6) );
  MUX2V1_7TV50 U78 ( .I0(\mem[2][1] ), .I1(\mem[3][1] ), .S(n1), .Z(n5) );
  AOI21V1_7TV50 U79 ( .A1(n15), .A2(n84), .B(n129), .ZN(n128) );
  AOI21V1_7TV50 U80 ( .A1(n131), .A2(n84), .B(n129), .ZN(n130) );
  NAND2V1_7TV50 U81 ( .A1(N9), .A2(n1), .ZN(n131) );
  INV1_7TV50 U82 ( .I(wr_ptr[1]), .ZN(n23) );
  NOR2V1_7TV50 U83 ( .A1(clr), .A2(re_en), .ZN(n129) );
  NAND2V1_7TV50 U84 ( .A1(re_en), .A2(n84), .ZN(n132) );
  INV1_7TV50 U85 ( .I(wr_ptr[2]), .ZN(n25) );
  INV1_7TV50 U86 ( .I(wr_ptr[0]), .ZN(n19) );
  INV1_7TV50 U87 ( .I(N9), .ZN(n16) );
  BUFV1_7TV50 U88 ( .I(N8), .Z(n1) );
  INV1_7TV50 U89 ( .I(\re_ptr[2] ), .ZN(n17) );
  MUX3V1_7TV50 U90 ( .I0(\mem[0][0] ), .I1(\mem[1][0] ), .I2(n4), .S0(n1), 
        .S1(N9), .Z(dout[0]) );
  MUX3V1_7TV50 U91 ( .I0(\mem[0][1] ), .I1(\mem[1][1] ), .I2(n5), .S0(n1), 
        .S1(N9), .Z(dout[1]) );
  MUX3V1_7TV50 U92 ( .I0(\mem[0][2] ), .I1(\mem[1][2] ), .I2(n6), .S0(n1), 
        .S1(N9), .Z(dout[2]) );
  MUX3V1_7TV50 U93 ( .I0(\mem[0][3] ), .I1(\mem[1][3] ), .I2(n7), .S0(n1), 
        .S1(N9), .Z(dout[3]) );
  MUX3V1_7TV50 U94 ( .I0(\mem[0][4] ), .I1(\mem[1][4] ), .I2(n8), .S0(n1), 
        .S1(N9), .Z(dout[4]) );
  MUX3V1_7TV50 U95 ( .I0(\mem[0][5] ), .I1(\mem[1][5] ), .I2(n9), .S0(n1), 
        .S1(N9), .Z(dout[5]) );
  MUX3V1_7TV50 U96 ( .I0(\mem[0][6] ), .I1(\mem[1][6] ), .I2(n11), .S0(n1), 
        .S1(N9), .Z(dout[6]) );
  MUX3V1_7TV50 U97 ( .I0(\mem[0][7] ), .I1(\mem[1][7] ), .I2(n13), .S0(n1), 
        .S1(N9), .Z(dout[7]) );
endmodule


module BitDistributor8 ( inputs, select, outputs );
  input [2:0] select;
  output [7:0] outputs;
  input inputs;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  XNOR2V1_7TV50 U2 ( .A1(n2), .A2(n3), .ZN(n9) );
  OAI22V1_7TV50 U3 ( .A1(n2), .A2(n3), .B1(n9), .B2(n1), .ZN(n5) );
  NAND3V1_7TV50 U4 ( .A1(n3), .A2(n2), .A3(n7), .ZN(outputs[4]) );
  NAND3V1_7TV50 U5 ( .A1(n5), .A2(n4), .A3(n6), .ZN(outputs[7]) );
  NAND2V1_7TV50 U6 ( .A1(n8), .A2(n3), .ZN(outputs[2]) );
  XNOR2V1_7TV50 U7 ( .A1(select[2]), .A2(n9), .ZN(n6) );
  NOR3V1_7TV50 U8 ( .A1(inputs), .A2(select[2]), .A3(n2), .ZN(n8) );
  INV1_7TV50 U9 ( .I(select[1]), .ZN(n2) );
  NOR2V1_7TV50 U10 ( .A1(n1), .A2(inputs), .ZN(n7) );
  INV1_7TV50 U11 ( .I(select[0]), .ZN(n3) );
  NAND4V1_7TV50 U12 ( .A1(select[0]), .A2(n4), .A3(n2), .A4(n1), .ZN(
        outputs[1]) );
  INV1_7TV50 U13 ( .I(select[2]), .ZN(n1) );
  NAND3V1_7TV50 U14 ( .A1(select[0]), .A2(n2), .A3(n7), .ZN(outputs[5]) );
  NAND3V1_7TV50 U15 ( .A1(select[1]), .A2(n3), .A3(n7), .ZN(outputs[6]) );
  NAND2V1_7TV50 U16 ( .A1(n8), .A2(select[0]), .ZN(outputs[3]) );
  OR3V1_7TV50 U17 ( .A1(n6), .A2(inputs), .A3(n5), .Z(outputs[0]) );
  INV1_7TV50 U18 ( .I(inputs), .ZN(n4) );
endmodule


module spi_MasterMode_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CLKOR2V1_7TV50 U1 ( .A1(A[1]), .A2(A[0]), .Z(n10) );
  INV1_7TV50 U2 ( .I(A[10]), .ZN(n1) );
  AO12V1_7TV50 U3 ( .A1(n2), .A2(A[9]), .B(n3), .Z(SUM[9]) );
  AO21BV1_7TV50 U4 ( .A1(n4), .A2(A[8]), .B(n2), .Z(SUM[8]) );
  AO21BV1_7TV50 U5 ( .A1(n5), .A2(A[7]), .B(n4), .Z(SUM[7]) );
  AO21BV1_7TV50 U6 ( .A1(n6), .A2(A[6]), .B(n5), .Z(SUM[6]) );
  AO21BV1_7TV50 U7 ( .A1(n7), .A2(A[5]), .B(n6), .Z(SUM[5]) );
  AO21BV1_7TV50 U8 ( .A1(n8), .A2(A[4]), .B(n7), .Z(SUM[4]) );
  AO21BV1_7TV50 U9 ( .A1(n9), .A2(A[3]), .B(n8), .Z(SUM[3]) );
  AO21BV1_7TV50 U10 ( .A1(n10), .A2(A[2]), .B(n9), .Z(SUM[2]) );
  AO21BV1_7TV50 U11 ( .A1(A[0]), .A2(A[1]), .B(n10), .Z(SUM[1]) );
  XNOR2V1_7TV50 U12 ( .A1(n11), .A2(A[12]), .ZN(SUM[12]) );
  CLKOR2V1_7TV50 U13 ( .A1(n12), .A2(A[11]), .Z(n11) );
  XNOR2V1_7TV50 U14 ( .A1(n12), .A2(A[11]), .ZN(SUM[11]) );
  OAI21V1_7TV50 U15 ( .A1(n3), .A2(n1), .B(n12), .ZN(SUM[10]) );
  CLKNAND2V1_7TV50 U16 ( .A1(n3), .A2(n1), .ZN(n12) );
  NOR2V1_7TV50 U17 ( .A1(n2), .A2(A[9]), .ZN(n3) );
  CLKOR2V1_7TV50 U18 ( .A1(n4), .A2(A[8]), .Z(n2) );
  CLKOR2V1_7TV50 U19 ( .A1(n5), .A2(A[7]), .Z(n4) );
  CLKOR2V1_7TV50 U20 ( .A1(n6), .A2(A[6]), .Z(n5) );
  CLKOR2V1_7TV50 U21 ( .A1(n7), .A2(A[5]), .Z(n6) );
  CLKOR2V1_7TV50 U22 ( .A1(n8), .A2(A[4]), .Z(n7) );
  CLKOR2V1_7TV50 U23 ( .A1(n9), .A2(A[3]), .Z(n8) );
  CLKOR2V1_7TV50 U24 ( .A1(n10), .A2(A[2]), .Z(n9) );
  CLKINV1_7TV50 U25 ( .I(A[0]), .ZN(SUM[0]) );
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
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N187, wfifo_ren,
         ssn, N207, N229, N237, n1, n2, n5, n7, n8, n9, n10, n11, n12, n14,
         n16, n17, n20, n22, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n50, n52, n54, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67,
         n69, n70, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n85, n86,
         n87, n88, n90, n91, n92, n93, n94, n96, n97, n98, n99, n100, n103,
         n104, n105, n106, n107, n108, n109, n110, n112, n113, n114, n116,
         n117, n118, n119, n120, n121, n122, n123, n125, n126, n127, n129,
         n130, n131, n132, n133, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n186, n187, n188,
         n189, n190, n192, n3, n4, n6, n13, n15, n18, n19, n21, n24, n37, n49,
         n51, n53, n55, n62, n68, n71, n82, n83, n84, n89, n95, n101, n102,
         n111, n115, n124, n128, n134, n135, n136, n185, n191, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207;
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

  DRNQV1_7TV50 \spi_ext_reg[2]  ( .D(n184), .CK(clk_i), .RDN(n19), .Q(
        spi_ext[2]) );
  DRNQV1_7TV50 \spi_ext_reg[1]  ( .D(n183), .CK(clk_i), .RDN(n19), .Q(
        spi_ext[1]) );
  DRNQV1_7TV50 \spi_ext_reg[0]  ( .D(n182), .CK(clk_i), .RDN(n19), .Q(
        spi_ext[0]) );
  DRNQV1_7TV50 ack_o_reg ( .D(n181), .CK(clk_i), .RDN(n19), .Q(ack_o) );
  DRNQV1_7TV50 wfifo_ren_reg ( .D(n180), .CK(clk_i), .RDN(n19), .Q(wfifo_ren)
         );
  DRNQV1_7TV50 wr_col_f_reg ( .D(n179), .CK(clk_i), .RDN(n19), .Q(spi_sta_6)
         );
  DRNQV1_7TV50 \state_reg[0]  ( .D(n178), .CK(clk_i), .RDN(n19), .Q(state[0])
         );
  DRNQV1_7TV50 \clk_cnt_reg[0]  ( .D(n177), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[0]) );
  DRNQV1_7TV50 \clk_cnt_reg[1]  ( .D(n176), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[1]) );
  DRNQV1_7TV50 \clk_cnt_reg[2]  ( .D(n175), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[2]) );
  DRNQV1_7TV50 \clk_cnt_reg[3]  ( .D(n174), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[3]) );
  DRNQV1_7TV50 \clk_cnt_reg[4]  ( .D(n173), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[4]) );
  DRNQV1_7TV50 \clk_cnt_reg[5]  ( .D(n172), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[5]) );
  DRNQV1_7TV50 \clk_cnt_reg[6]  ( .D(n171), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[6]) );
  DRNQV1_7TV50 \clk_cnt_reg[7]  ( .D(n170), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[7]) );
  DRNQV1_7TV50 \clk_cnt_reg[8]  ( .D(n169), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[8]) );
  DRNQV1_7TV50 \clk_cnt_reg[9]  ( .D(n168), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[9]) );
  DRNQV1_7TV50 \clk_cnt_reg[10]  ( .D(n167), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[10]) );
  DRNQV1_7TV50 \clk_cnt_reg[11]  ( .D(n166), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[11]) );
  DRNQV1_7TV50 \clk_cnt_reg[12]  ( .D(n165), .CK(clk_i), .RDN(n19), .Q(
        clk_cnt[12]) );
  DRNQV1_7TV50 \state_reg[1]  ( .D(n164), .CK(clk_i), .RDN(n19), .Q(state[1])
         );
  DRNQV1_7TV50 \bit_cnt_reg[0]  ( .D(n163), .CK(clk_i), .RDN(n19), .Q(
        bit_cnt[0]) );
  DRNQV1_7TV50 \data_buf_reg[0]  ( .D(n161), .CK(clk_i), .RDN(n19), .Q(
        data_buf[0]) );
  DRNQV1_7TV50 \data_buf_reg[1]  ( .D(n160), .CK(clk_i), .RDN(n19), .Q(
        data_buf[1]) );
  DRNQV1_7TV50 \data_buf_reg[2]  ( .D(n159), .CK(clk_i), .RDN(n19), .Q(
        data_buf[2]) );
  DRNQV1_7TV50 \data_buf_reg[3]  ( .D(n158), .CK(clk_i), .RDN(n19), .Q(
        data_buf[3]) );
  DRNQV1_7TV50 \data_buf_reg[4]  ( .D(n157), .CK(clk_i), .RDN(n19), .Q(
        data_buf[4]) );
  DRNQV1_7TV50 \data_buf_reg[5]  ( .D(n156), .CK(clk_i), .RDN(n19), .Q(
        data_buf[5]) );
  DRNQV1_7TV50 \data_buf_reg[6]  ( .D(n155), .CK(clk_i), .RDN(n19), .Q(
        data_buf[6]) );
  DRNQV1_7TV50 \data_buf_reg[7]  ( .D(n154), .CK(clk_i), .RDN(n19), .Q(mosi_o)
         );
  DRNQV1_7TV50 \bit_cnt_reg[2]  ( .D(n153), .CK(clk_i), .RDN(n19), .Q(
        bit_cnt[2]) );
  DRNQV1_7TV50 \bit_cnt_reg[1]  ( .D(n152), .CK(clk_i), .RDN(n19), .Q(
        bit_cnt[1]) );
  DRNQV1_7TV50 sck_o_reg ( .D(n151), .CK(clk_i), .RDN(n19), .Q(sck_o) );
  DRNQV1_7TV50 rfifo_wen_reg ( .D(n150), .CK(clk_i), .RDN(n19), .Q(rfifo_wen)
         );
  DRNQV1_7TV50 \data_o_reg[0]  ( .D(n149), .CK(clk_i), .RDN(n19), .Q(data_o[0]) );
  DRNQV1_7TV50 \data_o_reg[1]  ( .D(n148), .CK(clk_i), .RDN(n19), .Q(data_o[1]) );
  DRNQV1_7TV50 \data_o_reg[2]  ( .D(n147), .CK(clk_i), .RDN(n19), .Q(data_o[2]) );
  DRNQV1_7TV50 \data_o_reg[3]  ( .D(n146), .CK(clk_i), .RDN(n19), .Q(data_o[3]) );
  DRNQV1_7TV50 \data_o_reg[4]  ( .D(n145), .CK(clk_i), .RDN(n19), .Q(data_o[4]) );
  DRNQV1_7TV50 \data_o_reg[5]  ( .D(n144), .CK(clk_i), .RDN(n19), .Q(data_o[5]) );
  DRNQV1_7TV50 \data_o_reg[6]  ( .D(n143), .CK(clk_i), .RDN(n19), .Q(data_o[6]) );
  DRNQV1_7TV50 \trans_cnt_reg[0]  ( .D(n142), .CK(clk_i), .RDN(n19), .Q(
        trans_cnt[0]) );
  DRNQV1_7TV50 \trans_cnt_reg[1]  ( .D(n141), .CK(clk_i), .RDN(n19), .Q(
        trans_cnt[1]) );
  DRNQV1_7TV50 spi_int_f_reg ( .D(n140), .CK(clk_i), .RDN(n19), .Q(spi_sta_7)
         );
  DRNQV1_7TV50 int_o_reg ( .D(n139), .CK(clk_i), .RDN(n19), .Q(int_o) );
  DRNQV1_7TV50 \data_o_reg[7]  ( .D(n138), .CK(clk_i), .RDN(n19), .Q(data_o[7]) );
  AO21BV1_7TV50 U14 ( .A1(n12), .A2(n17), .B(spi_ext[7]), .Z(n16) );
  OAI221V1_7TV50 U17 ( .A1(n20), .A2(n197), .B1(n17), .B2(n84), .C(n22), .ZN(
        n142) );
  AOI22BBV1_7TV50 U51 ( .B1(n194), .B2(n128), .A1(n128), .A2(n45), .ZN(n46) );
  OAI31V1_7TV50 U82 ( .A1(n74), .A2(n4), .A3(n75), .B(n76), .ZN(n73) );
  OAI2XB11V1_7TV50 U83 ( .A2N(n66), .A1(n70), .B(n76), .C(n77), .ZN(n168) );
  OAI2XB11V1_7TV50 U95 ( .A2N(clk_cnt[5]), .A1(n6), .B(n86), .C(n93), .ZN(n172) );
  OAI2XB11V1_7TV50 U100 ( .A2N(clk_cnt[4]), .A1(n6), .B(n98), .C(n99), .ZN(
        n173) );
  CLKOR2V1_7TV50 U106 ( .A1(n107), .A2(n136), .Z(n105) );
  OAI2XB11V1_7TV50 U107 ( .A2N(clk_cnt[3]), .A1(n6), .B(n108), .C(n109), .ZN(
        n174) );
  OAI2XB11V1_7TV50 U121 ( .A2N(clk_cnt[1]), .A1(n6), .B(n118), .C(n119), .ZN(
        n176) );
  AOI22BBV1_7TV50 U124 ( .B1(N87), .B2(n65), .A1(n120), .A2(n117), .ZN(n118)
         );
  OAI221V1_7TV50 U152 ( .A1(n127), .A2(n71), .B1(n61), .B2(n128), .C(n64), 
        .ZN(n178) );
  spi_fifo_DATAWIDTH8_1 read_fifo ( .clk(clk_i), .rstn(n19), .clr(n192), .din(
        {mosi_o, data_buf}), .wr_en(rfifo_wen), .re_en(rfifo_ren), .dout(
        rfifo_dout), .full(spi_sta[1]), .empty(spi_sta[0]) );
  spi_fifo_DATAWIDTH8_0 write_fifo ( .clk(clk_i), .rstn(n19), .clr(n192), 
        .din(data_i), .wr_en(wfifo_wen), .re_en(wfifo_ren), .dout(wfifo_dout), 
        .full(spi_sta[3]), .empty(spi_sta[2]) );
  BitDistributor8 slave_selector ( .inputs(ssn), .select(spi_ext[2:0]), 
        .outputs(ssn_o_8) );
  spi_MasterMode_DW01_dec_0 sub_234 ( .A(clk_cnt), .SUM({N98, N97, N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86}) );
  DRQV1_7TV50 \spi_ext_reg[7]  ( .D(n190), .CK(clk_i), .RD(n21), .Q(spi_ext[7]) );
  DRQV1_7TV50 \spi_ext_reg[6]  ( .D(n189), .CK(clk_i), .RD(n21), .Q(spi_ext[6]) );
  DRQV1_7TV50 \spi_ext_reg[4]  ( .D(n187), .CK(clk_i), .RD(n21), .Q(spi_ext[4]) );
  DRQV1_7TV50 \spi_ext_reg[5]  ( .D(n188), .CK(clk_i), .RD(n21), .Q(spi_ext[5]) );
  DRNQV1_7TV50 \state_reg[2]  ( .D(n162), .CK(clk_i), .RDN(n19), .Q(state[2])
         );
  DSRNQV1_7TV50 ssn_reg ( .D(n137), .CK(clk_i), .RDN(n3), .SDN(rstn_i), .Q(ssn) );
  DSRNQV1_7TV50 \spi_ext_reg[3]  ( .D(n186), .CK(clk_i), .RDN(n3), .SDN(n19), 
        .Q(spi_ext[3]) );
  PULL1_7TV50 U3 ( .Z(n3) );
  INV1_7TV50 U4 ( .I(n21), .ZN(n19) );
  INV1_7TV50 U5 ( .I(n17), .ZN(n200) );
  NOR2V1_7TV50 U6 ( .A1(n134), .A2(n89), .ZN(n78) );
  NOR2XBV1_7TV50 U7 ( .A1(n116), .B1(n117), .ZN(n94) );
  NOR2XBV1_7TV50 U8 ( .A1(n79), .B1(n134), .ZN(n116) );
  NOR2V1_7TV50 U9 ( .A1(n134), .A2(n207), .ZN(n72) );
  INV1_7TV50 U10 ( .I(n90), .ZN(n134) );
  NOR2V1_7TV50 U11 ( .A1(n135), .A2(n136), .ZN(n120) );
  INV1_7TV50 U12 ( .I(n104), .ZN(n136) );
  NAND2V1_7TV50 U13 ( .A1(n78), .A2(n205), .ZN(n76) );
  INV1_7TV50 U15 ( .I(n74), .ZN(n101) );
  BUFV1_7TV50 U16 ( .I(n203), .Z(n15) );
  INV1_7TV50 U18 ( .I(n117), .ZN(n95) );
  BUFV1_7TV50 U19 ( .I(n203), .Z(n18) );
  INV1_7TV50 U20 ( .I(rstn_i), .ZN(n21) );
  NOR2XBV1_7TV50 U21 ( .A1(n36), .B1(n202), .ZN(n9) );
  INV1_7TV50 U22 ( .I(n25), .ZN(n201) );
  NAND2V1_7TV50 U23 ( .A1(n201), .A2(n6), .ZN(n17) );
  NOR2XBV1_7TV50 U24 ( .A1(n35), .B1(n202), .ZN(n5) );
  AOI21V1_7TV50 U25 ( .A1(n196), .A2(n25), .B(n15), .ZN(n20) );
  NOR2V1_7TV50 U26 ( .A1(n15), .A2(n126), .ZN(n90) );
  NOR2XBV1_7TV50 U27 ( .A1(n56), .B1(n13), .ZN(n60) );
  NOR2V1_7TV50 U28 ( .A1(n59), .A2(n48), .ZN(n54) );
  NOR3V1_7TV50 U29 ( .A1(n207), .A2(n206), .A3(n74), .ZN(n91) );
  AOI21V1_7TV50 U30 ( .A1(n39), .A2(n194), .B(n191), .ZN(n127) );
  INV1_7TV50 U31 ( .I(n6), .ZN(n203) );
  NOR2V1_7TV50 U32 ( .A1(n103), .A2(n207), .ZN(n107) );
  NOR2V1_7TV50 U33 ( .A1(n59), .A2(n191), .ZN(n56) );
  AOI21V1_7TV50 U34 ( .A1(n47), .A2(n48), .B(n15), .ZN(n44) );
  NAND2V1_7TV50 U35 ( .A1(n121), .A2(n90), .ZN(n74) );
  MUX2NV1_7TV50 U36 ( .I0(n185), .I1(n83), .S(n13), .ZN(n24) );
  NAND2V1_7TV50 U37 ( .A1(n96), .A2(n90), .ZN(n104) );
  NAND2XBV1_7TV50 U38 ( .A1(n78), .B1(n70), .ZN(n67) );
  OAI211V1_7TV50 U39 ( .A1(n50), .A2(n195), .B(n52), .C(n82), .ZN(n152) );
  NAND3V1_7TV50 U40 ( .A1(n193), .A2(n195), .A3(n56), .ZN(n52) );
  INV1_7TV50 U41 ( .I(n54), .ZN(n82) );
  INV1_7TV50 U42 ( .I(n61), .ZN(n71) );
  INV1_7TV50 U43 ( .I(n47), .ZN(n185) );
  INV1_7TV50 U44 ( .I(n103), .ZN(n135) );
  AO32V1_7TV50 U45 ( .A1(n39), .A2(n40), .A3(n61), .B1(n13), .B2(n71), .Z(n162) );
  AOI21V1_7TV50 U46 ( .A1(n191), .A2(n128), .B(n13), .ZN(n48) );
  INV1_7TV50 U47 ( .I(n4), .ZN(n207) );
  AOI21V1_7TV50 U48 ( .A1(n206), .A2(n207), .B(n204), .ZN(n79) );
  AND2V1_7TV50 U49 ( .A1(n126), .A2(n6), .Z(n65) );
  NOR2V1_7TV50 U50 ( .A1(n106), .A2(n121), .ZN(n117) );
  OAI211V1_7TV50 U52 ( .A1(n128), .A2(n71), .B(n63), .C(n64), .ZN(n164) );
  AO12V1_7TV50 U53 ( .A1(n61), .A2(n13), .B(n191), .Z(n63) );
  NAND3V1_7TV50 U54 ( .A1(n61), .A2(n83), .A3(n13), .ZN(n64) );
  INV1_7TV50 U55 ( .I(n106), .ZN(n89) );
  INV1_7TV50 U56 ( .I(n13), .ZN(n62) );
  NOR2V1_7TV50 U57 ( .A1(n191), .A2(n194), .ZN(n40) );
  NOR2V1_7TV50 U58 ( .A1(n75), .A2(n207), .ZN(n66) );
  INV1_7TV50 U59 ( .I(n75), .ZN(n205) );
  INV1_7TV50 U60 ( .I(n58), .ZN(n194) );
  OAI21V1_7TV50 U61 ( .A1(n6), .A2(n196), .B(n38), .ZN(n150) );
  NAND4V1_7TV50 U62 ( .A1(n185), .A2(n39), .A3(n40), .A4(n6), .ZN(n38) );
  NOR2XBV1_7TV50 U63 ( .A1(n35), .B1(addr_i[0]), .ZN(n10) );
  NOR2XBV1_7TV50 U64 ( .A1(n36), .B1(addr_i[0]), .ZN(n8) );
  NOR2XBV1_7TV50 U65 ( .A1(we_i), .B1(n1), .ZN(wfifo_wen) );
  NAND4V1_7TV50 U66 ( .A1(stb_i), .A2(addr_i[1]), .A3(ack_o), .A4(n202), .ZN(
        n1) );
  NAND4V1_7TV50 U67 ( .A1(addr_i[0]), .A2(we_i), .A3(stb_i), .A4(addr_i[1]), 
        .ZN(n25) );
  NOR2V1_7TV50 U68 ( .A1(we_i), .A2(n1), .ZN(rfifo_ren) );
  OAI22BBV1_7TV50 U69 ( .B1(n200), .B2(n102), .A1(data_i[4]), .A2(n200), .ZN(
        n187) );
  INV1_7TV50 U70 ( .I(addr_i[0]), .ZN(n202) );
  NOR2V1_7TV50 U71 ( .A1(n15), .A2(addr_i[1]), .ZN(n36) );
  NOR2XBV1_7TV50 U72 ( .A1(addr_i[1]), .B1(n15), .ZN(n35) );
  AO221V1_7TV50 U73 ( .A1(spi_ext[7]), .A2(n5), .B1(data_o[7]), .B2(n18), .C(
        n7), .Z(n138) );
  AO222V1_7TV50 U74 ( .A1(n8), .A2(spi_con_i[7]), .B1(spi_sta_7), .B2(n9), 
        .C1(rfifo_dout[7]), .C2(n10), .Z(n7) );
  AO221V1_7TV50 U75 ( .A1(spi_ext[6]), .A2(n5), .B1(data_o[6]), .B2(n15), .C(
        n26), .Z(n143) );
  AO222V1_7TV50 U76 ( .A1(spi_con_i[6]), .A2(n8), .B1(spi_sta_6), .B2(n9), 
        .C1(rfifo_dout[6]), .C2(n10), .Z(n26) );
  AO221V1_7TV50 U77 ( .A1(spi_ext[3]), .A2(n5), .B1(data_o[3]), .B2(n15), .C(
        n31), .Z(n146) );
  AO222V1_7TV50 U78 ( .A1(spi_con_i[3]), .A2(n8), .B1(spi_sta[3]), .B2(n9), 
        .C1(rfifo_dout[3]), .C2(n10), .Z(n31) );
  AO221V1_7TV50 U79 ( .A1(spi_ext[2]), .A2(n5), .B1(data_o[2]), .B2(n18), .C(
        n32), .Z(n147) );
  AO222V1_7TV50 U80 ( .A1(spi_con_i[2]), .A2(n8), .B1(n9), .B2(spi_sta[2]), 
        .C1(rfifo_dout[2]), .C2(n10), .Z(n32) );
  AO221V1_7TV50 U81 ( .A1(spi_ext[1]), .A2(n5), .B1(data_o[1]), .B2(n18), .C(
        n33), .Z(n148) );
  AO222V1_7TV50 U84 ( .A1(spi_con_i[1]), .A2(n8), .B1(spi_sta[1]), .B2(n9), 
        .C1(rfifo_dout[1]), .C2(n10), .Z(n33) );
  AO221V1_7TV50 U85 ( .A1(spi_ext[0]), .A2(n5), .B1(data_o[0]), .B2(n18), .C(
        n34), .Z(n149) );
  AO222V1_7TV50 U86 ( .A1(n4), .A2(n8), .B1(spi_sta[0]), .B2(n9), .C1(
        rfifo_dout[0]), .C2(n10), .Z(n34) );
  NAND4V1_7TV50 U87 ( .A1(rfifo_wen), .A2(n6), .A3(n23), .A4(n197), .ZN(n22)
         );
  OAI21V1_7TV50 U88 ( .A1(n201), .A2(n198), .B(n84), .ZN(n23) );
  INV1_7TV50 U89 ( .I(spi_ext[6]), .ZN(n84) );
  AOI32V1_7TV50 U90 ( .A1(data_i[7]), .A2(n9), .A3(n11), .B1(n12), .B2(n199), 
        .ZN(n140) );
  INV1_7TV50 U91 ( .I(spi_sta_7), .ZN(n199) );
  AND2V1_7TV50 U92 ( .A1(stb_i), .A2(we_i), .Z(n11) );
  OAI22BBV1_7TV50 U93 ( .B1(n200), .B2(n111), .A1(data_i[3]), .A2(n200), .ZN(
        n186) );
  OAI21V1_7TV50 U94 ( .A1(n14), .A2(n198), .B(n16), .ZN(n141) );
  OA12V1_7TV50 U96 ( .A1(n197), .A2(n201), .B(n20), .Z(n14) );
  AO222V1_7TV50 U97 ( .A1(miso_i), .A2(n60), .B1(wfifo_dout[0]), .B2(n54), 
        .C1(data_buf[0]), .C2(n59), .Z(n161) );
  NAND2V1_7TV50 U98 ( .A1(n27), .A2(n28), .ZN(n144) );
  AOI22V1_7TV50 U99 ( .A1(spi_con_i[5]), .A2(n8), .B1(rfifo_dout[5]), .B2(n10), 
        .ZN(n28) );
  AOI22V1_7TV50 U101 ( .A1(spi_ext[5]), .A2(n5), .B1(data_o[5]), .B2(n15), 
        .ZN(n27) );
  NAND2V1_7TV50 U102 ( .A1(n29), .A2(n30), .ZN(n145) );
  AOI22V1_7TV50 U103 ( .A1(spi_con_i[4]), .A2(n8), .B1(rfifo_dout[4]), .B2(n10), .ZN(n30) );
  AOI22V1_7TV50 U104 ( .A1(spi_ext[4]), .A2(n5), .B1(data_o[4]), .B2(n15), 
        .ZN(n29) );
  AO32V1_7TV50 U105 ( .A1(spi_sta[3]), .A2(n6), .A3(wfifo_wen), .B1(spi_sta_6), 
        .B2(n133), .Z(n179) );
  NAND4V1_7TV50 U108 ( .A1(data_i[6]), .A2(n9), .A3(we_i), .A4(stb_i), .ZN(
        n133) );
  AO32V1_7TV50 U109 ( .A1(stb_i), .A2(n115), .A3(n6), .B1(ack_o), .B2(n18), 
        .Z(n181) );
  INV1_7TV50 U110 ( .I(ack_o), .ZN(n115) );
  AO22V1_7TV50 U111 ( .A1(n17), .A2(spi_ext[5]), .B1(data_i[5]), .B2(n200), 
        .Z(n188) );
  AO22V1_7TV50 U112 ( .A1(n17), .A2(spi_ext[7]), .B1(data_i[7]), .B2(n200), 
        .Z(n190) );
  AO22V1_7TV50 U113 ( .A1(n17), .A2(spi_ext[0]), .B1(data_i[0]), .B2(n200), 
        .Z(n182) );
  AO22V1_7TV50 U114 ( .A1(n17), .A2(spi_ext[2]), .B1(data_i[2]), .B2(n200), 
        .Z(n184) );
  AO22V1_7TV50 U115 ( .A1(n17), .A2(spi_ext[1]), .B1(data_i[1]), .B2(n200), 
        .Z(n183) );
  AO22V1_7TV50 U116 ( .A1(n17), .A2(spi_ext[6]), .B1(n200), .B2(data_i[6]), 
        .Z(n189) );
  AO222V1_7TV50 U117 ( .A1(N98), .A2(n65), .B1(n66), .B2(n67), .C1(clk_cnt[12]), .C2(n15), .Z(n165) );
  AO222V1_7TV50 U118 ( .A1(N97), .A2(n65), .B1(n205), .B2(n69), .C1(
        clk_cnt[11]), .C2(n15), .Z(n166) );
  OAI22BBV1_7TV50 U119 ( .B1(n4), .B2(n70), .A1(n95), .A2(n72), .ZN(n69) );
  NAND4V1_7TV50 U120 ( .A1(n90), .A2(spi_ext[5]), .A3(n111), .A4(n102), .ZN(
        n70) );
  NOR2V1_7TV50 U122 ( .A1(state[0]), .A2(n13), .ZN(n39) );
  NOR3V1_7TV50 U123 ( .A1(n207), .A2(spi_con_i[1]), .A3(n70), .ZN(n97) );
  AOI211V1_7TV50 U125 ( .A1(n191), .A2(n39), .B(n192), .C(n185), .ZN(n126) );
  NOR4V1_7TV50 U126 ( .A1(clk_cnt[9]), .A2(clk_cnt[8]), .A3(clk_cnt[7]), .A4(
        clk_cnt[6]), .ZN(n132) );
  NOR3V1_7TV50 U127 ( .A1(n206), .A2(spi_con_i[2]), .A3(n70), .ZN(n92) );
  NAND4V1_7TV50 U128 ( .A1(n129), .A2(n130), .A3(n131), .A4(n132), .ZN(n47) );
  NOR3V1_7TV50 U129 ( .A1(clk_cnt[3]), .A2(clk_cnt[5]), .A3(clk_cnt[4]), .ZN(
        n131) );
  NOR3V1_7TV50 U130 ( .A1(clk_cnt[12]), .A2(clk_cnt[2]), .A3(clk_cnt[1]), .ZN(
        n130) );
  NOR3V1_7TV50 U131 ( .A1(clk_cnt[0]), .A2(clk_cnt[11]), .A3(clk_cnt[10]), 
        .ZN(n129) );
  NAND3V1_7TV50 U132 ( .A1(spi_con_i[1]), .A2(n204), .A3(n90), .ZN(n103) );
  AOI22V1_7TV50 U133 ( .A1(n67), .A2(n96), .B1(spi_con_i[2]), .B2(n97), .ZN(
        n86) );
  AOI21V1_7TV50 U134 ( .A1(state[1]), .A2(bit_cnt[0]), .B(n59), .ZN(n50) );
  AOI211V1_7TV50 U135 ( .A1(n78), .A2(n4), .B(n107), .C(n116), .ZN(n119) );
  INV1_7TV50 U136 ( .I(state[1]), .ZN(n191) );
  AOI211V1_7TV50 U137 ( .A1(N91), .A2(n65), .B(n94), .C(n92), .ZN(n93) );
  AOI211V1_7TV50 U138 ( .A1(n89), .A2(n100), .B(n94), .C(n97), .ZN(n99) );
  AOI22V1_7TV50 U139 ( .A1(n105), .A2(n106), .B1(N90), .B2(n65), .ZN(n98) );
  OAI21V1_7TV50 U140 ( .A1(n4), .A2(n103), .B(n104), .ZN(n100) );
  AOI22V1_7TV50 U141 ( .A1(n107), .A2(n95), .B1(N89), .B2(n65), .ZN(n108) );
  AOI211V1_7TV50 U142 ( .A1(n110), .A2(n72), .B(n94), .C(n136), .ZN(n109) );
  OAI211V1_7TV50 U143 ( .A1(n112), .A2(n134), .B(n113), .C(n114), .ZN(n175) );
  AOI221V1_7TV50 U144 ( .A1(n96), .A2(n95), .B1(n110), .B2(n207), .C(n66), 
        .ZN(n112) );
  AOI222V1_7TV50 U145 ( .A1(clk_cnt[2]), .A2(n15), .B1(N88), .B2(n65), .C1(
        n135), .C2(n106), .ZN(n114) );
  NOR2V1_7TV50 U146 ( .A1(n94), .A2(n91), .ZN(n113) );
  AOI22V1_7TV50 U147 ( .A1(N95), .A2(n65), .B1(clk_cnt[9]), .B2(n15), .ZN(n77)
         );
  AO221V1_7TV50 U148 ( .A1(n57), .A2(bit_cnt[2]), .B1(n58), .B2(n56), .C(n54), 
        .Z(n153) );
  OAI21V1_7TV50 U149 ( .A1(n195), .A2(n191), .B(n50), .ZN(n57) );
  NAND4V1_7TV50 U150 ( .A1(n85), .A2(n86), .A3(n87), .A4(n88), .ZN(n171) );
  AOI22V1_7TV50 U151 ( .A1(N92), .A2(n65), .B1(clk_cnt[6]), .B2(n15), .ZN(n85)
         );
  AOI31V1_7TV50 U153 ( .A1(n205), .A2(n207), .A3(n90), .B(n91), .ZN(n88) );
  AOI22V1_7TV50 U154 ( .A1(n92), .A2(n4), .B1(n79), .B2(n78), .ZN(n87) );
  BUFV1_7TV50 U155 ( .I(master_mode), .Z(n6) );
  AO222V1_7TV50 U156 ( .A1(data_buf[6]), .A2(n60), .B1(wfifo_dout[7]), .B2(n54), .C1(mosi_o), .C2(n59), .Z(n154) );
  AO222V1_7TV50 U157 ( .A1(data_buf[5]), .A2(n60), .B1(wfifo_dout[6]), .B2(n54), .C1(data_buf[6]), .C2(n59), .Z(n155) );
  AO222V1_7TV50 U158 ( .A1(data_buf[4]), .A2(n60), .B1(wfifo_dout[5]), .B2(n54), .C1(data_buf[5]), .C2(n59), .Z(n156) );
  AO222V1_7TV50 U159 ( .A1(data_buf[3]), .A2(n60), .B1(wfifo_dout[4]), .B2(n54), .C1(data_buf[4]), .C2(n59), .Z(n157) );
  AO222V1_7TV50 U160 ( .A1(data_buf[2]), .A2(n60), .B1(wfifo_dout[3]), .B2(n54), .C1(data_buf[3]), .C2(n59), .Z(n158) );
  AO222V1_7TV50 U161 ( .A1(data_buf[1]), .A2(n60), .B1(wfifo_dout[2]), .B2(n54), .C1(data_buf[2]), .C2(n59), .Z(n159) );
  AO222V1_7TV50 U162 ( .A1(data_buf[0]), .A2(n60), .B1(wfifo_dout[1]), .B2(n54), .C1(data_buf[1]), .C2(n59), .Z(n160) );
  NAND3V1_7TV50 U163 ( .A1(n122), .A2(n120), .A3(n123), .ZN(n177) );
  AOI22V1_7TV50 U164 ( .A1(N86), .A2(n65), .B1(clk_cnt[0]), .B2(n15), .ZN(n122) );
  AOI211V1_7TV50 U165 ( .A1(n101), .A2(n4), .B(n78), .C(n116), .ZN(n123) );
  NAND2XBV1_7TV50 U166 ( .A1(n55), .B1(n6), .ZN(n59) );
  MUX2V1_7TV50 U167 ( .I0(n53), .I1(n51), .S(state[0]), .Z(n55) );
  AO221V1_7TV50 U168 ( .A1(n67), .A2(n79), .B1(n18), .B2(clk_cnt[7]), .C(n81), 
        .Z(n170) );
  AO222V1_7TV50 U169 ( .A1(N93), .A2(n65), .B1(n101), .B2(n205), .C1(n136), 
        .C2(n89), .Z(n81) );
  AO221V1_7TV50 U170 ( .A1(N96), .A2(n65), .B1(clk_cnt[10]), .B2(n18), .C(n73), 
        .Z(n167) );
  AO221V1_7TV50 U171 ( .A1(n67), .A2(n79), .B1(n18), .B2(clk_cnt[8]), .C(n80), 
        .Z(n169) );
  AO22V1_7TV50 U172 ( .A1(n72), .A2(spi_con_i[2]), .B1(N94), .B2(n65), .Z(n80)
         );
  AOI31V1_7TV50 U173 ( .A1(n39), .A2(n191), .A3(spi_sta[2]), .B(n124), .ZN(n61) );
  INV1_7TV50 U174 ( .I(n44), .ZN(n124) );
  BUFV1_7TV50 U175 ( .I(state[2]), .Z(n13) );
  NOR3V1_7TV50 U176 ( .A1(n4), .A2(spi_con_i[1]), .A3(n204), .ZN(n96) );
  INV1_7TV50 U177 ( .I(state[0]), .ZN(n128) );
  NOR3V1_7TV50 U178 ( .A1(spi_ext[3]), .A2(spi_ext[5]), .A3(n102), .ZN(n121)
         );
  NOR2V1_7TV50 U179 ( .A1(state[1]), .A2(spi_con_i[3]), .ZN(n45) );
  INV1_7TV50 U180 ( .I(spi_con_i[1]), .ZN(n206) );
  INV1_7TV50 U181 ( .I(spi_con_i[2]), .ZN(n204) );
  NAND2V1_7TV50 U182 ( .A1(n125), .A2(n111), .ZN(n106) );
  XNOR2V1_7TV50 U183 ( .A1(n102), .A2(spi_ext[5]), .ZN(n125) );
  INV1_7TV50 U184 ( .I(spi_ext[4]), .ZN(n102) );
  INV1_7TV50 U185 ( .I(spi_ext[3]), .ZN(n111) );
  AO221V1_7TV50 U186 ( .A1(n193), .A2(n56), .B1(n59), .B2(bit_cnt[0]), .C(n54), 
        .Z(n163) );
  AO32V1_7TV50 U187 ( .A1(n6), .A2(n41), .A3(N229), .B1(n42), .B2(sck_o), .Z(
        n151) );
  OAI21V1_7TV50 U188 ( .A1(n46), .A2(n47), .B(n48), .ZN(n41) );
  OAI21V1_7TV50 U189 ( .A1(n13), .A2(n43), .B(n44), .ZN(n42) );
  AO32V1_7TV50 U190 ( .A1(spi_sta_7), .A2(n6), .A3(spi_con_i[6]), .B1(int_o), 
        .B2(n18), .Z(n139) );
  BUFV1_7TV50 U191 ( .I(spi_con_i[0]), .Z(n4) );
  AO22V1_7TV50 U192 ( .A1(wfifo_ren), .A2(n18), .B1(N237), .B2(n6), .Z(n180)
         );
  MUX2V1_7TV50 U193 ( .I0(n68), .I1(n49), .S(state[0]), .Z(N237) );
  INV1_7TV50 U194 ( .I(n51), .ZN(n68) );
  INV1_7TV50 U195 ( .I(spi_con_i[7]), .ZN(n192) );
  NOR3V1_7TV50 U196 ( .A1(spi_con_i[1]), .A2(spi_con_i[2]), .A3(n106), .ZN(
        n110) );
  NOR3V1_7TV50 U197 ( .A1(bit_cnt[1]), .A2(bit_cnt[2]), .A3(bit_cnt[0]), .ZN(
        n58) );
  AOI22V1_7TV50 U198 ( .A1(n40), .A2(n128), .B1(n45), .B2(state[0]), .ZN(n43)
         );
  NAND2V1_7TV50 U199 ( .A1(spi_con_i[1]), .A2(spi_con_i[2]), .ZN(n75) );
  NAND4V1_7TV50 U200 ( .A1(rfifo_wen), .A2(n6), .A3(n197), .A4(n198), .ZN(n12)
         );
  NOR2V1_7TV50 U201 ( .A1(state[1]), .A2(state[0]), .ZN(n37) );
  INV1_7TV50 U202 ( .I(rfifo_wen), .ZN(n196) );
  INV1_7TV50 U203 ( .I(bit_cnt[1]), .ZN(n195) );
  INV1_7TV50 U204 ( .I(trans_cnt[1]), .ZN(n198) );
  OAI22BBV1_7TV50 U205 ( .B1(n83), .B2(n2), .A1(ssn), .A2(n2), .ZN(n137) );
  NAND3V1_7TV50 U206 ( .A1(n128), .A2(n191), .A3(n6), .ZN(n2) );
  INV1_7TV50 U207 ( .I(trans_cnt[0]), .ZN(n197) );
  INV1_7TV50 U208 ( .I(bit_cnt[0]), .ZN(n193) );
  AO22V1_7TV50 U209 ( .A1(n83), .A2(N187), .B1(spi_sta[2]), .B2(spi_con_i[4]), 
        .Z(N207) );
  INV1_7TV50 U210 ( .I(sck_o), .ZN(N187) );
  INV1_7TV50 U211 ( .I(spi_sta[2]), .ZN(n83) );
  OA21BV1_7TV50 U212 ( .A1(n68), .A2(n191), .B(n24), .Z(n49) );
  MUX3V1_7TV50 U213 ( .I0(N187), .I1(spi_con_i[4]), .I2(N207), .S0(n37), .S1(
        n13), .Z(N229) );
  CLKOR2V1_7TV50 U214 ( .A1(spi_sta[2]), .A2(n62), .Z(n51) );
  OAI22XBV1_7TV50 U215 ( .B2N(n24), .B1(n191), .A1(n83), .A2(n62), .ZN(n53) );
endmodule


module spi_SlaveMode ( sck_i, ssn_i, mosi_i, miso_o, sys_clk_i, sys_rstn_i, 
        slave_mode, tx_valid, tx_data, rx_valid_d1, rx_data, cpol, cpha );
  input [7:0] tx_data;
  output [7:0] rx_data;
  input sck_i, ssn_i, mosi_i, sys_clk_i, sys_rstn_i, slave_mode, tx_valid,
         cpol, cpha;
  output miso_o, rx_valid_d1;
  wire   N3, N4, N5, spi_clk, rx_valid, rx_valid_d0, miso_bit, n4, n5, n8, n18,
         n21, n22, n23, n24, n26, n27, n28, n31, n33, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n48, n50, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n1,
         n2, n3, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19, n20,
         n25, n29, n30, n32, n34, n47;
  wire   [7:0] sfr_rx;
  wire   [2:0] rx_bit_cnt;
  wire   [7:0] sfr_tx;
  wire   [2:0] tx_bit_cnt;
  tri   sck_i;
  tri   mosi_i;
  tri   miso_o;

  DRNQV1_7TV50 rx_valid_reg ( .D(n46), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        rx_valid) );
  DRNQV1_7TV50 rx_valid_d0_reg ( .D(n45), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_valid_d0) );
  DRNQV1_7TV50 rx_valid_d1_reg ( .D(n44), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_valid_d1) );
  DRNQV1_7TV50 \rx_data_reg[0]  ( .D(n43), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[0]) );
  DRNQV1_7TV50 \rx_data_reg[1]  ( .D(n42), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[1]) );
  DRNQV1_7TV50 \rx_data_reg[2]  ( .D(n41), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[2]) );
  DRNQV1_7TV50 \rx_data_reg[3]  ( .D(n40), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[3]) );
  DRNQV1_7TV50 \rx_data_reg[4]  ( .D(n39), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[4]) );
  DRNQV1_7TV50 \rx_data_reg[5]  ( .D(n38), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[5]) );
  DRNQV1_7TV50 \rx_data_reg[6]  ( .D(n37), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[6]) );
  DRNQV1_7TV50 \rx_data_reg[7]  ( .D(n36), .CK(sys_clk_i), .RDN(sys_rstn_i), 
        .Q(rx_data[7]) );
  AO21BV1_7TV50 U27 ( .A1(n18), .A2(rx_bit_cnt[0]), .B(n23), .Z(n52) );
  DQV1_7TV50 \sfr_tx_reg[5]  ( .D(n58), .CK(sys_clk_i), .Q(sfr_tx[5]) );
  DQV1_7TV50 \sfr_tx_reg[4]  ( .D(n57), .CK(sys_clk_i), .Q(sfr_tx[4]) );
  DQV1_7TV50 \sfr_tx_reg[7]  ( .D(n60), .CK(sys_clk_i), .Q(sfr_tx[7]) );
  DQV1_7TV50 \sfr_tx_reg[3]  ( .D(n56), .CK(sys_clk_i), .Q(sfr_tx[3]) );
  DQV1_7TV50 \sfr_tx_reg[1]  ( .D(n54), .CK(sys_clk_i), .Q(sfr_tx[1]) );
  DQV1_7TV50 \sfr_tx_reg[6]  ( .D(n59), .CK(sys_clk_i), .Q(sfr_tx[6]) );
  DQV1_7TV50 \sfr_tx_reg[2]  ( .D(n55), .CK(sys_clk_i), .Q(sfr_tx[2]) );
  DQV1_7TV50 \sfr_tx_reg[0]  ( .D(n53), .CK(sys_clk_i), .Q(sfr_tx[0]) );
  TBUFV1_7TV50 miso_o_tri ( .I(miso_bit), .OE(n47), .Z(miso_o) );
  DSRNQV1_7TV50 \rx_bit_cnt_reg[0]  ( .D(n52), .CK(spi_clk), .RDN(n1), .SDN(
        sys_rstn_i), .Q(rx_bit_cnt[0]) );
  DSRNQV1_7TV50 \tx_bit_cnt_reg[0]  ( .D(n35), .CK(n69), .RDN(n1), .SDN(
        sys_rstn_i), .Q(tx_bit_cnt[0]) );
  DSRNQV1_7TV50 \rx_bit_cnt_reg[1]  ( .D(n50), .CK(spi_clk), .RDN(n1), .SDN(
        sys_rstn_i), .Q(rx_bit_cnt[1]) );
  DSRNQV1_7TV50 \tx_bit_cnt_reg[1]  ( .D(n33), .CK(n69), .RDN(n1), .SDN(
        sys_rstn_i), .Q(tx_bit_cnt[1]) );
  DSRNQV1_7TV50 \tx_bit_cnt_reg[2]  ( .D(n31), .CK(n69), .RDN(n1), .SDN(
        sys_rstn_i), .Q(tx_bit_cnt[2]) );
  DSRNQV1_7TV50 \rx_bit_cnt_reg[2]  ( .D(n48), .CK(spi_clk), .RDN(n1), .SDN(
        sys_rstn_i), .Q(rx_bit_cnt[2]) );
  DRNQV1_7TV50 \sfr_rx_reg[0]  ( .D(n68), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[0]) );
  DRNQV1_7TV50 \sfr_rx_reg[7]  ( .D(n61), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[7]) );
  DRNQV1_7TV50 \sfr_rx_reg[6]  ( .D(n62), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[6]) );
  DRNQV1_7TV50 \sfr_rx_reg[5]  ( .D(n63), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[5]) );
  DRNQV1_7TV50 \sfr_rx_reg[4]  ( .D(n64), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[4]) );
  DRNQV1_7TV50 \sfr_rx_reg[3]  ( .D(n65), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[3]) );
  DRNQV1_7TV50 \sfr_rx_reg[2]  ( .D(n66), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[2]) );
  DRNQV1_7TV50 \sfr_rx_reg[1]  ( .D(n67), .CK(spi_clk), .RDN(sys_rstn_i), .Q(
        sfr_rx[1]) );
  PULL1_7TV50 U3 ( .Z(n1) );
  INV1_7TV50 U4 ( .I(n18), .ZN(n34) );
  INV1_7TV50 U5 ( .I(n24), .ZN(n32) );
  OAI22V1_7TV50 U6 ( .A1(n18), .A2(n20), .B1(n34), .B2(n25), .ZN(n44) );
  OAI22V1_7TV50 U7 ( .A1(n18), .A2(n19), .B1(n34), .B2(n20), .ZN(n45) );
  NAND2V1_7TV50 U8 ( .A1(n34), .A2(n29), .ZN(n5) );
  OAI21V1_7TV50 U9 ( .A1(n34), .A2(n19), .B(n21), .ZN(n46) );
  OAI21V1_7TV50 U10 ( .A1(n34), .A2(n29), .B(n5), .ZN(n35) );
  OAI22V1_7TV50 U11 ( .A1(n18), .A2(n16), .B1(n34), .B2(n17), .ZN(n61) );
  OAI22V1_7TV50 U12 ( .A1(n18), .A2(n15), .B1(n34), .B2(n16), .ZN(n62) );
  OAI22V1_7TV50 U13 ( .A1(n18), .A2(n14), .B1(n34), .B2(n15), .ZN(n63) );
  OAI22V1_7TV50 U14 ( .A1(n18), .A2(n13), .B1(n34), .B2(n14), .ZN(n64) );
  OAI22V1_7TV50 U15 ( .A1(n18), .A2(n12), .B1(n34), .B2(n13), .ZN(n65) );
  OAI22V1_7TV50 U16 ( .A1(n18), .A2(n11), .B1(n34), .B2(n12), .ZN(n66) );
  OAI22V1_7TV50 U17 ( .A1(n18), .A2(n10), .B1(n34), .B2(n11), .ZN(n67) );
  INV1_7TV50 U18 ( .I(spi_clk), .ZN(n69) );
  INV1_7TV50 U19 ( .I(ssn_i), .ZN(n47) );
  XNOR2V1_7TV50 U20 ( .A1(cpha), .A2(n29), .ZN(N3) );
  XNOR2V1_7TV50 U21 ( .A1(n28), .A2(tx_bit_cnt[1]), .ZN(N4) );
  NAND2V1_7TV50 U22 ( .A1(tx_bit_cnt[0]), .A2(cpha), .ZN(n28) );
  NOR2XBV1_7TV50 U23 ( .A1(tx_bit_cnt[1]), .B1(n28), .ZN(n27) );
  XNOR2V1_7TV50 U24 ( .A1(n30), .A2(n27), .ZN(N5) );
  MUX2V1_7TV50 U25 ( .I0(sfr_tx[2]), .I1(sfr_tx[3]), .S(N3), .Z(n7) );
  MUX2V1_7TV50 U26 ( .I0(sfr_tx[0]), .I1(sfr_tx[1]), .S(N3), .Z(n9) );
  MUX2V1_7TV50 U28 ( .I0(sfr_tx[6]), .I1(sfr_tx[7]), .S(N3), .Z(n3) );
  NAND2V1_7TV50 U29 ( .A1(slave_mode), .A2(n47), .ZN(n18) );
  NAND2V1_7TV50 U30 ( .A1(tx_valid), .A2(n34), .ZN(n24) );
  OAI22BBV1_7TV50 U31 ( .B1(n2), .B2(n10), .A1(rx_data[0]), .A2(n2), .ZN(n43)
         );
  OAI22BBV1_7TV50 U32 ( .B1(n2), .B2(n16), .A1(rx_data[6]), .A2(n2), .ZN(n37)
         );
  OAI22BBV1_7TV50 U33 ( .B1(n2), .B2(n15), .A1(rx_data[5]), .A2(n2), .ZN(n38)
         );
  OAI22BBV1_7TV50 U34 ( .B1(n2), .B2(n14), .A1(rx_data[4]), .A2(n2), .ZN(n39)
         );
  OAI22BBV1_7TV50 U35 ( .B1(n2), .B2(n13), .A1(rx_data[3]), .A2(n2), .ZN(n40)
         );
  OAI22BBV1_7TV50 U36 ( .B1(n2), .B2(n12), .A1(rx_data[2]), .A2(n2), .ZN(n41)
         );
  OAI22BBV1_7TV50 U37 ( .B1(n2), .B2(n11), .A1(rx_data[1]), .A2(n2), .ZN(n42)
         );
  OAI22BBV1_7TV50 U38 ( .B1(n2), .B2(n17), .A1(rx_data[7]), .A2(n2), .ZN(n36)
         );
  BUFV1_7TV50 U39 ( .I(n8), .Z(n2) );
  NAND3V1_7TV50 U40 ( .A1(n34), .A2(n25), .A3(rx_valid_d0), .ZN(n8) );
  AO22V1_7TV50 U41 ( .A1(sfr_tx[0]), .A2(n24), .B1(tx_data[0]), .B2(n32), .Z(
        n53) );
  AO22V1_7TV50 U42 ( .A1(sfr_tx[1]), .A2(n24), .B1(tx_data[1]), .B2(n32), .Z(
        n54) );
  AO22V1_7TV50 U43 ( .A1(sfr_tx[2]), .A2(n24), .B1(tx_data[2]), .B2(n32), .Z(
        n55) );
  AO22V1_7TV50 U44 ( .A1(sfr_tx[3]), .A2(n24), .B1(tx_data[3]), .B2(n32), .Z(
        n56) );
  AO22V1_7TV50 U45 ( .A1(sfr_tx[4]), .A2(n24), .B1(tx_data[4]), .B2(n32), .Z(
        n57) );
  AO22V1_7TV50 U46 ( .A1(sfr_tx[5]), .A2(n24), .B1(tx_data[5]), .B2(n32), .Z(
        n58) );
  AO22V1_7TV50 U47 ( .A1(sfr_tx[6]), .A2(n24), .B1(tx_data[6]), .B2(n32), .Z(
        n59) );
  AO22V1_7TV50 U48 ( .A1(sfr_tx[7]), .A2(n24), .B1(tx_data[7]), .B2(n32), .Z(
        n60) );
  NAND2XBV1_7TV50 U49 ( .A1(rx_bit_cnt[0]), .B1(n34), .ZN(n23) );
  XNOR2V1_7TV50 U50 ( .A1(n5), .A2(tx_bit_cnt[1]), .ZN(n33) );
  XNOR2V1_7TV50 U51 ( .A1(n23), .A2(rx_bit_cnt[1]), .ZN(n50) );
  XNOR2V1_7TV50 U52 ( .A1(n30), .A2(n4), .ZN(n31) );
  NOR2V1_7TV50 U53 ( .A1(tx_bit_cnt[1]), .A2(n5), .ZN(n4) );
  INV1_7TV50 U54 ( .I(tx_bit_cnt[0]), .ZN(n29) );
  OR3V1_7TV50 U55 ( .A1(rx_bit_cnt[1]), .A2(rx_bit_cnt[2]), .A3(n23), .Z(n21)
         );
  NAND2V1_7TV50 U56 ( .A1(n21), .A2(n22), .ZN(n48) );
  OAI21V1_7TV50 U57 ( .A1(rx_bit_cnt[1]), .A2(n23), .B(rx_bit_cnt[2]), .ZN(n22) );
  OAI22BBV1_7TV50 U58 ( .B1(n34), .B2(n10), .A1(mosi_i), .A2(n34), .ZN(n68) );
  INV1_7TV50 U59 ( .I(tx_bit_cnt[2]), .ZN(n30) );
  INV1_7TV50 U60 ( .I(sfr_rx[0]), .ZN(n10) );
  INV1_7TV50 U61 ( .I(sfr_rx[6]), .ZN(n16) );
  INV1_7TV50 U62 ( .I(sfr_rx[5]), .ZN(n15) );
  INV1_7TV50 U63 ( .I(sfr_rx[4]), .ZN(n14) );
  INV1_7TV50 U64 ( .I(sfr_rx[3]), .ZN(n13) );
  INV1_7TV50 U65 ( .I(sfr_rx[2]), .ZN(n12) );
  INV1_7TV50 U66 ( .I(sfr_rx[1]), .ZN(n11) );
  INV1_7TV50 U67 ( .I(rx_valid), .ZN(n19) );
  INV1_7TV50 U68 ( .I(sfr_rx[7]), .ZN(n17) );
  INV1_7TV50 U69 ( .I(rx_valid_d1), .ZN(n25) );
  INV1_7TV50 U70 ( .I(rx_valid_d0), .ZN(n20) );
  XNOR2V1_7TV50 U71 ( .A1(cpha), .A2(n26), .ZN(spi_clk) );
  XNOR2V1_7TV50 U72 ( .A1(sck_i), .A2(cpol), .ZN(n26) );
  MUX3V1_7TV50 U73 ( .I0(sfr_tx[4]), .I1(sfr_tx[5]), .I2(n3), .S0(N3), .S1(N4), 
        .Z(n6) );
  MUX3V1_7TV50 U74 ( .I0(n9), .I1(n7), .I2(n6), .S0(N4), .S1(N5), .Z(miso_bit)
         );
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
  INV1_7TV50 U1 ( .I(control), .ZN(n1) );
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
  INV1_7TV50 U1 ( .I(control), .ZN(n1) );
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
  INV1_7TV50 U1 ( .I(control), .ZN(n1) );
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
         sck_o, mosi_o, n2, n4, n5, n6, n7, n8, n10, n11, n12, n14, n16, n17,
         n18, n19;
  wire   [7:0] spi_con;
  tri   mosi;
  tri   miso;
  tri   sck;
  tri   miso_i;
  tri   sck_i;
  tri   mosi_i;
  tri   miso_o;

  DRNQV1_7TV50 \spi_con_reg[4]  ( .D(n8), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[4]) );
  DRNQV1_7TV50 \spi_con_reg[3]  ( .D(n7), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[3]) );
  DRNQV1_7TV50 \spi_con_reg[2]  ( .D(n6), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[2]) );
  DRNQV1_7TV50 \spi_con_reg[1]  ( .D(n5), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[1]) );
  DRNQV1_7TV50 \spi_con_reg[0]  ( .D(n4), .CK(clk_i), .RDN(rstn_sync), .Q(
        spi_con[0]) );
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
  inout_port_1 miso_inout_port ( .outline(miso_o), .control(n14), .inline(
        miso_i), .portline(miso) );
  inout_port_0 sck_inout_port ( .outline(sck_o), .control(spi_con[5]), 
        .inline(sck_i), .portline(sck) );
  DRQV1_7TV50 \spi_con_reg[6]  ( .D(n11), .CK(clk_i), .RD(n16), .Q(spi_con[6])
         );
  DRQV1_7TV50 rstn_sync_reg ( .D(rstn_temp), .CK(clk_i), .RD(n17), .Q(
        rstn_sync) );
  DRQV1_7TV50 \spi_con_reg[7]  ( .D(n12), .CK(clk_i), .RD(n16), .Q(spi_con[7])
         );
  DRQV1_7TV50 rstn_temp_reg ( .D(\*Logic1* ), .CK(clk_i), .RD(n17), .Q(
        rstn_temp) );
  DSRNQV1_7TV50 \spi_con_reg[5]  ( .D(n10), .CK(clk_i), .RDN(\*Logic1* ), 
        .SDN(rstn_sync), .Q(spi_con[5]) );
  PULL1_7TV50 U20 ( .Z(\*Logic1* ) );
  INV1_7TV50 U21 ( .I(n2), .ZN(n18) );
  NOR2V1_7TV50 U22 ( .A1(spi_con[5]), .A2(n19), .ZN(slave_mode_en) );
  INV1_7TV50 U23 ( .I(spi_con[5]), .ZN(n14) );
  NAND4XXBBV1_7TV50 U24 ( .A1(addr_i[1]), .A2(addr_i[0]), .B1(we_i), .B2(stb_i), .ZN(n2) );
  AO22V1_7TV50 U25 ( .A1(n2), .A2(spi_con[5]), .B1(data_i[5]), .B2(n18), .Z(
        n10) );
  AO22V1_7TV50 U26 ( .A1(spi_con[6]), .A2(n2), .B1(data_i[6]), .B2(n18), .Z(
        n11) );
  AO22V1_7TV50 U27 ( .A1(spi_con[7]), .A2(n2), .B1(data_i[7]), .B2(n18), .Z(
        n12) );
  AO22V1_7TV50 U28 ( .A1(spi_con[0]), .A2(n2), .B1(data_i[0]), .B2(n18), .Z(n4) );
  AO22V1_7TV50 U29 ( .A1(spi_con[1]), .A2(n2), .B1(data_i[1]), .B2(n18), .Z(n5) );
  AO22V1_7TV50 U30 ( .A1(spi_con[2]), .A2(n2), .B1(data_i[2]), .B2(n18), .Z(n6) );
  AO22V1_7TV50 U31 ( .A1(spi_con[3]), .A2(n2), .B1(data_i[3]), .B2(n18), .Z(n7) );
  AO22V1_7TV50 U32 ( .A1(spi_con[4]), .A2(n2), .B1(data_i[4]), .B2(n18), .Z(n8) );
  NOR2V1_7TV50 U33 ( .A1(n14), .A2(n19), .ZN(master_mode_en) );
  INV1_7TV50 U34 ( .I(spi_con[7]), .ZN(n19) );
  INV1_7TV50 U35 ( .I(rstn_sync), .ZN(n16) );
  INV1_7TV50 U36 ( .I(rstn_i), .ZN(n17) );
endmodule

