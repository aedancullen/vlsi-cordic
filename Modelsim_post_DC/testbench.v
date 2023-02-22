`timescale 1ns/100ps

module CORDIC_FSM_tb();

reg in_clka;
reg in_clkb;
reg in_reset;
reg in_start;
reg in_cordic_mode;
reg [3:0] in_counter;

wire [1:0] out_in_mux_ctl;
wire out_counter_rst;
wire out_counter_hold;
wire [2:0] out_state;

//create an FSM instance.
CORDIC_FSM myCORDIC (
    .clka(in_clka), 
    .clkb(in_clkb),
    .reset(in_reset),
    .start(in_start),
    .cordic_mode(in_cordic_mode),
    .counter(in_counter),
    .state(out_state),
    .in_mux_ctl(out_in_mux_ctl),
    .counter_rst(out_counter_rst),
    .counter_hold(out_counter_hold)
    );

initial
begin

in_reset = 1;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_reset = 0;

in_start = 0;
in_cordic_mode = 0;
in_counter = 4'b0000;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 1;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 0;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10;

in_counter = 4'b1000;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10


in_cordic_mode = 1;
in_counter = 4'b0000;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 1;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 0;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10;

in_counter = 4'b1000;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

$dumpfile ("CORDIC_FSM_tb.vcd"); 
$dumpvars; 
    
$stop;
end 

endmodule
