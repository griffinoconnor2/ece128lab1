`timescale 1ns/1ps

module muxDF_tb;

//Declare testbench I/O wires & regs
reg [3:0] I0, I1, I2, I3, I4, I5, I6, I7, I8;
reg [2:0] S;
wire Y;

//Instantiate Dataflow Mux
muxDF uut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .S(S), .Y(Y));



endmodule