module muxB(
    input  [3:0] I [7:0], //8 Busses, 4 bits wide each
    input [2:0] S, //3 Selector bits
    output reg [3:0] Y //4 bit wide output
);

always @(*) //Always block for behavioral
    begin
        case(S)
            //Assignment for each case
            3'b000 : Y = I[0];
            3'b001 : Y = I[1];
            3'b010 : Y = I[2];
            3'b011 : Y = I[3];
            3'b100 : Y = I[4];
            3'b101 : Y = I[5];
            3'b110 : Y = I[6];
            3'b111 : Y = I[7];
            default : Y = 4'bx;
        endcase
    end

endmodule