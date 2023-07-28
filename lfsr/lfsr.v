module lfsr1(
    input clk,rst,
    output reg [2:0] q
    );
always @(posedge clk,posedge rst)
begin
if(rst)
q=3'b100;
else
q={q[1],q[0],(q[0]^q[2])};
end
endmodule
