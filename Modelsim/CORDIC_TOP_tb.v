`timescale 1ns/100ps

module CORDIC_TOP_tb();

reg in_clka;
reg in_clkb;

reg in_reset;
reg in_start;
reg in_cordic_mode;

reg [7:0] in_port0;
reg [7:0] in_port1;
wire [7:0] out_port0;
wire [7:0] out_port1;

wire out_done;

CORDIC_TOP cordic(
    .clka(in_clka),
    .clkb(in_clkb),
    .reset(in_reset),
    .start(in_start),
    .cordic_mode(in_cordic_mode),
    .in_port0(in_port0),
    .in_port1(in_port1),
    .out_port0(out_port0),
    .out_port1(out_port1),
    .done(out_done)
);

initial begin

in_reset = 1;
in_start = 0;
in_cordic_mode = 0;
in_port0 = 8'b01000000;
in_port1 = 8'b0;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_reset = 0;
in_start = 1;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 0;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 1;
in_cordic_mode = 1;
in_port0 = 8'b01000000;
in_port1 = 8'b01000000;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_start = 0;
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10
in_clka = 0; in_clkb = 0; #10 in_clka = 1; in_clkb = 0; #10 in_clka = 0; in_clkb = 0; #10 in_clka = 0; in_clkb = 1; #10

$dumpfile("CORDIC_TOP_tb.vcd");
$dumpvars;
$stop;

end

endmodule
