module muxDF(
    input  [3:0] I0, I1, I2, I3, I4, I5, I6, I7,//8 Busses, 4 bits wide each
    input [2:0] S, //3 Selector bits
    output [3:0] Y //4 bit wide output
);

//Please not that I used the replication operator {4{...}} to expand the 1 bit selector into 4 bit so that the bitwise operations would work properly. 
//Readme will have the source I used linked
assign Y = (
            ({4{~S[2] & ~S[1] & ~S[0]}} & I0) | 
            ({4{~S[2] & ~S[1] &  S[0]}} & I1) |
            ({4{~S[2] &  S[1] & ~S[0]}} & I2) |
            ({4{~S[2] &  S[1] &  S[0]}} & I3) | 
            ({4{ S[2] & ~S[1] & ~S[0]}} & I4) | 
            ({4{ S[2] & ~S[1] &  S[0]}} & I5) |
            ({4{ S[2] &  S[1] & ~S[0]}} & I6) |
            ({4{ S[2] &  S[1] &  S[0]}} & I7)
            );

endmodule