module muxS(I0, I1, I2, I3, I4, I5, I6, I7, S, Y);

//Declare Input/Output Signals
input [3:0] I0, I1, I2, I3, I4, I5, I6, I7;
input [2:0] S;
output [3:0] Y;

//Declare intermediate signals (Inversions, And's, and final Or)
wire nS0, nS1, nS2;
wire [3:0] W0, W1, W2, W3, W4, W5, W6, W7;

//Perform Inversion
not n0(nS0, S[0]);
not n1(nS1, S[1]);
not n2(nS2, S[2]);

//Replicate selectors and respective inversions to match 4-bit width of output
wire [3:0] S0_4 = {4{S[0]}};
wire [3:0] nS0_4 = {4{nS0}};
wire [3:0] S1_4 = {4{S[1]}};
wire [3:0] nS1_4 = {4{nS1}};
wire [3:0] S2_4 = {4{S[2]}};
wire [3:0] nS2_4 = {4{nS2}};

//And's to group intermediate signals according to boolean equation from Truth Table (in prelab)
and a0(W0, nS2_4, nS1_4, nS0_4, I0);
and a1(W1, nS2_4, nS1_4, S0_4,  I1);
and a2(W2, nS2_4, S1_4,  nS0_4, I2);
and a3(W3, nS2_4, S1_4,  S0_4,  I3);
and a4(W4, S2_4,  nS1_4, nS0_4, I4);
and a5(W5, S2_4,  nS1_4, S0_4,  I5);
and a6(W6, S2_4,  S1_4,  nS0_4, I6);
and a7(W7, S2_4,  S1_4,  S0_4,  I7);

//Create complete Boolean equation using Or gate
or o0(Y, W0, W1, W2, W3, W4, W5, W6, W7);

endmodule