/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Mar  1 16:19:02 2023
/////////////////////////////////////////////////////////////


module CORDIC_TOP ( clka, clkb, reset, start, cordic_mode, in_port0, in_port1, 
        out_port0, out_port1, done );
  input [7:0] in_port0;
  input [7:0] in_port1;
  output [7:0] out_port0;
  output [7:0] out_port1;
  input clka, clkb, reset, start, cordic_mode;
  output done;
  wire   counter_rst, \fsm/n36 , \fsm/n35 , \fsm/n34 , \fsm/n33 , \fsm/n32 ,
         \fsm/n31 , \fsm/n30 , \fsm/n29 , \fsm/n28 , \fsm/n27 , \fsm/n26 ,
         \fsm/n25 , \fsm/n24 , \fsm/n23 , \fsm/n22 , \fsm/n21 , \fsm/n20 ,
         \fsm/n19 , \fsm/n18 , \fsm/n17 , \fsm/n16 , \fsm/n15 , \fsm/n14 ,
         \fsm/n13 , \fsm/n12 , \fsm/N45 , \fsm/N44 , \fsm/N43 , \fsm/state[0] ,
         \fsm/state[1] , \fsm/state[2] , \dp/n187 , \dp/n186 , \dp/n185 ,
         \dp/n184 , \dp/n183 , \dp/n182 , \dp/n181 , \dp/n180 , \dp/n179 ,
         \dp/n178 , \dp/n177 , \dp/n176 , \dp/n175 , \dp/n174 , \dp/n173 ,
         \dp/n172 , \dp/n171 , \dp/n170 , \dp/n169 , \dp/n168 , \dp/n167 ,
         \dp/n166 , \dp/n165 , \dp/n164 , \dp/n163 , \dp/n162 , \dp/n161 ,
         \dp/n160 , \dp/n159 , \dp/n158 , \dp/n157 , \dp/n156 , \dp/n155 ,
         \dp/n154 , \dp/n153 , \dp/n152 , \dp/n151 , \dp/n150 , \dp/n149 ,
         \dp/n148 , \dp/n147 , \dp/n146 , \dp/n145 , \dp/n144 , \dp/n143 ,
         \dp/n142 , \dp/n141 , \dp/n140 , \dp/n139 , \dp/n138 , \dp/n137 ,
         \dp/n136 , \dp/n135 , \dp/n134 , \dp/n133 , \dp/n132 , \dp/n131 ,
         \dp/n130 , \dp/n129 , \dp/n128 , \dp/n127 , \dp/n126 , \dp/n125 ,
         \dp/n124 , \dp/n123 , \dp/n122 , \dp/n121 , \dp/n120 , \dp/n119 ,
         \dp/n118 , \dp/n117 , \dp/n116 , \dp/n115 , \dp/n114 , \dp/n113 ,
         \dp/n112 , \dp/n111 , \dp/n109 , \dp/n108 , \dp/n107 , \dp/n106 ,
         \dp/n105 , \dp/n104 , \dp/n103 , \dp/n102 , \dp/n101 , \dp/n99 ,
         \dp/n98 , \dp/n97 , \dp/n96 , \dp/n95 , \dp/n94 , \dp/n93 , \dp/n92 ,
         \dp/n91 , \dp/N199 , \dp/N198 , \dp/N197 , \dp/N196 , \dp/N195 ,
         \dp/N194 , \dp/N193 , \dp/N192 , \dp/N191 , \dp/N190 , \dp/N189 ,
         \dp/N188 , \dp/N187 , \dp/N186 , \dp/N185 , \dp/N184 , \dp/N175 ,
         \dp/N174 , \dp/N173 , \dp/N172 , \dp/N171 , \dp/N170 , \dp/N169 ,
         \dp/N168 , \dp/N159 , \dp/N158 , \dp/N157 , \dp/N156 , \dp/N155 ,
         \dp/N154 , \dp/N153 , \dp/N152 , \dp/N151 , \dp/N150 , \dp/N149 ,
         \dp/N148 , \dp/N147 , \dp/N146 , \dp/N145 , \dp/N144 , \dp/N143 ,
         \dp/N142 , \dp/N141 , \dp/N140 , \dp/N139 , \dp/N138 , \dp/N137 ,
         \dp/N136 , \dp/N135 , \dp/N134 , \dp/N133 , \dp/N132 , \dp/N131 ,
         \dp/N130 , \dp/N129 , \dp/N128 , \dp/N127 , \dp/N126 , \dp/N125 ,
         \dp/N124 , \dp/N123 , \dp/N122 , \dp/N121 , \dp/N120 , \dp/N116 ,
         \dp/N115 , \dp/N114 , \dp/N113 , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169;
  wire   [3:0] counter;
  wire   [1:0] in_mux_ctl;
  wire   [2:0] \fsm/next_state ;
  wire   [7:0] \dp/x_regb ;
  wire   [7:0] \dp/theta_rega ;
  wire   [7:0] \dp/y_rega ;
  wire   [7:0] \dp/x_rega ;
  wire   [3:0] \dp/next_counter ;
  wire   [7:0] \dp/theta_regb ;
  wire   [2:0] \dp/ROM_VALUE ;
  wire   [8:0] \dp/sub_72/carry ;
  wire   [7:1] \dp/add_73/carry ;
  wire   [8:0] \dp/sub_74/carry ;
  wire   [7:1] \dp/add_77/carry ;
  wire   [8:0] \dp/sub_78/carry ;
  wire   [7:1] \dp/add_79/carry ;

  NAND2X1 \fsm/U41  ( .A(n71), .B(n67), .Y(\fsm/n28 ) );
  NAND2X1 \fsm/U40  ( .A(n26), .B(n69), .Y(\fsm/n25 ) );
  NAND2X1 \fsm/U39  ( .A(start), .B(n25), .Y(\fsm/n29 ) );
  NOR2X1 \fsm/U38  ( .A(\fsm/n28 ), .B(\fsm/n29 ), .Y(\fsm/N43 ) );
  OAI21X1 \fsm/U37  ( .A(\fsm/n27 ), .B(\fsm/state[0] ), .C(n67), .Y(\fsm/n23 ) );
  NOR2X1 \fsm/U36  ( .A(counter[2]), .B(counter[1]), .Y(\fsm/n26 ) );
  NAND3X1 \fsm/U35  ( .A(counter[3]), .B(n126), .C(\fsm/n26 ), .Y(\fsm/n22 )
         );
  NAND3X1 \fsm/U34  ( .A(\fsm/n22 ), .B(n71), .C(\fsm/state[1] ), .Y(\fsm/n24 ) );
  AOI21X1 \fsm/U33  ( .A(\fsm/n23 ), .B(\fsm/n24 ), .C(\fsm/n25 ), .Y(
        \fsm/N44 ) );
  NAND3X1 \fsm/U32  ( .A(n71), .B(n67), .C(n26), .Y(\fsm/n19 ) );
  NAND2X1 \fsm/U31  ( .A(\fsm/state[2] ), .B(\fsm/n22 ), .Y(\fsm/n20 ) );
  NAND3X1 \fsm/U30  ( .A(\fsm/state[0] ), .B(\fsm/state[1] ), .C(n25), .Y(
        \fsm/n21 ) );
  OAI21X1 \fsm/U29  ( .A(\fsm/n19 ), .B(\fsm/n20 ), .C(\fsm/n21 ), .Y(
        \fsm/N45 ) );
  OAI21X1 \fsm/U28  ( .A(\fsm/next_state [1]), .B(\fsm/next_state [0]), .C(
        \fsm/next_state [2]), .Y(\fsm/n12 ) );
  OAI22X1 \fsm/U27  ( .A(n66), .B(n68), .C(\fsm/n12 ), .D(n71), .Y(\fsm/n36 )
         );
  NAND2X1 \fsm/U26  ( .A(n68), .B(n65), .Y(\fsm/n16 ) );
  AOI21X1 \fsm/U25  ( .A(\fsm/n16 ), .B(n69), .C(n70), .Y(\fsm/n35 ) );
  OAI22X1 \fsm/U24  ( .A(n66), .B(n65), .C(\fsm/n12 ), .D(n67), .Y(\fsm/n34 )
         );
  NAND2X1 \fsm/U23  ( .A(counter_rst), .B(n66), .Y(\fsm/n18 ) );
  OAI21X1 \fsm/U22  ( .A(n66), .B(n68), .C(\fsm/n18 ), .Y(\fsm/n33 ) );
  NAND3X1 \fsm/U21  ( .A(\fsm/next_state [2]), .B(\fsm/n16 ), .C(done), .Y(
        \fsm/n17 ) );
  OAI21X1 \fsm/U20  ( .A(\fsm/next_state [2]), .B(\fsm/n16 ), .C(\fsm/n17 ), 
        .Y(\fsm/n32 ) );
  NAND2X1 \fsm/U19  ( .A(\fsm/next_state [1]), .B(n70), .Y(\fsm/n14 ) );
  NAND3X1 \fsm/U18  ( .A(\fsm/next_state [2]), .B(\fsm/n16 ), .C(in_mux_ctl[1]), .Y(\fsm/n15 ) );
  OAI21X1 \fsm/U17  ( .A(n68), .B(\fsm/n14 ), .C(\fsm/n15 ), .Y(\fsm/n31 ) );
  OAI21X1 \fsm/U16  ( .A(n65), .B(n70), .C(n68), .Y(\fsm/n13 ) );
  OAI21X1 \fsm/U15  ( .A(\fsm/n12 ), .B(n60), .C(\fsm/n13 ), .Y(\fsm/n30 ) );
  AND2X2 \fsm/U3  ( .A(start), .B(cordic_mode), .Y(\fsm/n27 ) );
  DFFNEGX1 \fsm/in_mux_ctl_reg[0]  ( .D(\fsm/n30 ), .CLK(clkb), .Q(
        in_mux_ctl[0]) );
  DFFNEGX1 \fsm/in_mux_ctl_reg[1]  ( .D(\fsm/n31 ), .CLK(clkb), .Q(
        in_mux_ctl[1]) );
  DFFNEGX1 \fsm/counter_rst_reg  ( .D(\fsm/n33 ), .CLK(n23), .Q(counter_rst)
         );
  DFFNEGX1 \fsm/counter_hold_reg  ( .D(\fsm/n32 ), .CLK(clkb), .Q(done) );
  DFFNEGX1 \fsm/next_state_reg[1]  ( .D(\fsm/N44 ), .CLK(clka), .Q(
        \fsm/next_state [1]) );
  DFFNEGX1 \fsm/state_reg[1]  ( .D(\fsm/n34 ), .CLK(n22), .Q(\fsm/state[1] )
         );
  DFFNEGX1 \fsm/next_state_reg[0]  ( .D(\fsm/N43 ), .CLK(clka), .Q(
        \fsm/next_state [0]) );
  DFFNEGX1 \fsm/state_reg[2]  ( .D(\fsm/n35 ), .CLK(clkb), .Q(\fsm/state[2] )
         );
  DFFNEGX1 \fsm/next_state_reg[2]  ( .D(\fsm/N45 ), .CLK(clka), .Q(
        \fsm/next_state [2]) );
  DFFNEGX1 \fsm/state_reg[0]  ( .D(\fsm/n36 ), .CLK(clkb), .Q(\fsm/state[0] )
         );
  XOR2X1 \dp/U186  ( .A(done), .B(counter_rst), .Y(\dp/n160 ) );
  NAND3X1 \dp/U185  ( .A(done), .B(n62), .C(\dp/next_counter [0]), .Y(
        \dp/n163 ) );
  OAI21X1 \dp/U184  ( .A(\dp/next_counter [0]), .B(\dp/n160 ), .C(\dp/n163 ), 
        .Y(\dp/N113 ) );
  AOI22X1 \dp/U183  ( .A(n62), .B(done), .C(n127), .D(n64), .Y(\dp/n161 ) );
  NAND3X1 \dp/U182  ( .A(n64), .B(n125), .C(\dp/next_counter [0]), .Y(
        \dp/n162 ) );
  OAI21X1 \dp/U181  ( .A(\dp/n161 ), .B(n125), .C(\dp/n162 ), .Y(\dp/N114 ) );
  OAI21X1 \dp/U180  ( .A(\dp/next_counter [1]), .B(\dp/n160 ), .C(\dp/n161 ), 
        .Y(\dp/n159 ) );
  NAND3X1 \dp/U179  ( .A(n64), .B(\dp/next_counter [0]), .C(
        \dp/next_counter [1]), .Y(\dp/n158 ) );
  OAI22X1 \dp/U178  ( .A(n61), .B(n124), .C(\dp/next_counter [2]), .D(
        \dp/n158 ), .Y(\dp/N115 ) );
  AOI21X1 \dp/U177  ( .A(n64), .B(n124), .C(\dp/n159 ), .Y(\dp/n156 ) );
  NAND3X1 \dp/U176  ( .A(n63), .B(n119), .C(\dp/next_counter [2]), .Y(
        \dp/n157 ) );
  OAI21X1 \dp/U175  ( .A(\dp/n156 ), .B(n119), .C(\dp/n157 ), .Y(\dp/N116 ) );
  OAI22X1 \dp/U174  ( .A(n10), .B(n116), .C(\dp/theta_rega [7]), .D(
        cordic_mode), .Y(\dp/n132 ) );
  AOI22X1 \dp/U173  ( .A(\dp/N168 ), .B(n20), .C(\dp/N128 ), .D(n15), .Y(
        \dp/n155 ) );
  AOI22X1 \dp/U172  ( .A(\dp/N169 ), .B(n20), .C(\dp/N129 ), .D(n15), .Y(
        \dp/n154 ) );
  AOI22X1 \dp/U171  ( .A(\dp/N170 ), .B(n20), .C(\dp/N130 ), .D(n15), .Y(
        \dp/n153 ) );
  AOI22X1 \dp/U170  ( .A(\dp/N171 ), .B(n20), .C(\dp/N131 ), .D(n15), .Y(
        \dp/n152 ) );
  AOI22X1 \dp/U169  ( .A(\dp/N172 ), .B(n19), .C(\dp/N132 ), .D(n15), .Y(
        \dp/n151 ) );
  AOI22X1 \dp/U168  ( .A(\dp/N173 ), .B(n19), .C(\dp/N133 ), .D(n15), .Y(
        \dp/n150 ) );
  AOI22X1 \dp/U167  ( .A(\dp/N174 ), .B(n19), .C(\dp/N134 ), .D(n15), .Y(
        \dp/n149 ) );
  AOI22X1 \dp/U166  ( .A(\dp/N175 ), .B(n19), .C(\dp/N135 ), .D(n15), .Y(
        \dp/n148 ) );
  AOI22X1 \dp/U165  ( .A(\dp/N184 ), .B(n19), .C(\dp/N144 ), .D(n15), .Y(
        \dp/n147 ) );
  AOI22X1 \dp/U164  ( .A(\dp/N185 ), .B(n19), .C(\dp/N145 ), .D(n15), .Y(
        \dp/n146 ) );
  AOI22X1 \dp/U163  ( .A(\dp/N186 ), .B(n19), .C(\dp/N146 ), .D(n15), .Y(
        \dp/n145 ) );
  AOI22X1 \dp/U162  ( .A(\dp/N187 ), .B(n18), .C(\dp/N147 ), .D(n15), .Y(
        \dp/n144 ) );
  AOI22X1 \dp/U161  ( .A(\dp/N188 ), .B(n18), .C(\dp/N148 ), .D(n15), .Y(
        \dp/n143 ) );
  AOI22X1 \dp/U160  ( .A(\dp/N189 ), .B(n18), .C(\dp/N149 ), .D(\dp/n132 ), 
        .Y(\dp/n142 ) );
  AOI22X1 \dp/U159  ( .A(\dp/N190 ), .B(n18), .C(\dp/N150 ), .D(\dp/n132 ), 
        .Y(\dp/n141 ) );
  AOI22X1 \dp/U158  ( .A(\dp/N191 ), .B(n18), .C(\dp/N151 ), .D(\dp/n132 ), 
        .Y(\dp/n140 ) );
  AOI22X1 \dp/U157  ( .A(\dp/N192 ), .B(n18), .C(\dp/N152 ), .D(\dp/n132 ), 
        .Y(\dp/n139 ) );
  AOI22X1 \dp/U156  ( .A(\dp/N193 ), .B(n18), .C(\dp/N153 ), .D(\dp/n132 ), 
        .Y(\dp/n138 ) );
  AOI22X1 \dp/U155  ( .A(\dp/N194 ), .B(n17), .C(\dp/N154 ), .D(\dp/n132 ), 
        .Y(\dp/n137 ) );
  AOI22X1 \dp/U154  ( .A(\dp/N195 ), .B(n17), .C(\dp/N155 ), .D(\dp/n132 ), 
        .Y(\dp/n136 ) );
  AOI22X1 \dp/U153  ( .A(\dp/N196 ), .B(n17), .C(\dp/N156 ), .D(\dp/n132 ), 
        .Y(\dp/n135 ) );
  AOI22X1 \dp/U152  ( .A(\dp/N197 ), .B(n16), .C(\dp/N157 ), .D(\dp/n132 ), 
        .Y(\dp/n134 ) );
  AOI22X1 \dp/U151  ( .A(\dp/N198 ), .B(n16), .C(\dp/N158 ), .D(\dp/n132 ), 
        .Y(\dp/n133 ) );
  AOI22X1 \dp/U150  ( .A(\dp/N199 ), .B(n16), .C(\dp/N159 ), .D(\dp/n132 ), 
        .Y(\dp/n131 ) );
  OAI21X1 \dp/U149  ( .A(counter[2]), .B(counter[1]), .C(n126), .Y(\dp/n130 )
         );
  OAI21X1 \dp/U148  ( .A(counter[1]), .B(counter[0]), .C(n11), .Y(\dp/n129 )
         );
  NAND2X1 \dp/U146  ( .A(in_mux_ctl[1]), .B(n60), .Y(\dp/n111 ) );
  NOR2X1 \dp/U144  ( .A(\dp/n121 ), .B(n60), .Y(\dp/n109 ) );
  AOI22X1 \dp/U142  ( .A(\dp/theta_regb [0]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[0]), .Y(\dp/n128 ) );
  OAI21X1 \dp/U141  ( .A(n14), .B(n118), .C(\dp/n128 ), .Y(\dp/n187 ) );
  AOI22X1 \dp/U140  ( .A(\dp/theta_regb [1]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[1]), .Y(\dp/n127 ) );
  OAI21X1 \dp/U139  ( .A(n14), .B(n76), .C(\dp/n127 ), .Y(\dp/n186 ) );
  AOI22X1 \dp/U138  ( .A(\dp/theta_regb [2]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[2]), .Y(\dp/n126 ) );
  OAI21X1 \dp/U137  ( .A(n14), .B(n75), .C(\dp/n126 ), .Y(\dp/n185 ) );
  AOI22X1 \dp/U136  ( .A(\dp/theta_regb [3]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[3]), .Y(\dp/n125 ) );
  OAI21X1 \dp/U135  ( .A(n14), .B(n74), .C(\dp/n125 ), .Y(\dp/n184 ) );
  AOI22X1 \dp/U134  ( .A(\dp/theta_regb [4]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[4]), .Y(\dp/n124 ) );
  OAI21X1 \dp/U133  ( .A(n14), .B(n73), .C(\dp/n124 ), .Y(\dp/n183 ) );
  AOI22X1 \dp/U132  ( .A(\dp/theta_regb [5]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[5]), .Y(\dp/n123 ) );
  OAI21X1 \dp/U131  ( .A(n14), .B(n72), .C(\dp/n123 ), .Y(\dp/n182 ) );
  AOI22X1 \dp/U130  ( .A(\dp/theta_regb [6]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[6]), .Y(\dp/n122 ) );
  OAI21X1 \dp/U129  ( .A(n14), .B(n77), .C(\dp/n122 ), .Y(\dp/n181 ) );
  AOI22X1 \dp/U128  ( .A(\dp/theta_regb [7]), .B(\dp/n121 ), .C(n12), .D(
        in_port0[7]), .Y(\dp/n120 ) );
  OAI21X1 \dp/U127  ( .A(n14), .B(n117), .C(\dp/n120 ), .Y(\dp/n180 ) );
  AOI22X1 \dp/U126  ( .A(in_port1[0]), .B(n59), .C(out_port1[0]), .D(n13), .Y(
        \dp/n119 ) );
  OAI21X1 \dp/U125  ( .A(n14), .B(n110), .C(\dp/n119 ), .Y(\dp/n179 ) );
  AOI22X1 \dp/U124  ( .A(in_port1[1]), .B(n59), .C(out_port1[1]), .D(n13), .Y(
        \dp/n118 ) );
  OAI21X1 \dp/U123  ( .A(n14), .B(n109), .C(\dp/n118 ), .Y(\dp/n178 ) );
  AOI22X1 \dp/U122  ( .A(in_port1[2]), .B(n59), .C(out_port1[2]), .D(n13), .Y(
        \dp/n117 ) );
  OAI21X1 \dp/U121  ( .A(n14), .B(n108), .C(\dp/n117 ), .Y(\dp/n177 ) );
  AOI22X1 \dp/U120  ( .A(in_port1[3]), .B(n59), .C(out_port1[3]), .D(n13), .Y(
        \dp/n116 ) );
  OAI21X1 \dp/U119  ( .A(n14), .B(n107), .C(\dp/n116 ), .Y(\dp/n176 ) );
  AOI22X1 \dp/U118  ( .A(in_port1[4]), .B(n59), .C(out_port1[4]), .D(n13), .Y(
        \dp/n115 ) );
  OAI21X1 \dp/U117  ( .A(n14), .B(n106), .C(\dp/n115 ), .Y(\dp/n175 ) );
  AOI22X1 \dp/U116  ( .A(in_port1[5]), .B(n59), .C(out_port1[5]), .D(n13), .Y(
        \dp/n114 ) );
  OAI21X1 \dp/U115  ( .A(n14), .B(n105), .C(\dp/n114 ), .Y(\dp/n174 ) );
  AOI22X1 \dp/U114  ( .A(in_port1[6]), .B(n59), .C(out_port1[6]), .D(n13), .Y(
        \dp/n113 ) );
  OAI21X1 \dp/U113  ( .A(n14), .B(n113), .C(\dp/n113 ), .Y(\dp/n173 ) );
  AOI22X1 \dp/U112  ( .A(in_port1[7]), .B(n59), .C(out_port1[7]), .D(n13), .Y(
        \dp/n112 ) );
  OAI21X1 \dp/U111  ( .A(n14), .B(n116), .C(\dp/n112 ), .Y(\dp/n172 ) );
  NAND3X1 \dp/U110  ( .A(n14), .B(\dp/n111 ), .C(\dp/x_regb [0]), .Y(\dp/n107 ) );
  AOI22X1 \dp/U109  ( .A(in_port0[0]), .B(n59), .C(\dp/x_rega [0]), .D(
        \dp/n109 ), .Y(\dp/n108 ) );
  NAND3X1 \dp/U108  ( .A(\dp/n107 ), .B(n1), .C(\dp/n108 ), .Y(\dp/n171 ) );
  AOI22X1 \dp/U107  ( .A(in_port0[1]), .B(n59), .C(n13), .D(\dp/x_regb [1]), 
        .Y(\dp/n106 ) );
  OAI21X1 \dp/U106  ( .A(n14), .B(n93), .C(\dp/n106 ), .Y(\dp/n170 ) );
  AOI22X1 \dp/U105  ( .A(in_port0[2]), .B(n59), .C(n13), .D(\dp/x_regb [2]), 
        .Y(\dp/n105 ) );
  OAI21X1 \dp/U104  ( .A(n14), .B(n92), .C(\dp/n105 ), .Y(\dp/n169 ) );
  AOI22X1 \dp/U103  ( .A(in_port0[3]), .B(n59), .C(n13), .D(\dp/x_regb [3]), 
        .Y(\dp/n104 ) );
  OAI21X1 \dp/U102  ( .A(n14), .B(n91), .C(\dp/n104 ), .Y(\dp/n168 ) );
  AOI22X1 \dp/U101  ( .A(in_port0[4]), .B(n59), .C(n13), .D(\dp/x_regb [4]), 
        .Y(\dp/n103 ) );
  OAI21X1 \dp/U100  ( .A(n14), .B(n90), .C(\dp/n103 ), .Y(\dp/n167 ) );
  AOI22X1 \dp/U99  ( .A(in_port0[5]), .B(n59), .C(n13), .D(\dp/x_regb [5]), 
        .Y(\dp/n102 ) );
  OAI21X1 \dp/U98  ( .A(n14), .B(n89), .C(\dp/n102 ), .Y(\dp/n166 ) );
  AOI22X1 \dp/U97  ( .A(in_port0[6]), .B(n59), .C(n13), .D(\dp/x_regb [6]), 
        .Y(\dp/n101 ) );
  OAI21X1 \dp/U96  ( .A(n14), .B(n88), .C(\dp/n101 ), .Y(\dp/n165 ) );
  AOI22X1 \dp/U95  ( .A(in_port0[7]), .B(n59), .C(n13), .D(\dp/x_regb [7]), 
        .Y(\dp/n99 ) );
  OAI21X1 \dp/U94  ( .A(n14), .B(n96), .C(\dp/n99 ), .Y(\dp/n164 ) );
  AOI22X1 \dp/U93  ( .A(cordic_mode), .B(\dp/theta_regb [0]), .C(n10), .D(
        \dp/x_regb [0]), .Y(\dp/n98 ) );
  AOI22X1 \dp/U92  ( .A(cordic_mode), .B(\dp/theta_regb [1]), .C(n10), .D(
        \dp/x_regb [1]), .Y(\dp/n97 ) );
  AOI22X1 \dp/U91  ( .A(cordic_mode), .B(\dp/theta_regb [2]), .C(n10), .D(
        \dp/x_regb [2]), .Y(\dp/n96 ) );
  AOI22X1 \dp/U90  ( .A(cordic_mode), .B(\dp/theta_regb [3]), .C(n10), .D(
        \dp/x_regb [3]), .Y(\dp/n95 ) );
  AOI22X1 \dp/U89  ( .A(cordic_mode), .B(\dp/theta_regb [4]), .C(n10), .D(
        \dp/x_regb [4]), .Y(\dp/n94 ) );
  AOI22X1 \dp/U88  ( .A(cordic_mode), .B(\dp/theta_regb [5]), .C(n10), .D(
        \dp/x_regb [5]), .Y(\dp/n93 ) );
  AOI22X1 \dp/U87  ( .A(cordic_mode), .B(\dp/theta_regb [6]), .C(n10), .D(
        \dp/x_regb [6]), .Y(\dp/n92 ) );
  AOI22X1 \dp/U86  ( .A(cordic_mode), .B(\dp/theta_regb [7]), .C(n10), .D(
        \dp/x_regb [7]), .Y(\dp/n91 ) );
  AND2X2 \dp/U5  ( .A(\dp/n130 ), .B(n123), .Y(\dp/ROM_VALUE [0]) );
  AND2X2 \dp/U4  ( .A(n123), .B(counter[1]), .Y(\dp/ROM_VALUE [1]) );
  AND2X2 \dp/U3  ( .A(\dp/n129 ), .B(n123), .Y(\dp/ROM_VALUE [2]) );
  DFFNEGX1 \dp/theta_rega_reg[5]  ( .D(\dp/n182 ), .CLK(clka), .Q(
        \dp/theta_rega [5]) );
  DFFNEGX1 \dp/theta_regb_reg[5]  ( .D(n48), .CLK(clkb), .Q(\dp/theta_regb [5]) );
  DFFNEGX1 \dp/theta_rega_reg[4]  ( .D(\dp/n183 ), .CLK(clka), .Q(
        \dp/theta_rega [4]) );
  DFFNEGX1 \dp/theta_regb_reg[4]  ( .D(n47), .CLK(clkb), .Q(\dp/theta_regb [4]) );
  DFFNEGX1 \dp/theta_rega_reg[3]  ( .D(\dp/n184 ), .CLK(clka), .Q(
        \dp/theta_rega [3]) );
  DFFNEGX1 \dp/theta_regb_reg[3]  ( .D(n46), .CLK(n23), .Q(\dp/theta_regb [3])
         );
  DFFNEGX1 \dp/theta_rega_reg[2]  ( .D(\dp/n185 ), .CLK(clka), .Q(
        \dp/theta_rega [2]) );
  DFFNEGX1 \dp/theta_regb_reg[2]  ( .D(n45), .CLK(n23), .Q(\dp/theta_regb [2])
         );
  DFFNEGX1 \dp/theta_rega_reg[1]  ( .D(\dp/n186 ), .CLK(clka), .Q(
        \dp/theta_rega [1]) );
  DFFNEGX1 \dp/theta_regb_reg[1]  ( .D(n44), .CLK(n23), .Q(\dp/theta_regb [1])
         );
  DFFNEGX1 \dp/theta_rega_reg[6]  ( .D(\dp/n181 ), .CLK(clka), .Q(
        \dp/theta_rega [6]) );
  DFFNEGX1 \dp/theta_regb_reg[6]  ( .D(n49), .CLK(n23), .Q(\dp/theta_regb [6])
         );
  DFFNEGX1 \dp/x_rega_reg[6]  ( .D(\dp/n165 ), .CLK(clka), .Q(\dp/x_rega [6])
         );
  DFFNEGX1 \dp/x_regb_reg[6]  ( .D(n33), .CLK(n23), .Q(\dp/x_regb [6]) );
  DFFNEGX1 \dp/x_rega_reg[5]  ( .D(\dp/n166 ), .CLK(clka), .Q(\dp/x_rega [5])
         );
  DFFNEGX1 \dp/x_regb_reg[5]  ( .D(n32), .CLK(n23), .Q(\dp/x_regb [5]) );
  DFFNEGX1 \dp/x_rega_reg[4]  ( .D(\dp/n167 ), .CLK(clka), .Q(\dp/x_rega [4])
         );
  DFFNEGX1 \dp/x_regb_reg[4]  ( .D(n31), .CLK(n23), .Q(\dp/x_regb [4]) );
  DFFNEGX1 \dp/x_rega_reg[3]  ( .D(\dp/n168 ), .CLK(clka), .Q(\dp/x_rega [3])
         );
  DFFNEGX1 \dp/x_regb_reg[3]  ( .D(n30), .CLK(n23), .Q(\dp/x_regb [3]) );
  DFFNEGX1 \dp/x_rega_reg[2]  ( .D(\dp/n169 ), .CLK(clka), .Q(\dp/x_rega [2])
         );
  DFFNEGX1 \dp/x_regb_reg[2]  ( .D(n29), .CLK(n23), .Q(\dp/x_regb [2]) );
  DFFNEGX1 \dp/x_rega_reg[1]  ( .D(\dp/n170 ), .CLK(clka), .Q(\dp/x_rega [1])
         );
  DFFNEGX1 \dp/x_regb_reg[1]  ( .D(n28), .CLK(n23), .Q(\dp/x_regb [1]) );
  DFFNEGX1 \dp/x_rega_reg[0]  ( .D(\dp/n171 ), .CLK(clka), .Q(\dp/x_rega [0])
         );
  DFFNEGX1 \dp/x_regb_reg[0]  ( .D(n27), .CLK(n23), .Q(\dp/x_regb [0]) );
  DFFNEGX1 \dp/x_rega_reg[7]  ( .D(\dp/n164 ), .CLK(clka), .Q(\dp/x_rega [7])
         );
  DFFNEGX1 \dp/x_regb_reg[7]  ( .D(n34), .CLK(n23), .Q(\dp/x_regb [7]) );
  DFFNEGX1 \dp/y_rega_reg[5]  ( .D(\dp/n174 ), .CLK(clka), .Q(\dp/y_rega [5])
         );
  DFFNEGX1 \dp/y_regb_reg[5]  ( .D(n40), .CLK(n23), .Q(out_port1[5]) );
  DFFNEGX1 \dp/y_rega_reg[4]  ( .D(\dp/n175 ), .CLK(clka), .Q(\dp/y_rega [4])
         );
  DFFNEGX1 \dp/y_regb_reg[4]  ( .D(n39), .CLK(n22), .Q(out_port1[4]) );
  DFFNEGX1 \dp/y_rega_reg[3]  ( .D(\dp/n176 ), .CLK(clka), .Q(\dp/y_rega [3])
         );
  DFFNEGX1 \dp/y_regb_reg[3]  ( .D(n38), .CLK(n22), .Q(out_port1[3]) );
  DFFNEGX1 \dp/y_rega_reg[2]  ( .D(\dp/n177 ), .CLK(clka), .Q(\dp/y_rega [2])
         );
  DFFNEGX1 \dp/y_regb_reg[2]  ( .D(n37), .CLK(n22), .Q(out_port1[2]) );
  DFFNEGX1 \dp/y_rega_reg[1]  ( .D(\dp/n178 ), .CLK(clka), .Q(\dp/y_rega [1])
         );
  DFFNEGX1 \dp/y_regb_reg[1]  ( .D(n36), .CLK(n22), .Q(out_port1[1]) );
  DFFNEGX1 \dp/y_rega_reg[0]  ( .D(\dp/n179 ), .CLK(clka), .Q(\dp/y_rega [0])
         );
  DFFNEGX1 \dp/y_regb_reg[0]  ( .D(n35), .CLK(n22), .Q(out_port1[0]) );
  DFFNEGX1 \dp/y_rega_reg[6]  ( .D(\dp/n173 ), .CLK(clka), .Q(\dp/y_rega [6])
         );
  DFFNEGX1 \dp/y_regb_reg[6]  ( .D(n41), .CLK(n22), .Q(out_port1[6]) );
  DFFNEGX1 \dp/y_rega_reg[7]  ( .D(\dp/n172 ), .CLK(clka), .Q(\dp/y_rega [7])
         );
  DFFNEGX1 \dp/y_regb_reg[7]  ( .D(n42), .CLK(n22), .Q(out_port1[7]) );
  DFFNEGX1 \dp/theta_rega_reg[7]  ( .D(\dp/n180 ), .CLK(clka), .Q(
        \dp/theta_rega [7]) );
  DFFNEGX1 \dp/theta_regb_reg[7]  ( .D(n50), .CLK(n22), .Q(\dp/theta_regb [7])
         );
  DFFNEGX1 \dp/theta_rega_reg[0]  ( .D(\dp/n187 ), .CLK(clka), .Q(
        \dp/theta_rega [0]) );
  DFFNEGX1 \dp/theta_regb_reg[0]  ( .D(n43), .CLK(n22), .Q(\dp/theta_regb [0])
         );
  DFFNEGX1 \dp/next_counter_reg[3]  ( .D(counter[3]), .CLK(n22), .Q(
        \dp/next_counter [3]) );
  DFFNEGX1 \dp/counter_reg[3]  ( .D(\dp/N116 ), .CLK(clka), .Q(counter[3]) );
  DFFNEGX1 \dp/next_counter_reg[2]  ( .D(counter[2]), .CLK(n22), .Q(
        \dp/next_counter [2]) );
  DFFNEGX1 \dp/counter_reg[2]  ( .D(\dp/N115 ), .CLK(clka), .Q(counter[2]) );
  DFFNEGX1 \dp/next_counter_reg[1]  ( .D(counter[1]), .CLK(n22), .Q(
        \dp/next_counter [1]) );
  DFFNEGX1 \dp/counter_reg[1]  ( .D(\dp/N114 ), .CLK(clka), .Q(counter[1]) );
  DFFNEGX1 \dp/counter_reg[0]  ( .D(\dp/N113 ), .CLK(clka), .Q(counter[0]) );
  DFFNEGX1 \dp/next_counter_reg[0]  ( .D(counter[0]), .CLK(n22), .Q(
        \dp/next_counter [0]) );
  FAX1 \dp/sub_72/U2_1  ( .A(\dp/x_rega [1]), .B(n101), .C(
        \dp/sub_72/carry [1]), .YC(\dp/sub_72/carry [2]), .YS(\dp/N129 ) );
  FAX1 \dp/sub_72/U2_2  ( .A(\dp/x_rega [2]), .B(n100), .C(
        \dp/sub_72/carry [2]), .YC(\dp/sub_72/carry [3]), .YS(\dp/N130 ) );
  FAX1 \dp/sub_72/U2_3  ( .A(\dp/x_rega [3]), .B(n104), .C(
        \dp/sub_72/carry [3]), .YC(\dp/sub_72/carry [4]), .YS(\dp/N131 ) );
  FAX1 \dp/sub_72/U2_4  ( .A(\dp/x_rega [4]), .B(n98), .C(\dp/sub_72/carry [4]), .YC(\dp/sub_72/carry [5]), .YS(\dp/N132 ) );
  FAX1 \dp/sub_72/U2_5  ( .A(\dp/x_rega [5]), .B(n102), .C(
        \dp/sub_72/carry [5]), .YC(\dp/sub_72/carry [6]), .YS(\dp/N133 ) );
  FAX1 \dp/sub_72/U2_6  ( .A(\dp/x_rega [6]), .B(n111), .C(
        \dp/sub_72/carry [6]), .YC(\dp/sub_72/carry [7]), .YS(\dp/N134 ) );
  FAX1 \dp/sub_72/U2_7  ( .A(\dp/x_rega [7]), .B(n114), .C(
        \dp/sub_72/carry [7]), .YC(), .YS(\dp/N135 ) );
  FAX1 \dp/add_73/U1_1  ( .A(\dp/y_rega [1]), .B(\dp/N137 ), .C(n3), .YC(
        \dp/add_73/carry [2]), .YS(\dp/N145 ) );
  FAX1 \dp/add_73/U1_2  ( .A(\dp/y_rega [2]), .B(\dp/N138 ), .C(
        \dp/add_73/carry [2]), .YC(\dp/add_73/carry [3]), .YS(\dp/N146 ) );
  FAX1 \dp/add_73/U1_3  ( .A(\dp/y_rega [3]), .B(\dp/N139 ), .C(
        \dp/add_73/carry [3]), .YC(\dp/add_73/carry [4]), .YS(\dp/N147 ) );
  FAX1 \dp/add_73/U1_4  ( .A(\dp/y_rega [4]), .B(\dp/N140 ), .C(
        \dp/add_73/carry [4]), .YC(\dp/add_73/carry [5]), .YS(\dp/N148 ) );
  FAX1 \dp/add_73/U1_5  ( .A(\dp/y_rega [5]), .B(\dp/N141 ), .C(
        \dp/add_73/carry [5]), .YC(\dp/add_73/carry [6]), .YS(\dp/N149 ) );
  FAX1 \dp/add_73/U1_6  ( .A(\dp/y_rega [6]), .B(\dp/N142 ), .C(
        \dp/add_73/carry [6]), .YC(\dp/add_73/carry [7]), .YS(\dp/N150 ) );
  FAX1 \dp/add_73/U1_7  ( .A(\dp/y_rega [7]), .B(\dp/N143 ), .C(
        \dp/add_73/carry [7]), .YC(), .YS(\dp/N151 ) );
  FAX1 \dp/sub_74/U2_1  ( .A(\dp/theta_rega [1]), .B(n121), .C(
        \dp/sub_74/carry [1]), .YC(\dp/sub_74/carry [2]), .YS(\dp/N153 ) );
  FAX1 \dp/sub_74/U2_2  ( .A(\dp/theta_rega [2]), .B(n120), .C(
        \dp/sub_74/carry [2]), .YC(\dp/sub_74/carry [3]), .YS(\dp/N154 ) );
  FAX1 \dp/add_77/U1_1  ( .A(\dp/x_rega [1]), .B(\dp/N121 ), .C(n2), .YC(
        \dp/add_77/carry [2]), .YS(\dp/N169 ) );
  FAX1 \dp/add_77/U1_2  ( .A(\dp/x_rega [2]), .B(\dp/N122 ), .C(
        \dp/add_77/carry [2]), .YC(\dp/add_77/carry [3]), .YS(\dp/N170 ) );
  FAX1 \dp/add_77/U1_3  ( .A(\dp/x_rega [3]), .B(\dp/N123 ), .C(
        \dp/add_77/carry [3]), .YC(\dp/add_77/carry [4]), .YS(\dp/N171 ) );
  FAX1 \dp/add_77/U1_4  ( .A(\dp/x_rega [4]), .B(\dp/N124 ), .C(
        \dp/add_77/carry [4]), .YC(\dp/add_77/carry [5]), .YS(\dp/N172 ) );
  FAX1 \dp/add_77/U1_5  ( .A(\dp/x_rega [5]), .B(\dp/N125 ), .C(
        \dp/add_77/carry [5]), .YC(\dp/add_77/carry [6]), .YS(\dp/N173 ) );
  FAX1 \dp/add_77/U1_6  ( .A(\dp/x_rega [6]), .B(\dp/N126 ), .C(
        \dp/add_77/carry [6]), .YC(\dp/add_77/carry [7]), .YS(\dp/N174 ) );
  FAX1 \dp/add_77/U1_7  ( .A(\dp/x_rega [7]), .B(\dp/N127 ), .C(
        \dp/add_77/carry [7]), .YC(), .YS(\dp/N175 ) );
  FAX1 \dp/sub_78/U2_1  ( .A(\dp/y_rega [1]), .B(n84), .C(\dp/sub_78/carry [1]), .YC(\dp/sub_78/carry [2]), .YS(\dp/N185 ) );
  FAX1 \dp/sub_78/U2_2  ( .A(\dp/y_rega [2]), .B(n81), .C(\dp/sub_78/carry [2]), .YC(\dp/sub_78/carry [3]), .YS(\dp/N186 ) );
  FAX1 \dp/sub_78/U2_3  ( .A(\dp/y_rega [3]), .B(n87), .C(\dp/sub_78/carry [3]), .YC(\dp/sub_78/carry [4]), .YS(\dp/N187 ) );
  FAX1 \dp/sub_78/U2_4  ( .A(\dp/y_rega [4]), .B(n79), .C(\dp/sub_78/carry [4]), .YC(\dp/sub_78/carry [5]), .YS(\dp/N188 ) );
  FAX1 \dp/sub_78/U2_5  ( .A(\dp/y_rega [5]), .B(n85), .C(\dp/sub_78/carry [5]), .YC(\dp/sub_78/carry [6]), .YS(\dp/N189 ) );
  FAX1 \dp/sub_78/U2_6  ( .A(\dp/y_rega [6]), .B(n82), .C(\dp/sub_78/carry [6]), .YC(\dp/sub_78/carry [7]), .YS(\dp/N190 ) );
  FAX1 \dp/sub_78/U2_7  ( .A(\dp/y_rega [7]), .B(n94), .C(\dp/sub_78/carry [7]), .YC(), .YS(\dp/N191 ) );
  FAX1 \dp/add_79/U1_1  ( .A(\dp/theta_rega [1]), .B(\dp/ROM_VALUE [1]), .C(n4), .YC(\dp/add_79/carry [2]), .YS(\dp/N193 ) );
  FAX1 \dp/add_79/U1_2  ( .A(\dp/theta_rega [2]), .B(\dp/ROM_VALUE [2]), .C(
        \dp/add_79/carry [2]), .YC(\dp/add_79/carry [3]), .YS(\dp/N194 ) );
  OR2X2 U1 ( .A(\dp/n121 ), .B(\dp/n109 ), .Y(n1) );
  AND2X2 U2 ( .A(\dp/N120 ), .B(\dp/x_rega [0]), .Y(n2) );
  AND2X2 U3 ( .A(\dp/N136 ), .B(\dp/y_rega [0]), .Y(n3) );
  AND2X2 U4 ( .A(\dp/ROM_VALUE [0]), .B(\dp/theta_rega [0]), .Y(n4) );
  AND2X2 U5 ( .A(\dp/add_79/carry [3]), .B(\dp/theta_rega [3]), .Y(n5) );
  AND2X2 U6 ( .A(n5), .B(\dp/theta_rega [4]), .Y(n6) );
  AND2X2 U7 ( .A(n6), .B(\dp/theta_rega [5]), .Y(n7) );
  AND2X2 U8 ( .A(n7), .B(\dp/theta_rega [6]), .Y(n8) );
  INVX2 U9 ( .A(\dp/n109 ), .Y(n14) );
  INVX2 U10 ( .A(n17), .Y(n15) );
  INVX2 U11 ( .A(n1), .Y(n12) );
  INVX2 U12 ( .A(\dp/n111 ), .Y(n59) );
  INVX2 U13 ( .A(n24), .Y(n22) );
  INVX2 U14 ( .A(n24), .Y(n23) );
  BUFX2 U15 ( .A(n21), .Y(n17) );
  BUFX2 U16 ( .A(n21), .Y(n16) );
  BUFX2 U17 ( .A(n21), .Y(n19) );
  BUFX2 U18 ( .A(n21), .Y(n18) );
  INVX2 U19 ( .A(n9), .Y(n13) );
  BUFX2 U20 ( .A(n21), .Y(n20) );
  INVX2 U21 ( .A(cordic_mode), .Y(n10) );
  INVX2 U22 ( .A(counter[0]), .Y(n126) );
  INVX2 U23 ( .A(counter[2]), .Y(n11) );
  INVX2 U24 ( .A(clkb), .Y(n24) );
  OR2X1 U25 ( .A(n60), .B(in_mux_ctl[1]), .Y(n9) );
  INVX2 U26 ( .A(\dp/n132 ), .Y(n21) );
  OR2X1 U27 ( .A(\dp/x_rega [0]), .B(n97), .Y(\dp/sub_72/carry [1]) );
  XNOR2X1 U28 ( .A(n97), .B(\dp/x_rega [0]), .Y(\dp/N128 ) );
  OR2X1 U29 ( .A(\dp/theta_rega [3]), .B(\dp/sub_74/carry [3]), .Y(
        \dp/sub_74/carry [4]) );
  XNOR2X1 U30 ( .A(\dp/sub_74/carry [3]), .B(\dp/theta_rega [3]), .Y(\dp/N155 ) );
  OR2X1 U31 ( .A(\dp/theta_rega [4]), .B(\dp/sub_74/carry [4]), .Y(
        \dp/sub_74/carry [5]) );
  XNOR2X1 U32 ( .A(\dp/sub_74/carry [4]), .B(\dp/theta_rega [4]), .Y(\dp/N156 ) );
  OR2X1 U33 ( .A(\dp/theta_rega [5]), .B(\dp/sub_74/carry [5]), .Y(
        \dp/sub_74/carry [6]) );
  XNOR2X1 U34 ( .A(\dp/sub_74/carry [5]), .B(\dp/theta_rega [5]), .Y(\dp/N157 ) );
  OR2X1 U35 ( .A(\dp/theta_rega [6]), .B(\dp/sub_74/carry [6]), .Y(
        \dp/sub_74/carry [7]) );
  XNOR2X1 U36 ( .A(\dp/sub_74/carry [6]), .B(\dp/theta_rega [6]), .Y(\dp/N158 ) );
  XNOR2X1 U37 ( .A(\dp/theta_rega [7]), .B(\dp/sub_74/carry [7]), .Y(\dp/N159 ) );
  OR2X1 U38 ( .A(\dp/theta_rega [0]), .B(n122), .Y(\dp/sub_74/carry [1]) );
  XNOR2X1 U39 ( .A(n122), .B(\dp/theta_rega [0]), .Y(\dp/N152 ) );
  OR2X1 U40 ( .A(\dp/y_rega [0]), .B(n78), .Y(\dp/sub_78/carry [1]) );
  XNOR2X1 U41 ( .A(n78), .B(\dp/y_rega [0]), .Y(\dp/N184 ) );
  XOR2X1 U42 ( .A(\dp/N136 ), .B(\dp/y_rega [0]), .Y(\dp/N144 ) );
  XOR2X1 U43 ( .A(\dp/N120 ), .B(\dp/x_rega [0]), .Y(\dp/N168 ) );
  XOR2X1 U44 ( .A(\dp/ROM_VALUE [0]), .B(\dp/theta_rega [0]), .Y(\dp/N192 ) );
  XOR2X1 U45 ( .A(\dp/add_79/carry [3]), .B(\dp/theta_rega [3]), .Y(\dp/N195 )
         );
  XOR2X1 U46 ( .A(n5), .B(\dp/theta_rega [4]), .Y(\dp/N196 ) );
  XOR2X1 U47 ( .A(n6), .B(\dp/theta_rega [5]), .Y(\dp/N197 ) );
  XOR2X1 U48 ( .A(n7), .B(\dp/theta_rega [6]), .Y(\dp/N198 ) );
  XOR2X1 U49 ( .A(\dp/theta_rega [7]), .B(n8), .Y(\dp/N199 ) );
  OR2X2 U50 ( .A(n13), .B(n59), .Y(\dp/n121 ) );
  INVX2 U51 ( .A(\fsm/n25 ), .Y(n25) );
  INVX2 U52 ( .A(reset), .Y(n26) );
  INVX2 U53 ( .A(\dp/n155 ), .Y(n27) );
  INVX2 U54 ( .A(\dp/n154 ), .Y(n28) );
  INVX2 U55 ( .A(\dp/n153 ), .Y(n29) );
  INVX2 U56 ( .A(\dp/n152 ), .Y(n30) );
  INVX2 U57 ( .A(\dp/n151 ), .Y(n31) );
  INVX2 U58 ( .A(\dp/n150 ), .Y(n32) );
  INVX2 U59 ( .A(\dp/n149 ), .Y(n33) );
  INVX2 U60 ( .A(\dp/n148 ), .Y(n34) );
  INVX2 U61 ( .A(\dp/n147 ), .Y(n35) );
  INVX2 U62 ( .A(\dp/n146 ), .Y(n36) );
  INVX2 U63 ( .A(\dp/n145 ), .Y(n37) );
  INVX2 U64 ( .A(\dp/n144 ), .Y(n38) );
  INVX2 U65 ( .A(\dp/n143 ), .Y(n39) );
  INVX2 U66 ( .A(\dp/n142 ), .Y(n40) );
  INVX2 U67 ( .A(\dp/n141 ), .Y(n41) );
  INVX2 U68 ( .A(\dp/n140 ), .Y(n42) );
  INVX2 U69 ( .A(\dp/n139 ), .Y(n43) );
  INVX2 U70 ( .A(\dp/n138 ), .Y(n44) );
  INVX2 U71 ( .A(\dp/n137 ), .Y(n45) );
  INVX2 U72 ( .A(\dp/n136 ), .Y(n46) );
  INVX2 U73 ( .A(\dp/n135 ), .Y(n47) );
  INVX2 U74 ( .A(\dp/n134 ), .Y(n48) );
  INVX2 U75 ( .A(\dp/n133 ), .Y(n49) );
  INVX2 U76 ( .A(\dp/n131 ), .Y(n50) );
  INVX2 U77 ( .A(\dp/n98 ), .Y(out_port0[0]) );
  INVX2 U78 ( .A(\dp/n97 ), .Y(out_port0[1]) );
  INVX2 U79 ( .A(\dp/n96 ), .Y(out_port0[2]) );
  INVX2 U80 ( .A(\dp/n95 ), .Y(out_port0[3]) );
  INVX2 U81 ( .A(\dp/n94 ), .Y(out_port0[4]) );
  INVX2 U82 ( .A(\dp/n93 ), .Y(out_port0[5]) );
  INVX2 U83 ( .A(\dp/n92 ), .Y(out_port0[6]) );
  INVX2 U84 ( .A(\dp/n91 ), .Y(out_port0[7]) );
  INVX2 U85 ( .A(in_mux_ctl[0]), .Y(n60) );
  INVX2 U86 ( .A(\dp/n159 ), .Y(n61) );
  INVX2 U87 ( .A(counter_rst), .Y(n62) );
  INVX2 U88 ( .A(\dp/n158 ), .Y(n63) );
  INVX2 U89 ( .A(\dp/n160 ), .Y(n64) );
  INVX2 U90 ( .A(\fsm/next_state [1]), .Y(n65) );
  INVX2 U91 ( .A(\fsm/n12 ), .Y(n66) );
  INVX2 U92 ( .A(\fsm/state[1] ), .Y(n67) );
  INVX2 U93 ( .A(\fsm/next_state [0]), .Y(n68) );
  INVX2 U94 ( .A(\fsm/state[2] ), .Y(n69) );
  INVX2 U95 ( .A(\fsm/next_state [2]), .Y(n70) );
  INVX2 U96 ( .A(\fsm/state[0] ), .Y(n71) );
  INVX2 U97 ( .A(\dp/theta_rega [5]), .Y(n72) );
  INVX2 U98 ( .A(\dp/theta_rega [4]), .Y(n73) );
  INVX2 U99 ( .A(\dp/theta_rega [3]), .Y(n74) );
  INVX2 U100 ( .A(\dp/theta_rega [2]), .Y(n75) );
  INVX2 U101 ( .A(\dp/theta_rega [1]), .Y(n76) );
  INVX2 U102 ( .A(\dp/theta_rega [6]), .Y(n77) );
  INVX2 U103 ( .A(\dp/N136 ), .Y(n78) );
  INVX2 U104 ( .A(\dp/N140 ), .Y(n79) );
  INVX2 U105 ( .A(n144), .Y(n80) );
  INVX2 U106 ( .A(\dp/N138 ), .Y(n81) );
  INVX2 U107 ( .A(\dp/N142 ), .Y(n82) );
  INVX2 U108 ( .A(n146), .Y(n83) );
  INVX2 U109 ( .A(\dp/N137 ), .Y(n84) );
  INVX2 U110 ( .A(\dp/N141 ), .Y(n85) );
  INVX2 U111 ( .A(n145), .Y(n86) );
  INVX2 U112 ( .A(\dp/N139 ), .Y(n87) );
  INVX2 U113 ( .A(\dp/x_rega [6]), .Y(n88) );
  INVX2 U114 ( .A(\dp/x_rega [5]), .Y(n89) );
  INVX2 U115 ( .A(\dp/x_rega [4]), .Y(n90) );
  INVX2 U116 ( .A(\dp/x_rega [3]), .Y(n91) );
  INVX2 U117 ( .A(\dp/x_rega [2]), .Y(n92) );
  INVX2 U118 ( .A(\dp/x_rega [1]), .Y(n93) );
  INVX2 U119 ( .A(\dp/N143 ), .Y(n94) );
  INVX2 U120 ( .A(n147), .Y(n95) );
  INVX2 U121 ( .A(\dp/x_rega [7]), .Y(n96) );
  INVX2 U122 ( .A(\dp/N120 ), .Y(n97) );
  INVX2 U123 ( .A(\dp/N124 ), .Y(n98) );
  INVX2 U124 ( .A(n165), .Y(n99) );
  INVX2 U125 ( .A(\dp/N122 ), .Y(n100) );
  INVX2 U126 ( .A(\dp/N121 ), .Y(n101) );
  INVX2 U127 ( .A(\dp/N125 ), .Y(n102) );
  INVX2 U128 ( .A(n166), .Y(n103) );
  INVX2 U129 ( .A(\dp/N123 ), .Y(n104) );
  INVX2 U130 ( .A(\dp/y_rega [5]), .Y(n105) );
  INVX2 U131 ( .A(\dp/y_rega [4]), .Y(n106) );
  INVX2 U132 ( .A(\dp/y_rega [3]), .Y(n107) );
  INVX2 U133 ( .A(\dp/y_rega [2]), .Y(n108) );
  INVX2 U134 ( .A(\dp/y_rega [1]), .Y(n109) );
  INVX2 U135 ( .A(\dp/y_rega [0]), .Y(n110) );
  INVX2 U136 ( .A(\dp/N126 ), .Y(n111) );
  INVX2 U137 ( .A(n167), .Y(n112) );
  INVX2 U138 ( .A(\dp/y_rega [6]), .Y(n113) );
  INVX2 U139 ( .A(\dp/N127 ), .Y(n114) );
  INVX2 U140 ( .A(n168), .Y(n115) );
  INVX2 U141 ( .A(\dp/y_rega [7]), .Y(n116) );
  INVX2 U142 ( .A(\dp/theta_rega [7]), .Y(n117) );
  INVX2 U143 ( .A(\dp/theta_rega [0]), .Y(n118) );
  INVX2 U144 ( .A(\dp/next_counter [3]), .Y(n119) );
  INVX2 U145 ( .A(\dp/ROM_VALUE [2]), .Y(n120) );
  INVX2 U146 ( .A(\dp/ROM_VALUE [1]), .Y(n121) );
  INVX2 U147 ( .A(\dp/ROM_VALUE [0]), .Y(n122) );
  INVX2 U148 ( .A(counter[3]), .Y(n123) );
  INVX2 U149 ( .A(\dp/next_counter [2]), .Y(n124) );
  INVX2 U150 ( .A(\dp/next_counter [1]), .Y(n125) );
  INVX2 U151 ( .A(\dp/next_counter [0]), .Y(n127) );
  MUX2X1 U152 ( .B(\dp/x_rega [1]), .A(\dp/x_rega [0]), .S(n126), .Y(n128) );
  MUX2X1 U153 ( .B(\dp/x_rega [3]), .A(\dp/x_rega [2]), .S(n126), .Y(n135) );
  MUX2X1 U154 ( .B(n128), .A(n135), .S(counter[1]), .Y(n129) );
  MUX2X1 U155 ( .B(\dp/x_rega [5]), .A(\dp/x_rega [4]), .S(n126), .Y(n134) );
  MUX2X1 U156 ( .B(\dp/x_rega [7]), .A(\dp/x_rega [6]), .S(n126), .Y(n136) );
  MUX2X1 U157 ( .B(n134), .A(n136), .S(counter[1]), .Y(n144) );
  MUX2X1 U158 ( .B(n129), .A(n144), .S(counter[2]), .Y(n130) );
  NOR2X1 U159 ( .A(counter[3]), .B(n130), .Y(\dp/N136 ) );
  MUX2X1 U160 ( .B(\dp/x_rega [2]), .A(\dp/x_rega [1]), .S(n126), .Y(n131) );
  MUX2X1 U161 ( .B(\dp/x_rega [4]), .A(\dp/x_rega [3]), .S(n126), .Y(n140) );
  MUX2X1 U162 ( .B(n131), .A(n140), .S(counter[1]), .Y(n132) );
  MUX2X1 U163 ( .B(\dp/x_rega [6]), .A(\dp/x_rega [5]), .S(n126), .Y(n139) );
  NAND2X1 U164 ( .A(\dp/x_rega [7]), .B(n126), .Y(n141) );
  MUX2X1 U165 ( .B(n139), .A(n141), .S(counter[1]), .Y(n145) );
  MUX2X1 U166 ( .B(n132), .A(n145), .S(counter[2]), .Y(n133) );
  NOR2X1 U167 ( .A(counter[3]), .B(n133), .Y(\dp/N137 ) );
  MUX2X1 U168 ( .B(n135), .A(n134), .S(counter[1]), .Y(n137) );
  NOR2X1 U169 ( .A(n136), .B(counter[1]), .Y(n146) );
  MUX2X1 U170 ( .B(n137), .A(n146), .S(counter[2]), .Y(n138) );
  NOR2X1 U171 ( .A(counter[3]), .B(n138), .Y(\dp/N138 ) );
  MUX2X1 U172 ( .B(n140), .A(n139), .S(counter[1]), .Y(n142) );
  NOR2X1 U173 ( .A(n141), .B(counter[1]), .Y(n147) );
  MUX2X1 U174 ( .B(n142), .A(n147), .S(counter[2]), .Y(n143) );
  NOR2X1 U175 ( .A(counter[3]), .B(n143), .Y(\dp/N139 ) );
  NAND2X1 U176 ( .A(n11), .B(n123), .Y(n148) );
  NOR2X1 U177 ( .A(n80), .B(n148), .Y(\dp/N140 ) );
  NOR2X1 U178 ( .A(n86), .B(n148), .Y(\dp/N141 ) );
  NOR2X1 U179 ( .A(n83), .B(n148), .Y(\dp/N142 ) );
  NOR2X1 U180 ( .A(n95), .B(n148), .Y(\dp/N143 ) );
  MUX2X1 U181 ( .B(\dp/y_rega [1]), .A(\dp/y_rega [0]), .S(n126), .Y(n149) );
  MUX2X1 U182 ( .B(\dp/y_rega [3]), .A(\dp/y_rega [2]), .S(n126), .Y(n156) );
  MUX2X1 U183 ( .B(n149), .A(n156), .S(counter[1]), .Y(n150) );
  MUX2X1 U184 ( .B(\dp/y_rega [5]), .A(\dp/y_rega [4]), .S(n126), .Y(n155) );
  MUX2X1 U185 ( .B(\dp/y_rega [7]), .A(\dp/y_rega [6]), .S(n126), .Y(n157) );
  MUX2X1 U186 ( .B(n155), .A(n157), .S(counter[1]), .Y(n165) );
  MUX2X1 U187 ( .B(n150), .A(n165), .S(counter[2]), .Y(n151) );
  NOR2X1 U188 ( .A(counter[3]), .B(n151), .Y(\dp/N120 ) );
  MUX2X1 U189 ( .B(\dp/y_rega [2]), .A(\dp/y_rega [1]), .S(n126), .Y(n152) );
  MUX2X1 U190 ( .B(\dp/y_rega [4]), .A(\dp/y_rega [3]), .S(n126), .Y(n161) );
  MUX2X1 U191 ( .B(n152), .A(n161), .S(counter[1]), .Y(n153) );
  MUX2X1 U192 ( .B(\dp/y_rega [6]), .A(\dp/y_rega [5]), .S(n126), .Y(n160) );
  NAND2X1 U193 ( .A(\dp/y_rega [7]), .B(n126), .Y(n162) );
  MUX2X1 U194 ( .B(n160), .A(n162), .S(counter[1]), .Y(n166) );
  MUX2X1 U195 ( .B(n153), .A(n166), .S(counter[2]), .Y(n154) );
  NOR2X1 U196 ( .A(counter[3]), .B(n154), .Y(\dp/N121 ) );
  MUX2X1 U197 ( .B(n156), .A(n155), .S(counter[1]), .Y(n158) );
  NOR2X1 U198 ( .A(n157), .B(counter[1]), .Y(n167) );
  MUX2X1 U199 ( .B(n158), .A(n167), .S(counter[2]), .Y(n159) );
  NOR2X1 U200 ( .A(counter[3]), .B(n159), .Y(\dp/N122 ) );
  MUX2X1 U201 ( .B(n161), .A(n160), .S(counter[1]), .Y(n163) );
  NOR2X1 U202 ( .A(n162), .B(counter[1]), .Y(n168) );
  MUX2X1 U203 ( .B(n163), .A(n168), .S(counter[2]), .Y(n164) );
  NOR2X1 U204 ( .A(counter[3]), .B(n164), .Y(\dp/N123 ) );
  NAND2X1 U205 ( .A(n11), .B(n123), .Y(n169) );
  NOR2X1 U206 ( .A(n99), .B(n169), .Y(\dp/N124 ) );
  NOR2X1 U207 ( .A(n103), .B(n169), .Y(\dp/N125 ) );
  NOR2X1 U208 ( .A(n112), .B(n169), .Y(\dp/N126 ) );
  NOR2X1 U209 ( .A(n115), .B(n169), .Y(\dp/N127 ) );
endmodule

