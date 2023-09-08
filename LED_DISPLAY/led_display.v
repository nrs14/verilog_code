module led(
    input [15:0] sw,
    output [16:1] led
    );
assign led=sw;
endmodule
