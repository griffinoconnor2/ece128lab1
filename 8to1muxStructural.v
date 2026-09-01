module muxS(I0, I1, I2, I3, I4, I5, I6, I7, S, Y)

//Declare Input/Output Signals
input [3:0] I0, [3:0] I1, [3:0] I2, [3:0] I3, [3:0] I4,[3:0] I5,[3:0] I6, [3:0] I7;
input [2:0] S;
output [3:0] Y;

//Declare Intermediate Signals (Inversions, Ands)
wire nS0, nS1, nS2;
wire W0, W1, W2, W3, W4, W5, W6, W7;

//Perform Inversion


endmodule