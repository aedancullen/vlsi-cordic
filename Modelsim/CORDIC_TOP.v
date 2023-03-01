module CORDIC_TOP(
    input wire clka,
    input wire clkb,

    input wire reset,
    input wire start,
    input wire cordic_mode,

    input wire [7:0] in_port0,
    input wire [7:0] in_port1,
    output wire [7:0] out_port0,
    output wire [7:0] out_port1,

    output wire done
    );

    wire [7:0] counter;
    wire [3:0] state;
    wire [1:0] in_mux_ctl;
    wire counter_rst;
    wire counter_hold;

    CORDIC_FSM fsm(
        .clka(clka),
        .clkb(clkb),
        .reset(reset),
        .start(start),
        .cordic_mode(cordic_mode),
        .counter(counter),
        .state(state),
        .in_mux_ctl(in_mux_ctl),
        .counter_rst(counter_rst),
        .counter_hold(counter_hold)
    );

    CORDIC_DP dp(
        .clka(clka),
        .clkb(clkb),
        .cordic_mode(cordic_mode),
        .in_port0(in_port0),
        .in_port1(in_port1),
        .out_port0(out_port0),
        .out_port1(out_port1),
        .counter(counter),
        .in_mux_ctl(in_mux_ctl),
        .counter_rst(counter_rst),
        .counter_hold(counter_hold)
    );

endmodule
