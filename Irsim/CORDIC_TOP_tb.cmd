vector in_port0 in_port0\[7\] in_port0\[6\] in_port0\[5\] in_port0\[4\] in_port0\[3\] in_port0\[2\] in_port0\[1\] in_port0\[0\]
vector in_port1 in_port1\[7\] in_port1\[6\] in_port1\[5\] in_port1\[4\] in_port1\[3\] in_port1\[2\] in_port1\[1\] in_port1\[0\]
vector out_port0 out_port0\[7\] out_port0\[6\] out_port0\[5\] out_port0\[4\] out_port0\[3\] out_port0\[2\] out_port0\[1\] out_port0\[0\]
vector out_port1 out_port1\[7\] out_port1\[6\] out_port1\[5\] out_port1\[4\] out_port1\[3\] out_port1\[2\] out_port1\[1\] out_port1\[0\]

logfile CORDIC_TOP_tb.log
ana clka clkb reset start cordic_mode
ana in_port0\[7\] in_port0\[6\] in_port0\[5\] in_port0\[4\] in_port0\[3\] in_port0\[2\] in_port0\[1\] in_port0\[0\] in_port0
ana in_port1\[7\] in_port1\[6\] in_port1\[5\] in_port1\[4\] in_port1\[3\] in_port1\[2\] in_port1\[1\] in_port1\[0\] in_port1
ana out_port0\[7\] out_port0\[6\] out_port0\[5\] out_port0\[4\] out_port0\[3\] out_port0\[2\] out_port0\[1\] out_port0\[0\] out_port0
ana out_port1\[7\] out_port1\[6\] out_port1\[5\] out_port1\[4\] out_port1\[3\] out_port1\[2\] out_port1\[1\] out_port1\[0\] out_port1
ana done

V in_port0\[7\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port0\[6\] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
V in_port0\[5\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port0\[4\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port0\[3\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port0\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port0\[1\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port0\[0\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[7\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[6\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
V in_port1\[5\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[4\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[3\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[1\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_port1\[0\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V reset         1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V start         0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
V cordic_mode   0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1

clock clka 0 1 0 0
clock clkb 0 0 0 1
R
