/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Mar  1 22:26:28 2023
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
         \fsm/state[1] , \fsm/state[2] , \dp/n197 , \dp/n196 , \dp/n195 ,
         \dp/n194 , \dp/n193 , \dp/n192 , \dp/n191 , \dp/n190 , \dp/n189 ,
         \dp/n188 , \dp/n187 , \dp/n186 , \dp/n185 , \dp/n184 , \dp/n183 ,
         \dp/n182 , \dp/n181 , \dp/n180 , \dp/n179 , \dp/n178 , \dp/n177 ,
         \dp/n176 , \dp/n175 , \dp/n174 , \dp/n173 , \dp/n172 , \dp/n171 ,
         \dp/n170 , \dp/n169 , \dp/n168 , \dp/n167 , \dp/n166 , \dp/n165 ,
         \dp/n164 , \dp/n163 , \dp/n162 , \dp/n161 , \dp/n160 , \dp/n159 ,
         \dp/n158 , \dp/n157 , \dp/n156 , \dp/n155 , \dp/n154 , \dp/n153 ,
         \dp/n152 , \dp/n151 , \dp/n150 , \dp/n149 , \dp/n148 , \dp/n147 ,
         \dp/n146 , \dp/n145 , \dp/n144 , \dp/n143 , \dp/n142 , \dp/n141 ,
         \dp/n140 , \dp/n139 , \dp/n138 , \dp/n137 , \dp/n136 , \dp/n135 ,
         \dp/n134 , \dp/n133 , \dp/n132 , \dp/n131 , \dp/n130 , \dp/n129 ,
         \dp/n128 , \dp/n127 , \dp/n126 , \dp/n125 , \dp/n124 , \dp/n123 ,
         \dp/n122 , \dp/n121 , \dp/n120 , \dp/n119 , \dp/n118 , \dp/n117 ,
         \dp/n116 , \dp/n115 , \dp/n114 , \dp/n113 , \dp/n112 , \dp/n111 ,
         \dp/n110 , \dp/n109 , \dp/n108 , \dp/n107 , \dp/n106 , \dp/n105 ,
         \dp/n104 , \dp/n103 , \dp/n102 , \dp/n99 , \dp/n98 , \dp/n97 ,
         \dp/n96 , \dp/n95 , \dp/n94 , \dp/n93 , \dp/n92 , \dp/n91 , \dp/N202 ,
         \dp/N201 , \dp/N200 , \dp/N199 , \dp/N198 , \dp/N197 , \dp/N196 ,
         \dp/N195 , \dp/N194 , \dp/N193 , \dp/N192 , \dp/N191 , \dp/N190 ,
         \dp/N189 , \dp/N188 , \dp/N187 , \dp/N178 , \dp/N177 , \dp/N176 ,
         \dp/N175 , \dp/N174 , \dp/N173 , \dp/N172 , \dp/N171 , \dp/N162 ,
         \dp/N161 , \dp/N160 , \dp/N159 , \dp/N158 , \dp/N157 , \dp/N156 ,
         \dp/N155 , \dp/N154 , \dp/N153 , \dp/N152 , \dp/N151 , \dp/N150 ,
         \dp/N149 , \dp/N148 , \dp/N147 , \dp/N146 , \dp/N145 , \dp/N144 ,
         \dp/N143 , \dp/N142 , \dp/N141 , \dp/N140 , \dp/N139 , \dp/N138 ,
         \dp/N137 , \dp/N136 , \dp/N135 , \dp/N134 , \dp/N133 , \dp/N132 ,
         \dp/N131 , \dp/N130 , \dp/N129 , \dp/N128 , \dp/N127 , \dp/N126 ,
         \dp/N125 , \dp/N124 , \dp/N123 , \dp/N119 , \dp/N118 , \dp/N117 ,
         \dp/N116 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166;
  wire   [3:0] counter;
  wire   [1:0] in_mux_ctl;
  wire   [2:0] \fsm/next_state ;
  wire   [7:0] \dp/x_regb ;
  wire   [7:0] \dp/theta_rega ;
  wire   [7:0] \dp/y_rega ;
  wire   [7:0] \dp/x_rega ;
  wire   [3:0] \dp/next_counter ;
  wire   [7:0] \dp/theta_regb ;
  wire   [5:0] \dp/ROM_VALUE ;
  wire   [8:0] \dp/sub_72/carry ;
  wire   [7:1] \dp/add_73/carry ;
  wire   [8:0] \dp/sub_74/carry ;
  wire   [7:1] \dp/add_77/carry ;
  wire   [8:0] \dp/sub_78/carry ;
  wire   [7:1] \dp/add_79/carry ;

  NAND2X1 \fsm/U41  ( .A(n68), .B(n64), .Y(\fsm/n28 ) );
  NAND2X1 \fsm/U40  ( .A(n24), .B(n66), .Y(\fsm/n25 ) );
  NAND2X1 \fsm/U39  ( .A(start), .B(n23), .Y(\fsm/n29 ) );
  NOR2X1 \fsm/U38  ( .A(\fsm/n28 ), .B(\fsm/n29 ), .Y(\fsm/N43 ) );
  OAI21X1 \fsm/U37  ( .A(\fsm/n27 ), .B(\fsm/state[0] ), .C(n64), .Y(\fsm/n23 ) );
  NOR2X1 \fsm/U36  ( .A(counter[2]), .B(counter[1]), .Y(\fsm/n26 ) );
  NAND3X1 \fsm/U35  ( .A(counter[3]), .B(n123), .C(\fsm/n26 ), .Y(\fsm/n22 )
         );
  NAND3X1 \fsm/U34  ( .A(\fsm/n22 ), .B(n68), .C(\fsm/state[1] ), .Y(\fsm/n24 ) );
  AOI21X1 \fsm/U33  ( .A(\fsm/n23 ), .B(\fsm/n24 ), .C(\fsm/n25 ), .Y(
        \fsm/N44 ) );
  NAND3X1 \fsm/U32  ( .A(n68), .B(n64), .C(n24), .Y(\fsm/n19 ) );
  NAND2X1 \fsm/U31  ( .A(\fsm/state[2] ), .B(\fsm/n22 ), .Y(\fsm/n20 ) );
  NAND3X1 \fsm/U30  ( .A(\fsm/state[0] ), .B(\fsm/state[1] ), .C(n23), .Y(
        \fsm/n21 ) );
  OAI21X1 \fsm/U29  ( .A(\fsm/n19 ), .B(\fsm/n20 ), .C(\fsm/n21 ), .Y(
        \fsm/N45 ) );
  OAI21X1 \fsm/U28  ( .A(\fsm/next_state [1]), .B(\fsm/next_state [0]), .C(
        \fsm/next_state [2]), .Y(\fsm/n12 ) );
  OAI22X1 \fsm/U27  ( .A(n63), .B(n65), .C(\fsm/n12 ), .D(n68), .Y(\fsm/n36 )
         );
  NAND2X1 \fsm/U26  ( .A(n65), .B(n62), .Y(\fsm/n16 ) );
  AOI21X1 \fsm/U25  ( .A(\fsm/n16 ), .B(n66), .C(n67), .Y(\fsm/n35 ) );
  OAI22X1 \fsm/U24  ( .A(n63), .B(n62), .C(\fsm/n12 ), .D(n64), .Y(\fsm/n34 )
         );
  NAND2X1 \fsm/U23  ( .A(counter_rst), .B(n63), .Y(\fsm/n18 ) );
  OAI21X1 \fsm/U22  ( .A(n63), .B(n65), .C(\fsm/n18 ), .Y(\fsm/n33 ) );
  NAND3X1 \fsm/U21  ( .A(\fsm/next_state [2]), .B(\fsm/n16 ), .C(done), .Y(
        \fsm/n17 ) );
  OAI21X1 \fsm/U20  ( .A(\fsm/next_state [2]), .B(\fsm/n16 ), .C(\fsm/n17 ), 
        .Y(\fsm/n32 ) );
  NAND2X1 \fsm/U19  ( .A(\fsm/next_state [1]), .B(n67), .Y(\fsm/n14 ) );
  NAND3X1 \fsm/U18  ( .A(\fsm/next_state [2]), .B(\fsm/n16 ), .C(in_mux_ctl[1]), .Y(\fsm/n15 ) );
  OAI21X1 \fsm/U17  ( .A(n65), .B(\fsm/n14 ), .C(\fsm/n15 ), .Y(\fsm/n31 ) );
  OAI21X1 \fsm/U16  ( .A(n62), .B(n67), .C(n65), .Y(\fsm/n13 ) );
  OAI21X1 \fsm/U15  ( .A(\fsm/n12 ), .B(n57), .C(\fsm/n13 ), .Y(\fsm/n30 ) );
  AND2X2 \fsm/U3  ( .A(start), .B(cordic_mode), .Y(\fsm/n27 ) );
  DFFNEGX1 \fsm/in_mux_ctl_reg[0]  ( .D(\fsm/n30 ), .CLK(clkb), .Q(
        in_mux_ctl[0]) );
  DFFNEGX1 \fsm/in_mux_ctl_reg[1]  ( .D(\fsm/n31 ), .CLK(clkb), .Q(
        in_mux_ctl[1]) );
  DFFNEGX1 \fsm/counter_rst_reg  ( .D(\fsm/n33 ), .CLK(n21), .Q(counter_rst)
         );
  DFFNEGX1 \fsm/counter_hold_reg  ( .D(\fsm/n32 ), .CLK(clkb), .Q(done) );
  DFFNEGX1 \fsm/next_state_reg[1]  ( .D(\fsm/N44 ), .CLK(clka), .Q(
        \fsm/next_state [1]) );
  DFFNEGX1 \fsm/state_reg[1]  ( .D(\fsm/n34 ), .CLK(n20), .Q(\fsm/state[1] )
         );
  DFFNEGX1 \fsm/next_state_reg[0]  ( .D(\fsm/N43 ), .CLK(clka), .Q(
        \fsm/next_state [0]) );
  DFFNEGX1 \fsm/state_reg[2]  ( .D(\fsm/n35 ), .CLK(clkb), .Q(\fsm/state[2] )
         );
  DFFNEGX1 \fsm/next_state_reg[2]  ( .D(\fsm/N45 ), .CLK(clka), .Q(
        \fsm/next_state [2]) );
  DFFNEGX1 \fsm/state_reg[0]  ( .D(\fsm/n36 ), .CLK(clkb), .Q(\fsm/state[0] )
         );
  XOR2X1 \dp/U197  ( .A(done), .B(counter_rst), .Y(\dp/n170 ) );
  NAND3X1 \dp/U196  ( .A(done), .B(n59), .C(\dp/next_counter [0]), .Y(
        \dp/n173 ) );
  OAI21X1 \dp/U195  ( .A(\dp/next_counter [0]), .B(\dp/n170 ), .C(\dp/n173 ), 
        .Y(\dp/N116 ) );
  AOI22X1 \dp/U194  ( .A(n59), .B(done), .C(n124), .D(n61), .Y(\dp/n171 ) );
  NAND3X1 \dp/U193  ( .A(n61), .B(n122), .C(\dp/next_counter [0]), .Y(
        \dp/n172 ) );
  OAI21X1 \dp/U192  ( .A(\dp/n171 ), .B(n122), .C(\dp/n172 ), .Y(\dp/N117 ) );
  OAI21X1 \dp/U191  ( .A(\dp/next_counter [1]), .B(\dp/n170 ), .C(\dp/n171 ), 
        .Y(\dp/n169 ) );
  NAND3X1 \dp/U190  ( .A(n61), .B(\dp/next_counter [0]), .C(
        \dp/next_counter [1]), .Y(\dp/n168 ) );
  OAI22X1 \dp/U189  ( .A(n58), .B(n121), .C(\dp/next_counter [2]), .D(
        \dp/n168 ), .Y(\dp/N118 ) );
  AOI21X1 \dp/U188  ( .A(n61), .B(n121), .C(\dp/n169 ), .Y(\dp/n166 ) );
  NAND3X1 \dp/U187  ( .A(n60), .B(n114), .C(\dp/next_counter [2]), .Y(
        \dp/n167 ) );
  OAI21X1 \dp/U186  ( .A(\dp/n166 ), .B(n114), .C(\dp/n167 ), .Y(\dp/N119 ) );
  OAI22X1 \dp/U185  ( .A(n7), .B(n111), .C(\dp/theta_rega [7]), .D(cordic_mode), .Y(\dp/n142 ) );
  AOI22X1 \dp/U184  ( .A(\dp/N171 ), .B(n18), .C(\dp/N131 ), .D(n13), .Y(
        \dp/n165 ) );
  AOI22X1 \dp/U183  ( .A(\dp/N172 ), .B(n18), .C(\dp/N132 ), .D(n13), .Y(
        \dp/n164 ) );
  AOI22X1 \dp/U182  ( .A(\dp/N173 ), .B(n18), .C(\dp/N133 ), .D(n13), .Y(
        \dp/n163 ) );
  AOI22X1 \dp/U181  ( .A(\dp/N174 ), .B(n18), .C(\dp/N134 ), .D(n13), .Y(
        \dp/n162 ) );
  AOI22X1 \dp/U180  ( .A(\dp/N175 ), .B(n17), .C(\dp/N135 ), .D(n13), .Y(
        \dp/n161 ) );
  AOI22X1 \dp/U179  ( .A(\dp/N176 ), .B(n17), .C(\dp/N136 ), .D(n13), .Y(
        \dp/n160 ) );
  AOI22X1 \dp/U178  ( .A(\dp/N177 ), .B(n17), .C(\dp/N137 ), .D(n13), .Y(
        \dp/n159 ) );
  AOI22X1 \dp/U177  ( .A(\dp/N178 ), .B(n17), .C(\dp/N138 ), .D(n13), .Y(
        \dp/n158 ) );
  AOI22X1 \dp/U176  ( .A(\dp/N187 ), .B(n17), .C(\dp/N147 ), .D(n13), .Y(
        \dp/n157 ) );
  AOI22X1 \dp/U175  ( .A(\dp/N188 ), .B(n17), .C(\dp/N148 ), .D(n13), .Y(
        \dp/n156 ) );
  AOI22X1 \dp/U174  ( .A(\dp/N189 ), .B(n17), .C(\dp/N149 ), .D(n13), .Y(
        \dp/n155 ) );
  AOI22X1 \dp/U173  ( .A(\dp/N190 ), .B(n16), .C(\dp/N150 ), .D(n13), .Y(
        \dp/n154 ) );
  AOI22X1 \dp/U172  ( .A(\dp/N191 ), .B(n16), .C(\dp/N151 ), .D(n13), .Y(
        \dp/n153 ) );
  AOI22X1 \dp/U171  ( .A(\dp/N192 ), .B(n16), .C(\dp/N152 ), .D(\dp/n142 ), 
        .Y(\dp/n152 ) );
  AOI22X1 \dp/U170  ( .A(\dp/N193 ), .B(n16), .C(\dp/N153 ), .D(\dp/n142 ), 
        .Y(\dp/n151 ) );
  AOI22X1 \dp/U169  ( .A(\dp/N194 ), .B(n16), .C(\dp/N154 ), .D(\dp/n142 ), 
        .Y(\dp/n150 ) );
  AOI22X1 \dp/U168  ( .A(\dp/N195 ), .B(n16), .C(\dp/N155 ), .D(\dp/n142 ), 
        .Y(\dp/n149 ) );
  AOI22X1 \dp/U167  ( .A(\dp/N196 ), .B(n16), .C(\dp/N156 ), .D(\dp/n142 ), 
        .Y(\dp/n148 ) );
  AOI22X1 \dp/U166  ( .A(\dp/N197 ), .B(n15), .C(\dp/N157 ), .D(\dp/n142 ), 
        .Y(\dp/n147 ) );
  AOI22X1 \dp/U165  ( .A(\dp/N198 ), .B(n15), .C(\dp/N158 ), .D(\dp/n142 ), 
        .Y(\dp/n146 ) );
  AOI22X1 \dp/U164  ( .A(\dp/N199 ), .B(n15), .C(\dp/N159 ), .D(\dp/n142 ), 
        .Y(\dp/n145 ) );
  AOI22X1 \dp/U163  ( .A(\dp/N200 ), .B(n14), .C(\dp/N160 ), .D(\dp/n142 ), 
        .Y(\dp/n144 ) );
  AOI22X1 \dp/U162  ( .A(\dp/N201 ), .B(n14), .C(\dp/N161 ), .D(\dp/n142 ), 
        .Y(\dp/n143 ) );
  AOI22X1 \dp/U161  ( .A(\dp/N202 ), .B(n14), .C(\dp/N162 ), .D(\dp/n142 ), 
        .Y(\dp/n141 ) );
  NAND2X1 \dp/U160  ( .A(n9), .B(n11), .Y(\dp/n138 ) );
  NAND2X1 \dp/U159  ( .A(counter[1]), .B(n10), .Y(\dp/n137 ) );
  NAND2X1 \dp/U158  ( .A(n123), .B(n10), .Y(\dp/n140 ) );
  NAND3X1 \dp/U157  ( .A(n9), .B(n10), .C(counter[0]), .Y(\dp/n133 ) );
  OAI21X1 \dp/U156  ( .A(n9), .B(\dp/n140 ), .C(\dp/n133 ), .Y(\dp/n139 ) );
  NAND2X1 \dp/U155  ( .A(\dp/n139 ), .B(n11), .Y(\dp/n135 ) );
  OAI21X1 \dp/U154  ( .A(counter[3]), .B(\dp/n137 ), .C(\dp/n135 ), .Y(
        \dp/ROM_VALUE [2]) );
  OAI21X1 \dp/U153  ( .A(n10), .B(\dp/n138 ), .C(n117), .Y(\dp/ROM_VALUE [0])
         );
  OAI21X1 \dp/U152  ( .A(counter[1]), .B(counter[0]), .C(\dp/n137 ), .Y(
        \dp/n136 ) );
  NOR2X1 \dp/U151  ( .A(counter[3]), .B(counter[2]), .Y(\dp/n134 ) );
  NAND3X1 \dp/U150  ( .A(n123), .B(n9), .C(\dp/n134 ), .Y(\dp/n132 ) );
  OAI21X1 \dp/U149  ( .A(counter[3]), .B(\dp/n133 ), .C(\dp/n132 ), .Y(
        \dp/ROM_VALUE [4]) );
  NOR2X1 \dp/U146  ( .A(\dp/n124 ), .B(n57), .Y(\dp/n107 ) );
  NOR2X1 \dp/U145  ( .A(\dp/n124 ), .B(\dp/n107 ), .Y(\dp/n106 ) );
  AOI22X1 \dp/U144  ( .A(\dp/theta_regb [0]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[0]), .Y(\dp/n131 ) );
  OAI21X1 \dp/U143  ( .A(n8), .B(n113), .C(\dp/n131 ), .Y(\dp/n197 ) );
  AOI22X1 \dp/U142  ( .A(\dp/theta_regb [1]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[1]), .Y(\dp/n130 ) );
  OAI21X1 \dp/U141  ( .A(n8), .B(n73), .C(\dp/n130 ), .Y(\dp/n196 ) );
  AOI22X1 \dp/U140  ( .A(\dp/theta_regb [2]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[2]), .Y(\dp/n129 ) );
  OAI21X1 \dp/U139  ( .A(n8), .B(n72), .C(\dp/n129 ), .Y(\dp/n195 ) );
  AOI22X1 \dp/U138  ( .A(\dp/theta_regb [3]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[3]), .Y(\dp/n128 ) );
  OAI21X1 \dp/U137  ( .A(n8), .B(n71), .C(\dp/n128 ), .Y(\dp/n194 ) );
  AOI22X1 \dp/U136  ( .A(\dp/theta_regb [4]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[4]), .Y(\dp/n127 ) );
  OAI21X1 \dp/U135  ( .A(n8), .B(n70), .C(\dp/n127 ), .Y(\dp/n193 ) );
  AOI22X1 \dp/U134  ( .A(\dp/theta_regb [5]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[5]), .Y(\dp/n126 ) );
  OAI21X1 \dp/U133  ( .A(n8), .B(n69), .C(\dp/n126 ), .Y(\dp/n192 ) );
  AOI22X1 \dp/U132  ( .A(\dp/theta_regb [6]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[6]), .Y(\dp/n125 ) );
  OAI21X1 \dp/U131  ( .A(n8), .B(n74), .C(\dp/n125 ), .Y(\dp/n191 ) );
  AOI22X1 \dp/U130  ( .A(\dp/theta_regb [7]), .B(\dp/n124 ), .C(\dp/n106 ), 
        .D(in_port0[7]), .Y(\dp/n123 ) );
  OAI21X1 \dp/U129  ( .A(n8), .B(n112), .C(\dp/n123 ), .Y(\dp/n190 ) );
  AOI22X1 \dp/U128  ( .A(in_port1[0]), .B(n1), .C(out_port1[0]), .D(n12), .Y(
        \dp/n122 ) );
  OAI21X1 \dp/U127  ( .A(n8), .B(n105), .C(\dp/n122 ), .Y(\dp/n189 ) );
  AOI22X1 \dp/U126  ( .A(in_port1[1]), .B(n1), .C(out_port1[1]), .D(n12), .Y(
        \dp/n121 ) );
  OAI21X1 \dp/U125  ( .A(n8), .B(n104), .C(\dp/n121 ), .Y(\dp/n188 ) );
  AOI22X1 \dp/U124  ( .A(in_port1[2]), .B(n1), .C(out_port1[2]), .D(n12), .Y(
        \dp/n120 ) );
  OAI21X1 \dp/U123  ( .A(n8), .B(n103), .C(\dp/n120 ), .Y(\dp/n187 ) );
  AOI22X1 \dp/U122  ( .A(in_port1[3]), .B(n1), .C(out_port1[3]), .D(n12), .Y(
        \dp/n119 ) );
  OAI21X1 \dp/U121  ( .A(n8), .B(n102), .C(\dp/n119 ), .Y(\dp/n186 ) );
  AOI22X1 \dp/U120  ( .A(in_port1[4]), .B(n1), .C(out_port1[4]), .D(n12), .Y(
        \dp/n118 ) );
  OAI21X1 \dp/U119  ( .A(n8), .B(n101), .C(\dp/n118 ), .Y(\dp/n185 ) );
  AOI22X1 \dp/U118  ( .A(in_port1[5]), .B(n1), .C(out_port1[5]), .D(n12), .Y(
        \dp/n117 ) );
  OAI21X1 \dp/U117  ( .A(n8), .B(n100), .C(\dp/n117 ), .Y(\dp/n184 ) );
  AOI22X1 \dp/U116  ( .A(in_port1[6]), .B(n1), .C(out_port1[6]), .D(n12), .Y(
        \dp/n116 ) );
  OAI21X1 \dp/U115  ( .A(n8), .B(n108), .C(\dp/n116 ), .Y(\dp/n183 ) );
  AOI22X1 \dp/U114  ( .A(in_port1[7]), .B(n1), .C(out_port1[7]), .D(n12), .Y(
        \dp/n115 ) );
  OAI21X1 \dp/U113  ( .A(n8), .B(n111), .C(\dp/n115 ), .Y(\dp/n182 ) );
  AOI22X1 \dp/U112  ( .A(in_port0[0]), .B(n1), .C(n12), .D(\dp/x_regb [0]), 
        .Y(\dp/n114 ) );
  OAI21X1 \dp/U111  ( .A(n8), .B(n88), .C(\dp/n114 ), .Y(\dp/n181 ) );
  AOI22X1 \dp/U110  ( .A(in_port0[1]), .B(n1), .C(\dp/x_rega [1]), .D(
        \dp/n107 ), .Y(\dp/n112 ) );
  NOR2X1 \dp/U109  ( .A(\dp/n107 ), .B(n1), .Y(\dp/n105 ) );
  AOI21X1 \dp/U108  ( .A(\dp/n105 ), .B(\dp/x_regb [1]), .C(\dp/n106 ), .Y(
        \dp/n113 ) );
  NAND2X1 \dp/U107  ( .A(\dp/n112 ), .B(\dp/n113 ), .Y(\dp/n180 ) );
  AOI22X1 \dp/U106  ( .A(in_port0[2]), .B(n1), .C(\dp/x_rega [2]), .D(
        \dp/n107 ), .Y(\dp/n110 ) );
  AOI21X1 \dp/U105  ( .A(\dp/n105 ), .B(\dp/x_regb [2]), .C(\dp/n106 ), .Y(
        \dp/n111 ) );
  NAND2X1 \dp/U104  ( .A(\dp/n110 ), .B(\dp/n111 ), .Y(\dp/n179 ) );
  AOI22X1 \dp/U103  ( .A(in_port0[3]), .B(n1), .C(n12), .D(\dp/x_regb [3]), 
        .Y(\dp/n109 ) );
  OAI21X1 \dp/U102  ( .A(n8), .B(n87), .C(\dp/n109 ), .Y(\dp/n178 ) );
  AOI22X1 \dp/U101  ( .A(in_port0[4]), .B(n1), .C(n12), .D(\dp/x_regb [4]), 
        .Y(\dp/n108 ) );
  OAI21X1 \dp/U100  ( .A(n8), .B(n86), .C(\dp/n108 ), .Y(\dp/n177 ) );
  AOI22X1 \dp/U99  ( .A(in_port0[5]), .B(n1), .C(\dp/x_rega [5]), .D(\dp/n107 ), .Y(\dp/n103 ) );
  AOI21X1 \dp/U98  ( .A(\dp/n105 ), .B(\dp/x_regb [5]), .C(\dp/n106 ), .Y(
        \dp/n104 ) );
  NAND2X1 \dp/U97  ( .A(\dp/n103 ), .B(\dp/n104 ), .Y(\dp/n176 ) );
  AOI22X1 \dp/U96  ( .A(in_port0[6]), .B(n1), .C(n12), .D(\dp/x_regb [6]), .Y(
        \dp/n102 ) );
  OAI21X1 \dp/U95  ( .A(n8), .B(n85), .C(\dp/n102 ), .Y(\dp/n175 ) );
  AOI22X1 \dp/U94  ( .A(in_port0[7]), .B(n1), .C(n12), .D(\dp/x_regb [7]), .Y(
        \dp/n99 ) );
  OAI21X1 \dp/U93  ( .A(n8), .B(n91), .C(\dp/n99 ), .Y(\dp/n174 ) );
  AOI22X1 \dp/U92  ( .A(cordic_mode), .B(\dp/theta_regb [0]), .C(n7), .D(
        \dp/x_regb [0]), .Y(\dp/n98 ) );
  AOI22X1 \dp/U91  ( .A(cordic_mode), .B(\dp/theta_regb [1]), .C(n7), .D(
        \dp/x_regb [1]), .Y(\dp/n97 ) );
  AOI22X1 \dp/U90  ( .A(cordic_mode), .B(\dp/theta_regb [2]), .C(n7), .D(
        \dp/x_regb [2]), .Y(\dp/n96 ) );
  AOI22X1 \dp/U89  ( .A(cordic_mode), .B(\dp/theta_regb [3]), .C(n7), .D(
        \dp/x_regb [3]), .Y(\dp/n95 ) );
  AOI22X1 \dp/U88  ( .A(cordic_mode), .B(\dp/theta_regb [4]), .C(n7), .D(
        \dp/x_regb [4]), .Y(\dp/n94 ) );
  AOI22X1 \dp/U87  ( .A(cordic_mode), .B(\dp/theta_regb [5]), .C(n7), .D(
        \dp/x_regb [5]), .Y(\dp/n93 ) );
  AOI22X1 \dp/U86  ( .A(cordic_mode), .B(\dp/theta_regb [6]), .C(n7), .D(
        \dp/x_regb [6]), .Y(\dp/n92 ) );
  AOI22X1 \dp/U85  ( .A(cordic_mode), .B(\dp/theta_regb [7]), .C(n7), .D(
        \dp/x_regb [7]), .Y(\dp/n91 ) );
  AND2X2 \dp/U4  ( .A(\dp/n136 ), .B(n11), .Y(\dp/ROM_VALUE [1]) );
  DFFNEGX1 \dp/theta_rega_reg[5]  ( .D(\dp/n192 ), .CLK(clka), .Q(
        \dp/theta_rega [5]) );
  DFFNEGX1 \dp/theta_regb_reg[5]  ( .D(n46), .CLK(clkb), .Q(\dp/theta_regb [5]) );
  DFFNEGX1 \dp/theta_rega_reg[4]  ( .D(\dp/n193 ), .CLK(clka), .Q(
        \dp/theta_rega [4]) );
  DFFNEGX1 \dp/theta_regb_reg[4]  ( .D(n45), .CLK(clkb), .Q(\dp/theta_regb [4]) );
  DFFNEGX1 \dp/theta_rega_reg[3]  ( .D(\dp/n194 ), .CLK(clka), .Q(
        \dp/theta_rega [3]) );
  DFFNEGX1 \dp/theta_regb_reg[3]  ( .D(n44), .CLK(n21), .Q(\dp/theta_regb [3])
         );
  DFFNEGX1 \dp/theta_rega_reg[2]  ( .D(\dp/n195 ), .CLK(clka), .Q(
        \dp/theta_rega [2]) );
  DFFNEGX1 \dp/theta_regb_reg[2]  ( .D(n43), .CLK(n21), .Q(\dp/theta_regb [2])
         );
  DFFNEGX1 \dp/theta_rega_reg[1]  ( .D(\dp/n196 ), .CLK(clka), .Q(
        \dp/theta_rega [1]) );
  DFFNEGX1 \dp/theta_regb_reg[1]  ( .D(n42), .CLK(n21), .Q(\dp/theta_regb [1])
         );
  DFFNEGX1 \dp/theta_rega_reg[6]  ( .D(\dp/n191 ), .CLK(clka), .Q(
        \dp/theta_rega [6]) );
  DFFNEGX1 \dp/theta_regb_reg[6]  ( .D(n47), .CLK(n21), .Q(\dp/theta_regb [6])
         );
  DFFNEGX1 \dp/x_rega_reg[6]  ( .D(\dp/n175 ), .CLK(clka), .Q(\dp/x_rega [6])
         );
  DFFNEGX1 \dp/x_regb_reg[6]  ( .D(n31), .CLK(n21), .Q(\dp/x_regb [6]) );
  DFFNEGX1 \dp/x_rega_reg[5]  ( .D(\dp/n176 ), .CLK(clka), .Q(\dp/x_rega [5])
         );
  DFFNEGX1 \dp/x_regb_reg[5]  ( .D(n30), .CLK(n21), .Q(\dp/x_regb [5]) );
  DFFNEGX1 \dp/x_rega_reg[4]  ( .D(\dp/n177 ), .CLK(clka), .Q(\dp/x_rega [4])
         );
  DFFNEGX1 \dp/x_regb_reg[4]  ( .D(n29), .CLK(n21), .Q(\dp/x_regb [4]) );
  DFFNEGX1 \dp/x_rega_reg[3]  ( .D(\dp/n178 ), .CLK(clka), .Q(\dp/x_rega [3])
         );
  DFFNEGX1 \dp/x_regb_reg[3]  ( .D(n28), .CLK(n21), .Q(\dp/x_regb [3]) );
  DFFNEGX1 \dp/x_rega_reg[2]  ( .D(\dp/n179 ), .CLK(clka), .Q(\dp/x_rega [2])
         );
  DFFNEGX1 \dp/x_regb_reg[2]  ( .D(n27), .CLK(n21), .Q(\dp/x_regb [2]) );
  DFFNEGX1 \dp/x_rega_reg[1]  ( .D(\dp/n180 ), .CLK(clka), .Q(\dp/x_rega [1])
         );
  DFFNEGX1 \dp/x_regb_reg[1]  ( .D(n26), .CLK(n21), .Q(\dp/x_regb [1]) );
  DFFNEGX1 \dp/x_rega_reg[0]  ( .D(\dp/n181 ), .CLK(clka), .Q(\dp/x_rega [0])
         );
  DFFNEGX1 \dp/x_regb_reg[0]  ( .D(n25), .CLK(n21), .Q(\dp/x_regb [0]) );
  DFFNEGX1 \dp/x_rega_reg[7]  ( .D(\dp/n174 ), .CLK(clka), .Q(\dp/x_rega [7])
         );
  DFFNEGX1 \dp/x_regb_reg[7]  ( .D(n32), .CLK(n21), .Q(\dp/x_regb [7]) );
  DFFNEGX1 \dp/y_rega_reg[5]  ( .D(\dp/n184 ), .CLK(clka), .Q(\dp/y_rega [5])
         );
  DFFNEGX1 \dp/y_regb_reg[5]  ( .D(n38), .CLK(n21), .Q(out_port1[5]) );
  DFFNEGX1 \dp/y_rega_reg[4]  ( .D(\dp/n185 ), .CLK(clka), .Q(\dp/y_rega [4])
         );
  DFFNEGX1 \dp/y_regb_reg[4]  ( .D(n37), .CLK(n20), .Q(out_port1[4]) );
  DFFNEGX1 \dp/y_rega_reg[3]  ( .D(\dp/n186 ), .CLK(clka), .Q(\dp/y_rega [3])
         );
  DFFNEGX1 \dp/y_regb_reg[3]  ( .D(n36), .CLK(n20), .Q(out_port1[3]) );
  DFFNEGX1 \dp/y_rega_reg[2]  ( .D(\dp/n187 ), .CLK(clka), .Q(\dp/y_rega [2])
         );
  DFFNEGX1 \dp/y_regb_reg[2]  ( .D(n35), .CLK(n20), .Q(out_port1[2]) );
  DFFNEGX1 \dp/y_rega_reg[1]  ( .D(\dp/n188 ), .CLK(clka), .Q(\dp/y_rega [1])
         );
  DFFNEGX1 \dp/y_regb_reg[1]  ( .D(n34), .CLK(n20), .Q(out_port1[1]) );
  DFFNEGX1 \dp/y_rega_reg[0]  ( .D(\dp/n189 ), .CLK(clka), .Q(\dp/y_rega [0])
         );
  DFFNEGX1 \dp/y_regb_reg[0]  ( .D(n33), .CLK(n20), .Q(out_port1[0]) );
  DFFNEGX1 \dp/y_rega_reg[6]  ( .D(\dp/n183 ), .CLK(clka), .Q(\dp/y_rega [6])
         );
  DFFNEGX1 \dp/y_regb_reg[6]  ( .D(n39), .CLK(n20), .Q(out_port1[6]) );
  DFFNEGX1 \dp/y_rega_reg[7]  ( .D(\dp/n182 ), .CLK(clka), .Q(\dp/y_rega [7])
         );
  DFFNEGX1 \dp/y_regb_reg[7]  ( .D(n40), .CLK(n20), .Q(out_port1[7]) );
  DFFNEGX1 \dp/theta_rega_reg[7]  ( .D(\dp/n190 ), .CLK(clka), .Q(
        \dp/theta_rega [7]) );
  DFFNEGX1 \dp/theta_regb_reg[7]  ( .D(n48), .CLK(n20), .Q(\dp/theta_regb [7])
         );
  DFFNEGX1 \dp/theta_rega_reg[0]  ( .D(\dp/n197 ), .CLK(clka), .Q(
        \dp/theta_rega [0]) );
  DFFNEGX1 \dp/theta_regb_reg[0]  ( .D(n41), .CLK(n20), .Q(\dp/theta_regb [0])
         );
  DFFNEGX1 \dp/next_counter_reg[3]  ( .D(counter[3]), .CLK(n20), .Q(
        \dp/next_counter [3]) );
  DFFNEGX1 \dp/counter_reg[3]  ( .D(\dp/N119 ), .CLK(clka), .Q(counter[3]) );
  DFFNEGX1 \dp/next_counter_reg[2]  ( .D(counter[2]), .CLK(n20), .Q(
        \dp/next_counter [2]) );
  DFFNEGX1 \dp/counter_reg[2]  ( .D(\dp/N118 ), .CLK(clka), .Q(counter[2]) );
  DFFNEGX1 \dp/next_counter_reg[1]  ( .D(counter[1]), .CLK(n20), .Q(
        \dp/next_counter [1]) );
  DFFNEGX1 \dp/counter_reg[1]  ( .D(\dp/N117 ), .CLK(clka), .Q(counter[1]) );
  DFFNEGX1 \dp/counter_reg[0]  ( .D(\dp/N116 ), .CLK(clka), .Q(counter[0]) );
  DFFNEGX1 \dp/next_counter_reg[0]  ( .D(counter[0]), .CLK(n20), .Q(
        \dp/next_counter [0]) );
  FAX1 \dp/sub_72/U2_1  ( .A(\dp/x_rega [1]), .B(n96), .C(\dp/sub_72/carry [1]), .YC(\dp/sub_72/carry [2]), .YS(\dp/N132 ) );
  FAX1 \dp/sub_72/U2_2  ( .A(\dp/x_rega [2]), .B(n95), .C(\dp/sub_72/carry [2]), .YC(\dp/sub_72/carry [3]), .YS(\dp/N133 ) );
  FAX1 \dp/sub_72/U2_3  ( .A(\dp/x_rega [3]), .B(n99), .C(\dp/sub_72/carry [3]), .YC(\dp/sub_72/carry [4]), .YS(\dp/N134 ) );
  FAX1 \dp/sub_72/U2_4  ( .A(\dp/x_rega [4]), .B(n93), .C(\dp/sub_72/carry [4]), .YC(\dp/sub_72/carry [5]), .YS(\dp/N135 ) );
  FAX1 \dp/sub_72/U2_5  ( .A(\dp/x_rega [5]), .B(n97), .C(\dp/sub_72/carry [5]), .YC(\dp/sub_72/carry [6]), .YS(\dp/N136 ) );
  FAX1 \dp/sub_72/U2_6  ( .A(\dp/x_rega [6]), .B(n106), .C(
        \dp/sub_72/carry [6]), .YC(\dp/sub_72/carry [7]), .YS(\dp/N137 ) );
  FAX1 \dp/sub_72/U2_7  ( .A(\dp/x_rega [7]), .B(n109), .C(
        \dp/sub_72/carry [7]), .YC(), .YS(\dp/N138 ) );
  FAX1 \dp/add_73/U1_1  ( .A(\dp/y_rega [1]), .B(\dp/N140 ), .C(n3), .YC(
        \dp/add_73/carry [2]), .YS(\dp/N148 ) );
  FAX1 \dp/add_73/U1_2  ( .A(\dp/y_rega [2]), .B(\dp/N141 ), .C(
        \dp/add_73/carry [2]), .YC(\dp/add_73/carry [3]), .YS(\dp/N149 ) );
  FAX1 \dp/add_73/U1_3  ( .A(\dp/y_rega [3]), .B(\dp/N142 ), .C(
        \dp/add_73/carry [3]), .YC(\dp/add_73/carry [4]), .YS(\dp/N150 ) );
  FAX1 \dp/add_73/U1_4  ( .A(\dp/y_rega [4]), .B(\dp/N143 ), .C(
        \dp/add_73/carry [4]), .YC(\dp/add_73/carry [5]), .YS(\dp/N151 ) );
  FAX1 \dp/add_73/U1_5  ( .A(\dp/y_rega [5]), .B(\dp/N144 ), .C(
        \dp/add_73/carry [5]), .YC(\dp/add_73/carry [6]), .YS(\dp/N152 ) );
  FAX1 \dp/add_73/U1_6  ( .A(\dp/y_rega [6]), .B(\dp/N145 ), .C(
        \dp/add_73/carry [6]), .YC(\dp/add_73/carry [7]), .YS(\dp/N153 ) );
  FAX1 \dp/add_73/U1_7  ( .A(\dp/y_rega [7]), .B(\dp/N146 ), .C(
        \dp/add_73/carry [7]), .YC(), .YS(\dp/N154 ) );
  FAX1 \dp/sub_74/U2_1  ( .A(\dp/theta_rega [1]), .B(n118), .C(
        \dp/sub_74/carry [1]), .YC(\dp/sub_74/carry [2]), .YS(\dp/N156 ) );
  FAX1 \dp/sub_74/U2_2  ( .A(\dp/theta_rega [2]), .B(n117), .C(
        \dp/sub_74/carry [2]), .YC(\dp/sub_74/carry [3]), .YS(\dp/N157 ) );
  FAX1 \dp/sub_74/U2_3  ( .A(\dp/theta_rega [3]), .B(\dp/n135 ), .C(
        \dp/sub_74/carry [3]), .YC(\dp/sub_74/carry [4]), .YS(\dp/N158 ) );
  FAX1 \dp/sub_74/U2_4  ( .A(\dp/theta_rega [4]), .B(n120), .C(
        \dp/sub_74/carry [4]), .YC(\dp/sub_74/carry [5]), .YS(\dp/N159 ) );
  FAX1 \dp/sub_74/U2_5  ( .A(\dp/theta_rega [5]), .B(\dp/n132 ), .C(
        \dp/sub_74/carry [5]), .YC(\dp/sub_74/carry [6]), .YS(\dp/N160 ) );
  FAX1 \dp/add_77/U1_1  ( .A(\dp/x_rega [1]), .B(\dp/N124 ), .C(n2), .YC(
        \dp/add_77/carry [2]), .YS(\dp/N172 ) );
  FAX1 \dp/add_77/U1_2  ( .A(\dp/x_rega [2]), .B(\dp/N125 ), .C(
        \dp/add_77/carry [2]), .YC(\dp/add_77/carry [3]), .YS(\dp/N173 ) );
  FAX1 \dp/add_77/U1_3  ( .A(\dp/x_rega [3]), .B(\dp/N126 ), .C(
        \dp/add_77/carry [3]), .YC(\dp/add_77/carry [4]), .YS(\dp/N174 ) );
  FAX1 \dp/add_77/U1_4  ( .A(\dp/x_rega [4]), .B(\dp/N127 ), .C(
        \dp/add_77/carry [4]), .YC(\dp/add_77/carry [5]), .YS(\dp/N175 ) );
  FAX1 \dp/add_77/U1_5  ( .A(\dp/x_rega [5]), .B(\dp/N128 ), .C(
        \dp/add_77/carry [5]), .YC(\dp/add_77/carry [6]), .YS(\dp/N176 ) );
  FAX1 \dp/add_77/U1_6  ( .A(\dp/x_rega [6]), .B(\dp/N129 ), .C(
        \dp/add_77/carry [6]), .YC(\dp/add_77/carry [7]), .YS(\dp/N177 ) );
  FAX1 \dp/add_77/U1_7  ( .A(\dp/x_rega [7]), .B(\dp/N130 ), .C(
        \dp/add_77/carry [7]), .YC(), .YS(\dp/N178 ) );
  FAX1 \dp/sub_78/U2_1  ( .A(\dp/y_rega [1]), .B(n81), .C(\dp/sub_78/carry [1]), .YC(\dp/sub_78/carry [2]), .YS(\dp/N188 ) );
  FAX1 \dp/sub_78/U2_2  ( .A(\dp/y_rega [2]), .B(n78), .C(\dp/sub_78/carry [2]), .YC(\dp/sub_78/carry [3]), .YS(\dp/N189 ) );
  FAX1 \dp/sub_78/U2_3  ( .A(\dp/y_rega [3]), .B(n84), .C(\dp/sub_78/carry [3]), .YC(\dp/sub_78/carry [4]), .YS(\dp/N190 ) );
  FAX1 \dp/sub_78/U2_4  ( .A(\dp/y_rega [4]), .B(n76), .C(\dp/sub_78/carry [4]), .YC(\dp/sub_78/carry [5]), .YS(\dp/N191 ) );
  FAX1 \dp/sub_78/U2_5  ( .A(\dp/y_rega [5]), .B(n82), .C(\dp/sub_78/carry [5]), .YC(\dp/sub_78/carry [6]), .YS(\dp/N192 ) );
  FAX1 \dp/sub_78/U2_6  ( .A(\dp/y_rega [6]), .B(n79), .C(\dp/sub_78/carry [6]), .YC(\dp/sub_78/carry [7]), .YS(\dp/N193 ) );
  FAX1 \dp/sub_78/U2_7  ( .A(\dp/y_rega [7]), .B(n89), .C(\dp/sub_78/carry [7]), .YC(), .YS(\dp/N194 ) );
  FAX1 \dp/add_79/U1_1  ( .A(\dp/theta_rega [1]), .B(\dp/ROM_VALUE [1]), .C(n4), .YC(\dp/add_79/carry [2]), .YS(\dp/N196 ) );
  FAX1 \dp/add_79/U1_2  ( .A(\dp/theta_rega [2]), .B(\dp/ROM_VALUE [2]), .C(
        \dp/add_79/carry [2]), .YC(\dp/add_79/carry [3]), .YS(\dp/N197 ) );
  FAX1 \dp/add_79/U1_3  ( .A(\dp/theta_rega [3]), .B(n116), .C(
        \dp/add_79/carry [3]), .YC(\dp/add_79/carry [4]), .YS(\dp/N198 ) );
  FAX1 \dp/add_79/U1_4  ( .A(\dp/theta_rega [4]), .B(\dp/ROM_VALUE [4]), .C(
        \dp/add_79/carry [4]), .YC(\dp/add_79/carry [5]), .YS(\dp/N199 ) );
  FAX1 \dp/add_79/U1_5  ( .A(\dp/theta_rega [5]), .B(n119), .C(
        \dp/add_79/carry [5]), .YC(\dp/add_79/carry [6]), .YS(\dp/N200 ) );
  AND2X2 U1 ( .A(in_mux_ctl[1]), .B(n57), .Y(n1) );
  AND2X2 U2 ( .A(\dp/N123 ), .B(\dp/x_rega [0]), .Y(n2) );
  AND2X2 U3 ( .A(\dp/N139 ), .B(\dp/y_rega [0]), .Y(n3) );
  AND2X2 U4 ( .A(\dp/ROM_VALUE [0]), .B(\dp/theta_rega [0]), .Y(n4) );
  AND2X2 U5 ( .A(\dp/add_79/carry [6]), .B(\dp/theta_rega [6]), .Y(n5) );
  INVX2 U6 ( .A(\dp/n107 ), .Y(n8) );
  INVX2 U7 ( .A(n15), .Y(n13) );
  INVX2 U8 ( .A(n22), .Y(n20) );
  INVX2 U9 ( .A(n22), .Y(n21) );
  BUFX2 U10 ( .A(n19), .Y(n15) );
  BUFX2 U11 ( .A(n19), .Y(n14) );
  BUFX2 U12 ( .A(n19), .Y(n17) );
  BUFX2 U13 ( .A(n19), .Y(n16) );
  BUFX2 U14 ( .A(n19), .Y(n18) );
  INVX2 U15 ( .A(n6), .Y(n12) );
  INVX2 U16 ( .A(cordic_mode), .Y(n7) );
  INVX2 U17 ( .A(counter[0]), .Y(n123) );
  INVX2 U18 ( .A(counter[1]), .Y(n9) );
  INVX2 U19 ( .A(counter[3]), .Y(n11) );
  INVX2 U20 ( .A(counter[2]), .Y(n10) );
  INVX2 U21 ( .A(clkb), .Y(n22) );
  OR2X1 U22 ( .A(n57), .B(in_mux_ctl[1]), .Y(n6) );
  INVX2 U23 ( .A(\dp/n142 ), .Y(n19) );
  OR2X1 U24 ( .A(\dp/x_rega [0]), .B(n92), .Y(\dp/sub_72/carry [1]) );
  XNOR2X1 U25 ( .A(n92), .B(\dp/x_rega [0]), .Y(\dp/N131 ) );
  OR2X1 U26 ( .A(\dp/theta_rega [6]), .B(\dp/sub_74/carry [6]), .Y(
        \dp/sub_74/carry [7]) );
  XNOR2X1 U27 ( .A(\dp/sub_74/carry [6]), .B(\dp/theta_rega [6]), .Y(\dp/N161 ) );
  XNOR2X1 U28 ( .A(\dp/theta_rega [7]), .B(\dp/sub_74/carry [7]), .Y(\dp/N162 ) );
  OR2X1 U29 ( .A(\dp/theta_rega [0]), .B(n115), .Y(\dp/sub_74/carry [1]) );
  XNOR2X1 U30 ( .A(n115), .B(\dp/theta_rega [0]), .Y(\dp/N155 ) );
  OR2X1 U31 ( .A(\dp/y_rega [0]), .B(n75), .Y(\dp/sub_78/carry [1]) );
  XNOR2X1 U32 ( .A(n75), .B(\dp/y_rega [0]), .Y(\dp/N187 ) );
  XOR2X1 U33 ( .A(\dp/N139 ), .B(\dp/y_rega [0]), .Y(\dp/N147 ) );
  XOR2X1 U34 ( .A(\dp/N123 ), .B(\dp/x_rega [0]), .Y(\dp/N171 ) );
  XOR2X1 U35 ( .A(\dp/ROM_VALUE [0]), .B(\dp/theta_rega [0]), .Y(\dp/N195 ) );
  XOR2X1 U36 ( .A(\dp/add_79/carry [6]), .B(\dp/theta_rega [6]), .Y(\dp/N201 )
         );
  XOR2X1 U37 ( .A(\dp/theta_rega [7]), .B(n5), .Y(\dp/N202 ) );
  OR2X2 U38 ( .A(n12), .B(n1), .Y(\dp/n124 ) );
  INVX2 U39 ( .A(\fsm/n25 ), .Y(n23) );
  INVX2 U40 ( .A(reset), .Y(n24) );
  INVX2 U41 ( .A(\dp/n165 ), .Y(n25) );
  INVX2 U42 ( .A(\dp/n164 ), .Y(n26) );
  INVX2 U43 ( .A(\dp/n163 ), .Y(n27) );
  INVX2 U44 ( .A(\dp/n162 ), .Y(n28) );
  INVX2 U45 ( .A(\dp/n161 ), .Y(n29) );
  INVX2 U46 ( .A(\dp/n160 ), .Y(n30) );
  INVX2 U47 ( .A(\dp/n159 ), .Y(n31) );
  INVX2 U48 ( .A(\dp/n158 ), .Y(n32) );
  INVX2 U49 ( .A(\dp/n157 ), .Y(n33) );
  INVX2 U50 ( .A(\dp/n156 ), .Y(n34) );
  INVX2 U51 ( .A(\dp/n155 ), .Y(n35) );
  INVX2 U52 ( .A(\dp/n154 ), .Y(n36) );
  INVX2 U53 ( .A(\dp/n153 ), .Y(n37) );
  INVX2 U54 ( .A(\dp/n152 ), .Y(n38) );
  INVX2 U55 ( .A(\dp/n151 ), .Y(n39) );
  INVX2 U56 ( .A(\dp/n150 ), .Y(n40) );
  INVX2 U57 ( .A(\dp/n149 ), .Y(n41) );
  INVX2 U58 ( .A(\dp/n148 ), .Y(n42) );
  INVX2 U59 ( .A(\dp/n147 ), .Y(n43) );
  INVX2 U60 ( .A(\dp/n146 ), .Y(n44) );
  INVX2 U61 ( .A(\dp/n145 ), .Y(n45) );
  INVX2 U62 ( .A(\dp/n144 ), .Y(n46) );
  INVX2 U63 ( .A(\dp/n143 ), .Y(n47) );
  INVX2 U64 ( .A(\dp/n141 ), .Y(n48) );
  INVX2 U65 ( .A(\dp/n98 ), .Y(out_port0[0]) );
  INVX2 U66 ( .A(\dp/n97 ), .Y(out_port0[1]) );
  INVX2 U67 ( .A(\dp/n96 ), .Y(out_port0[2]) );
  INVX2 U68 ( .A(\dp/n95 ), .Y(out_port0[3]) );
  INVX2 U69 ( .A(\dp/n94 ), .Y(out_port0[4]) );
  INVX2 U70 ( .A(\dp/n93 ), .Y(out_port0[5]) );
  INVX2 U71 ( .A(\dp/n92 ), .Y(out_port0[6]) );
  INVX2 U72 ( .A(\dp/n91 ), .Y(out_port0[7]) );
  INVX2 U73 ( .A(in_mux_ctl[0]), .Y(n57) );
  INVX2 U74 ( .A(\dp/n169 ), .Y(n58) );
  INVX2 U75 ( .A(counter_rst), .Y(n59) );
  INVX2 U76 ( .A(\dp/n168 ), .Y(n60) );
  INVX2 U77 ( .A(\dp/n170 ), .Y(n61) );
  INVX2 U78 ( .A(\fsm/next_state [1]), .Y(n62) );
  INVX2 U79 ( .A(\fsm/n12 ), .Y(n63) );
  INVX2 U80 ( .A(\fsm/state[1] ), .Y(n64) );
  INVX2 U81 ( .A(\fsm/next_state [0]), .Y(n65) );
  INVX2 U82 ( .A(\fsm/state[2] ), .Y(n66) );
  INVX2 U83 ( .A(\fsm/next_state [2]), .Y(n67) );
  INVX2 U84 ( .A(\fsm/state[0] ), .Y(n68) );
  INVX2 U85 ( .A(\dp/theta_rega [5]), .Y(n69) );
  INVX2 U86 ( .A(\dp/theta_rega [4]), .Y(n70) );
  INVX2 U87 ( .A(\dp/theta_rega [3]), .Y(n71) );
  INVX2 U88 ( .A(\dp/theta_rega [2]), .Y(n72) );
  INVX2 U89 ( .A(\dp/theta_rega [1]), .Y(n73) );
  INVX2 U90 ( .A(\dp/theta_rega [6]), .Y(n74) );
  INVX2 U91 ( .A(\dp/N139 ), .Y(n75) );
  INVX2 U92 ( .A(\dp/N143 ), .Y(n76) );
  INVX2 U93 ( .A(n141), .Y(n77) );
  INVX2 U94 ( .A(\dp/N141 ), .Y(n78) );
  INVX2 U95 ( .A(\dp/N145 ), .Y(n79) );
  INVX2 U96 ( .A(n143), .Y(n80) );
  INVX2 U97 ( .A(\dp/N140 ), .Y(n81) );
  INVX2 U98 ( .A(\dp/N144 ), .Y(n82) );
  INVX2 U99 ( .A(n142), .Y(n83) );
  INVX2 U100 ( .A(\dp/N142 ), .Y(n84) );
  INVX2 U101 ( .A(\dp/x_rega [6]), .Y(n85) );
  INVX2 U102 ( .A(\dp/x_rega [4]), .Y(n86) );
  INVX2 U103 ( .A(\dp/x_rega [3]), .Y(n87) );
  INVX2 U104 ( .A(\dp/x_rega [0]), .Y(n88) );
  INVX2 U105 ( .A(\dp/N146 ), .Y(n89) );
  INVX2 U106 ( .A(n144), .Y(n90) );
  INVX2 U107 ( .A(\dp/x_rega [7]), .Y(n91) );
  INVX2 U108 ( .A(\dp/N123 ), .Y(n92) );
  INVX2 U109 ( .A(\dp/N127 ), .Y(n93) );
  INVX2 U110 ( .A(n162), .Y(n94) );
  INVX2 U111 ( .A(\dp/N125 ), .Y(n95) );
  INVX2 U112 ( .A(\dp/N124 ), .Y(n96) );
  INVX2 U113 ( .A(\dp/N128 ), .Y(n97) );
  INVX2 U114 ( .A(n163), .Y(n98) );
  INVX2 U115 ( .A(\dp/N126 ), .Y(n99) );
  INVX2 U116 ( .A(\dp/y_rega [5]), .Y(n100) );
  INVX2 U117 ( .A(\dp/y_rega [4]), .Y(n101) );
  INVX2 U118 ( .A(\dp/y_rega [3]), .Y(n102) );
  INVX2 U119 ( .A(\dp/y_rega [2]), .Y(n103) );
  INVX2 U120 ( .A(\dp/y_rega [1]), .Y(n104) );
  INVX2 U121 ( .A(\dp/y_rega [0]), .Y(n105) );
  INVX2 U122 ( .A(\dp/N129 ), .Y(n106) );
  INVX2 U123 ( .A(n164), .Y(n107) );
  INVX2 U124 ( .A(\dp/y_rega [6]), .Y(n108) );
  INVX2 U125 ( .A(\dp/N130 ), .Y(n109) );
  INVX2 U126 ( .A(n165), .Y(n110) );
  INVX2 U127 ( .A(\dp/y_rega [7]), .Y(n111) );
  INVX2 U128 ( .A(\dp/theta_rega [7]), .Y(n112) );
  INVX2 U129 ( .A(\dp/theta_rega [0]), .Y(n113) );
  INVX2 U130 ( .A(\dp/next_counter [3]), .Y(n114) );
  INVX2 U131 ( .A(\dp/ROM_VALUE [0]), .Y(n115) );
  INVX2 U132 ( .A(\dp/n135 ), .Y(n116) );
  INVX2 U133 ( .A(\dp/ROM_VALUE [2]), .Y(n117) );
  INVX2 U134 ( .A(\dp/ROM_VALUE [1]), .Y(n118) );
  INVX2 U135 ( .A(\dp/n132 ), .Y(n119) );
  INVX2 U136 ( .A(\dp/ROM_VALUE [4]), .Y(n120) );
  INVX2 U137 ( .A(\dp/next_counter [2]), .Y(n121) );
  INVX2 U138 ( .A(\dp/next_counter [1]), .Y(n122) );
  INVX2 U139 ( .A(\dp/next_counter [0]), .Y(n124) );
  MUX2X1 U140 ( .B(\dp/x_rega [1]), .A(\dp/x_rega [0]), .S(n123), .Y(n125) );
  MUX2X1 U141 ( .B(\dp/x_rega [3]), .A(\dp/x_rega [2]), .S(n123), .Y(n132) );
  MUX2X1 U142 ( .B(n125), .A(n132), .S(counter[1]), .Y(n126) );
  MUX2X1 U143 ( .B(\dp/x_rega [5]), .A(\dp/x_rega [4]), .S(n123), .Y(n131) );
  MUX2X1 U144 ( .B(\dp/x_rega [7]), .A(\dp/x_rega [6]), .S(n123), .Y(n133) );
  MUX2X1 U145 ( .B(n131), .A(n133), .S(counter[1]), .Y(n141) );
  MUX2X1 U146 ( .B(n126), .A(n141), .S(counter[2]), .Y(n127) );
  NOR2X1 U147 ( .A(counter[3]), .B(n127), .Y(\dp/N139 ) );
  MUX2X1 U148 ( .B(\dp/x_rega [2]), .A(\dp/x_rega [1]), .S(n123), .Y(n128) );
  MUX2X1 U149 ( .B(\dp/x_rega [4]), .A(\dp/x_rega [3]), .S(n123), .Y(n137) );
  MUX2X1 U150 ( .B(n128), .A(n137), .S(counter[1]), .Y(n129) );
  MUX2X1 U151 ( .B(\dp/x_rega [6]), .A(\dp/x_rega [5]), .S(n123), .Y(n136) );
  NAND2X1 U152 ( .A(\dp/x_rega [7]), .B(n123), .Y(n138) );
  MUX2X1 U153 ( .B(n136), .A(n138), .S(counter[1]), .Y(n142) );
  MUX2X1 U154 ( .B(n129), .A(n142), .S(counter[2]), .Y(n130) );
  NOR2X1 U155 ( .A(counter[3]), .B(n130), .Y(\dp/N140 ) );
  MUX2X1 U156 ( .B(n132), .A(n131), .S(counter[1]), .Y(n134) );
  NOR2X1 U157 ( .A(n133), .B(counter[1]), .Y(n143) );
  MUX2X1 U158 ( .B(n134), .A(n143), .S(counter[2]), .Y(n135) );
  NOR2X1 U159 ( .A(counter[3]), .B(n135), .Y(\dp/N141 ) );
  MUX2X1 U160 ( .B(n137), .A(n136), .S(counter[1]), .Y(n139) );
  NOR2X1 U161 ( .A(n138), .B(counter[1]), .Y(n144) );
  MUX2X1 U162 ( .B(n139), .A(n144), .S(counter[2]), .Y(n140) );
  NOR2X1 U163 ( .A(counter[3]), .B(n140), .Y(\dp/N142 ) );
  NAND2X1 U164 ( .A(n10), .B(n11), .Y(n145) );
  NOR2X1 U165 ( .A(n77), .B(n145), .Y(\dp/N143 ) );
  NOR2X1 U166 ( .A(n83), .B(n145), .Y(\dp/N144 ) );
  NOR2X1 U167 ( .A(n80), .B(n145), .Y(\dp/N145 ) );
  NOR2X1 U168 ( .A(n90), .B(n145), .Y(\dp/N146 ) );
  MUX2X1 U169 ( .B(\dp/y_rega [1]), .A(\dp/y_rega [0]), .S(n123), .Y(n146) );
  MUX2X1 U170 ( .B(\dp/y_rega [3]), .A(\dp/y_rega [2]), .S(n123), .Y(n153) );
  MUX2X1 U171 ( .B(n146), .A(n153), .S(counter[1]), .Y(n147) );
  MUX2X1 U172 ( .B(\dp/y_rega [5]), .A(\dp/y_rega [4]), .S(n123), .Y(n152) );
  MUX2X1 U173 ( .B(\dp/y_rega [7]), .A(\dp/y_rega [6]), .S(n123), .Y(n154) );
  MUX2X1 U174 ( .B(n152), .A(n154), .S(counter[1]), .Y(n162) );
  MUX2X1 U175 ( .B(n147), .A(n162), .S(counter[2]), .Y(n148) );
  NOR2X1 U176 ( .A(counter[3]), .B(n148), .Y(\dp/N123 ) );
  MUX2X1 U177 ( .B(\dp/y_rega [2]), .A(\dp/y_rega [1]), .S(n123), .Y(n149) );
  MUX2X1 U178 ( .B(\dp/y_rega [4]), .A(\dp/y_rega [3]), .S(n123), .Y(n158) );
  MUX2X1 U179 ( .B(n149), .A(n158), .S(counter[1]), .Y(n150) );
  MUX2X1 U180 ( .B(\dp/y_rega [6]), .A(\dp/y_rega [5]), .S(n123), .Y(n157) );
  NAND2X1 U181 ( .A(\dp/y_rega [7]), .B(n123), .Y(n159) );
  MUX2X1 U182 ( .B(n157), .A(n159), .S(counter[1]), .Y(n163) );
  MUX2X1 U183 ( .B(n150), .A(n163), .S(counter[2]), .Y(n151) );
  NOR2X1 U184 ( .A(counter[3]), .B(n151), .Y(\dp/N124 ) );
  MUX2X1 U185 ( .B(n153), .A(n152), .S(counter[1]), .Y(n155) );
  NOR2X1 U186 ( .A(n154), .B(counter[1]), .Y(n164) );
  MUX2X1 U187 ( .B(n155), .A(n164), .S(counter[2]), .Y(n156) );
  NOR2X1 U188 ( .A(counter[3]), .B(n156), .Y(\dp/N125 ) );
  MUX2X1 U189 ( .B(n158), .A(n157), .S(counter[1]), .Y(n160) );
  NOR2X1 U190 ( .A(n159), .B(counter[1]), .Y(n165) );
  MUX2X1 U191 ( .B(n160), .A(n165), .S(counter[2]), .Y(n161) );
  NOR2X1 U192 ( .A(counter[3]), .B(n161), .Y(\dp/N126 ) );
  NAND2X1 U193 ( .A(n10), .B(n11), .Y(n166) );
  NOR2X1 U194 ( .A(n94), .B(n166), .Y(\dp/N127 ) );
  NOR2X1 U195 ( .A(n98), .B(n166), .Y(\dp/N128 ) );
  NOR2X1 U196 ( .A(n107), .B(n166), .Y(\dp/N129 ) );
  NOR2X1 U197 ( .A(n110), .B(n166), .Y(\dp/N130 ) );
endmodule

