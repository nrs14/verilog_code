module alu(
    input [3:0] a,b,
    input [2:0] s,
    output reg [7:0] y
    );

always @(a,b,s) 
begin
case(s)
3'b000:y=a+b;//add
3'b001:y=a-b;//sub
3'b010:y=a*b;//mul
3'b011:y=a/b;//div
3'b100:y=a^b;//xor
3'b101:y=~(a&b);//nand
3'b110:y=a%b;//modulo
default:y=(~a)+1;//2's complement
endcase
end
endmodule
