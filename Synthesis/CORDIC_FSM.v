//-----------------------------------------------------
// CORDIC FSM
//-----------------------------------------------------
module CORDIC_FSM (clka, clkb, reset, start, cordic_mode, counter, state, in_mux_ctl, counter_rst, counter_hold);
//-------------Input Ports-----------------------------
input wire clka;
input wire clkb;
input wire reset;
input wire start;
input wire cordic_mode;
input wire [3:0] counter;
//-------------Output Ports----------------------------
output reg [2:0] state;
output reg [1:0] in_mux_ctl;
output reg counter_rst;
output reg counter_hold;

//——————Internal Constants--------------------------
parameter SIZE = 3;
parameter IDLE = 3'b000;
parameter ROT_SETUP = 3'b001;
parameter ROT_ITER  = 3'b010;
parameter VEC_SETUP = 3'b011;
parameter VEC_ITER  = 3'b100;
//-------------Internal Variables---------------------------
wire  [SIZE-1:0]          temp_state   ;// Internal state reg
reg   [SIZE-1:0]          next_state   ;// combo part of FSM
//----------Code startes Here------------------------
assign temp_state = fsm_function(state, start, cordic_mode, counter);
//----------Function for Combo Logic-----------------
function [SIZE-1:0] fsm_function;
  input [SIZE-1:0] state;
  input start;
  input cordic_mode;
  input [3:0] counter;

  case(state)
      IDLE: begin
          if (start && cordic_mode == 0) begin fsm_function = ROT_SETUP; end
          else if (start && cordic_mode == 1) begin fsm_function = VEC_SETUP; end
          else begin fsm_function = IDLE; end
      end
      ROT_SETUP: begin
          begin fsm_function = ROT_ITER; end
      end
      ROT_ITER: begin
        if (counter == 4'b1000) begin fsm_function = IDLE; end
        else begin fsm_function = ROT_ITER; end
      end
      VEC_SETUP: begin
          begin fsm_function = VEC_ITER; end
      end
      VEC_ITER: begin
        if (counter == 4'b1000) begin fsm_function = IDLE; end
        else begin fsm_function = VEC_ITER; end
      end
    default: fsm_function = IDLE;
  endcase

endfunction

//----------Seq Logic-----------------------------
always @ (negedge clka)
begin : FSM_SEQ
  if (reset) begin
    next_state <= IDLE;
  end else begin
    next_state <= temp_state;
  end
end

//----------Output Logic——————————————
always @ (negedge clkb)
begin : OUTPUT_LOGIC
  case(next_state)
    IDLE: begin
        state <= next_state;
        in_mux_ctl <= 2'b01;
        counter_rst <= 1'b0;
        counter_hold <= 1'b1;
    end
    ROT_SETUP: begin
        state <= next_state;
        in_mux_ctl <= 2'b00;
        counter_rst <= 1'b1;
        counter_hold <= 1'b0;
    end
    ROT_ITER: begin
        state <= next_state;
        in_mux_ctl <= 2'b01;
        counter_rst <= 1'b0;
        counter_hold <= 1'b0;
    end
    VEC_SETUP: begin
        state <= next_state;
        in_mux_ctl <= 2'b10;
        counter_rst <= 1'b1;
        counter_hold <= 1'b0;
    end
    VEC_ITER: begin
        state <= next_state;
        in_mux_ctl <= 2'b01;
        counter_rst <= 1'b0;
        counter_hold <= 1'b0;
    end
  endcase
end // End Of Block OUTPUT_LOGIC

endmodule // End of Module

