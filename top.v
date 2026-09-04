module top (S, y)

//Declare inputs and outputs
input [2:0]S;
output [3:0]Y;

//Hardcode binary values to respective input switch
wire [3:0] I0 = 4'b0000; 
wire [3:0] I1 = 4'b0001; 
wire [3:0] I2 = 4'b0010; 
wire [3:0] I3 = 4'b0011; 
wire [3:0] I4 = 4'b0100; 
wire [3:0] I5 = 4'b0101; 
wire [3:0] I6 = 4'b0110; 
wire [3:0] I7 = 4'b0111; 

//Instantiate new Dataflow Mux that uses hardcoded input values
muxDF uut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .S(S), .Y(Y));

endmodule
