module fs(
    input a,b,c,
    output d,bo
    );
assign d=a^b^c;
assign bo=~a&b|c&~(a^b);

endmodule
