module hs(
    input a,b,
    output d,bo
    );
assign d=a^b;
assign bo=~a&b;

endmodule
