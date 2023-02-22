/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Feb 22 17:22:24 2023
/////////////////////////////////////////////////////////////


module CORDIC_FSM ( clka, clkb, reset, start, cordic_mode, counter, state, 
        in_mux_ctl, counter_rst, counter_hold );
  input [3:0] counter;
  output [2:0] state;
  output [1:0] in_mux_ctl;
  input clka, clkb, reset, start, cordic_mode;
  output counter_rst, counter_hold;
  wire   N42, N43, N44, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [2:0] next_state;

  DFFPOSX1 \state_reg[0]  ( .D(n36), .CLK(clkb), .Q(state[0]) );
  DFFPOSX1 \next_state_reg[2]  ( .D(N44), .CLK(clka), .Q(next_state[2]) );
  DFFPOSX1 \state_reg[2]  ( .D(n35), .CLK(clkb), .Q(state[2]) );
  DFFPOSX1 \next_state_reg[0]  ( .D(N42), .CLK(clka), .Q(next_state[0]) );
  DFFPOSX1 \state_reg[1]  ( .D(n34), .CLK(clkb), .Q(state[1]) );
  DFFPOSX1 \next_state_reg[1]  ( .D(N43), .CLK(clka), .Q(next_state[1]) );
  DFFPOSX1 counter_hold_reg ( .D(n32), .CLK(clkb), .Q(counter_hold) );
  DFFPOSX1 counter_rst_reg ( .D(n33), .CLK(clkb), .Q(counter_rst) );
  DFFPOSX1 \in_mux_ctl_reg[1]  ( .D(n31), .CLK(clkb), .Q(in_mux_ctl[1]) );
  DFFPOSX1 \in_mux_ctl_reg[0]  ( .D(n30), .CLK(clkb), .Q(in_mux_ctl[0]) );
  AND2X2 U3 ( .A(start), .B(cordic_mode), .Y(n27) );
  INVX2 U4 ( .A(next_state[2]), .Y(n1) );
  INVX2 U5 ( .A(n12), .Y(n2) );
  INVX2 U6 ( .A(next_state[1]), .Y(n3) );
  INVX2 U7 ( .A(next_state[0]), .Y(n4) );
  INVX2 U8 ( .A(n25), .Y(n5) );
  INVX2 U9 ( .A(state[2]), .Y(n6) );
  INVX2 U10 ( .A(state[1]), .Y(n7) );
  INVX2 U11 ( .A(state[0]), .Y(n8) );
  INVX2 U12 ( .A(in_mux_ctl[0]), .Y(n9) );
  INVX2 U13 ( .A(reset), .Y(n10) );
  INVX2 U14 ( .A(counter[0]), .Y(n11) );
  OAI21X1 U15 ( .A(n12), .B(n9), .C(n13), .Y(n30) );
  OAI21X1 U16 ( .A(n3), .B(n1), .C(n4), .Y(n13) );
  OAI21X1 U17 ( .A(n4), .B(n14), .C(n15), .Y(n31) );
  NAND3X1 U18 ( .A(next_state[2]), .B(n16), .C(in_mux_ctl[1]), .Y(n15) );
  NAND2X1 U19 ( .A(next_state[1]), .B(n1), .Y(n14) );
  OAI21X1 U20 ( .A(next_state[2]), .B(n16), .C(n17), .Y(n32) );
  NAND3X1 U21 ( .A(next_state[2]), .B(n16), .C(counter_hold), .Y(n17) );
  OAI21X1 U22 ( .A(n2), .B(n4), .C(n18), .Y(n33) );
  NAND2X1 U23 ( .A(counter_rst), .B(n2), .Y(n18) );
  OAI22X1 U24 ( .A(n2), .B(n3), .C(n12), .D(n7), .Y(n34) );
  AOI21X1 U25 ( .A(n16), .B(n6), .C(n1), .Y(n35) );
  NAND2X1 U26 ( .A(n4), .B(n3), .Y(n16) );
  OAI22X1 U27 ( .A(n2), .B(n4), .C(n12), .D(n8), .Y(n36) );
  OAI21X1 U28 ( .A(next_state[1]), .B(next_state[0]), .C(next_state[2]), .Y(
        n12) );
  OAI21X1 U29 ( .A(n19), .B(n20), .C(n21), .Y(N44) );
  NAND3X1 U30 ( .A(state[0]), .B(state[1]), .C(n5), .Y(n21) );
  NAND2X1 U31 ( .A(state[2]), .B(n22), .Y(n20) );
  NAND3X1 U32 ( .A(n8), .B(n7), .C(n10), .Y(n19) );
  AOI21X1 U33 ( .A(n23), .B(n24), .C(n25), .Y(N43) );
  NAND3X1 U34 ( .A(n22), .B(n8), .C(state[1]), .Y(n24) );
  NAND3X1 U35 ( .A(counter[3]), .B(n11), .C(n26), .Y(n22) );
  NOR2X1 U36 ( .A(counter[2]), .B(counter[1]), .Y(n26) );
  OAI21X1 U37 ( .A(n27), .B(state[0]), .C(n7), .Y(n23) );
  NOR2X1 U38 ( .A(n28), .B(n29), .Y(N42) );
  NAND2X1 U39 ( .A(start), .B(n5), .Y(n29) );
  NAND2X1 U40 ( .A(n10), .B(n6), .Y(n25) );
  NAND2X1 U41 ( .A(n8), .B(n7), .Y(n28) );
endmodule

