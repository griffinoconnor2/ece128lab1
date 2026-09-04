`timescale 1ns/1ps

module muxB_tb;

//Declare testbench I/O wires & regs
reg I0, I1, I2, I3, I4, I5, I6, I7;
reg [2:0] S;
wire Y;

//Instantiate Dataflow Mux
muxB uut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .S(S), .Y(Y));

initial 
    begin 
        //Initial Values at t=0
        //Each I signal corresponds to its bus number for ease of testing 
        S  = 3'b000;
        I0 = 1'b1; 
        I1 = 1'b0;
        I2 = 1'b1;
        I3 = 1'b0;
        I4 = 1'b1;
        I5 = 1'b0;
        I6 = 1'b1;
        I7 = 1'b0;

        //Updating selection every 10 ns
        #10 S  = 3'b000;
        #10 S  = 3'b001;
        #10 S  = 3'b010;
        #10 S  = 3'b011;
        #10 S  = 3'b100;
        #10 S  = 3'b101;
        #10 S  = 3'b110;
        #10 S  = 3'b111;
        #10 $stop;
    end 
endmodule