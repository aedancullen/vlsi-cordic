module CORDIC_DP(
    input wire clka,
    input wire clkb,

    input wire reset,

    input wire cordic_mode,

    input wire [7:0] in_port0,
    input wire [7:0] in_port1,
    output wire [7:0] out_port0,
    output wire [7:0] out_port1,

    output reg [3:0] counter,

    input wire [1:0] in_mux_ctl,
    input wire counter_rst,
    input wire counter_hold
    );

    reg [7:0] x_rega;
    reg [7:0] y_rega;
    reg [7:0] theta_rega;

    reg [7:0] x_regb;
    reg [7:0] y_regb;
    reg [7:0] theta_regb;

    reg [7:0] ROM_VALUE;
    reg [3:0] next_counter;

    always @(*) begin
        case (counter)
            4'd0: ROM_VALUE = 8'd5;
            4'd1: ROM_VALUE = 8'd1;
            4'd2: ROM_VALUE = 8'd2;
            4'd3: ROM_VALUE = 8'd3;
            4'd4: ROM_VALUE = 8'd4;
            4'd5: ROM_VALUE = 8'd5;
            4'd6: ROM_VALUE = 8'd6;
            4'd7: ROM_VALUE = 8'd7;
            default: ROM_VALUE = 8'd0;
        endcase
    end

    always @(negedge clka) begin
        if (reset) begin
            x_rega <= 8'b0;
            y_rega <= 8'b0;
            theta_rega <= 8'b0;
            x_regb <= 8'b0;
            y_regb <= 8'b0;
            theta_regb <= 8'b0;
            counter <= 4'd8;
            next_counter <= 4'd8;
        end
        else begin

            if (in_mux_ctl == 2'b00) begin
                x_rega <= 8'd1; // scale
                y_rega <= 8'd0;
                theta_rega <= in_port0;
            end
            if (in_mux_ctl == 2'b01) begin
                x_rega <= x_regb;
                y_rega <= y_regb;
                theta_rega <= theta_regb;
            end
            if (in_mux_ctl == 2'b10) begin
                x_rega <= in_port0;
                y_rega <= in_port1;
                theta_rega <= theta_regb;
            end

            case ({counter_rst, counter_hold})
                2'b01: counter <= next_counter;
                2'b10: counter = 4'b0;
                default: counter <= next_counter + 1;
            endcase

        end
    end

    always @(negedge clkb) begin
        if ((cordic_mode == 1'b0 && theta_rega[7] == 1'b0) || (cordic_mode == 1'b1 && y_rega[7] == 1'b1)) begin
            x_regb <= x_rega - (y_rega >> counter);
            y_regb <= y_rega + (x_rega >> counter);
            theta_regb <= theta_rega - ROM_VALUE;
        end
        else begin
            x_regb <= x_rega + (y_rega >> counter);
            y_regb <= y_rega - (x_rega >> counter);
            theta_regb <= theta_rega + ROM_VALUE;
        end

        next_counter <= counter;
    end

    assign out_port0 = (cordic_mode == 1'b0) ? x_regb : theta_regb;
    assign out_port1 = y_regb;

endmodule
