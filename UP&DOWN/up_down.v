module up_down( input clk,reset,up_down,
output reg [7:0] count);
always @(posedge clk, negedge reset) begin
if (!reset) begin
count <= 2'b0;
end
else if (up_down) begin
count <= count + 1;
end
else begin
count <= count - 1;
end
end
endmodule
