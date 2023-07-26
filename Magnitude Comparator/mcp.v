
module mcp(
    input a,b,
    output G,E,L
    );
assign G=a&~b;
assign L=~a&b;
assign E=~(G+L);

endmodule
