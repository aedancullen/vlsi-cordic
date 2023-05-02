vector p_in_port0 p_in_port0_7 p_in_port0_6 p_in_port0_5 p_in_port0_4 p_in_port0_3 p_in_port0_2 p_in_port0_1 p_in_port0_0
vector p_in_port1 p_in_port1_7 p_in_port1_6 p_in_port1_5 p_in_port1_4 p_in_port1_3 p_in_port1_2 p_in_port1_1 p_in_port1_0
vector p_out_port0 p_out_port0_7 p_out_port0_6 p_out_port0_5 p_out_port0_4 p_out_port0_3 p_out_port0_2 p_out_port0_1 p_out_port0_0
vector p_out_port1 p_out_port1_7 p_out_port1_6 p_out_port1_5 p_out_port1_4 p_out_port1_3 p_out_port1_2 p_out_port1_1 p_out_port1_0

| vector in_port0 in_port0_7 in_port0_6 in_port0_5 in_port0_4 in_port0_3 in_port0_2 in_port0_1 in_port0_0
| vector in_port1 in_port1_7 in_port1_6 in_port1_5 in_port1_4 in_port1_3 in_port1_2 in_port1_1 in_port1_0

logfile PadFrame64_tb.log
ana p_clka p_clkb p_reset p_start p_cordic_mode
ana p_in_port0_7 p_in_port0_6 p_in_port0_5 p_in_port0_4 p_in_port0_3 p_in_port0_2 p_in_port0_1 p_in_port0_0 p_in_port0
ana p_in_port1_7 p_in_port1_6 p_in_port1_5 p_in_port1_4 p_in_port1_3 p_in_port1_2 p_in_port1_1 p_in_port1_0 p_in_port1
ana p_out_port0_7 p_out_port0_6 p_out_port0_5 p_out_port0_4 p_out_port0_3 p_out_port0_2 p_out_port0_1 p_out_port0_0 p_out_port0
ana p_out_port1_7 p_out_port1_6 p_out_port1_5 p_out_port1_4 p_out_port1_3 p_out_port1_2 p_out_port1_1 p_out_port1_0 p_out_port1
ana p_done
| ana out_port0_5

| ana clka clkb reset start cordic_mode
| ana in_port0_7 in_port0_6 in_port0_5 in_port0_4 in_port0_3 in_port0_2 in_port0_1 in_port0_0 in_port0
| ana in_port1_7 in_port1_6 in_port1_5 in_port1_4 in_port1_3 in_port1_2 in_port1_1 in_port1_0 in_port1

V p_in_port0_7    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port0_6    1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
V p_in_port0_5    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port0_4    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port0_3    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port0_2    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port0_1    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port0_0    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_7    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_6    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
V p_in_port1_5    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_4    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_3    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_2    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_1    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_in_port1_0    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_reset         1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V p_start         0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
V p_cordic_mode   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1

clock p_clka 0 1 0 0
clock p_clkb 0 0 0 1
R
