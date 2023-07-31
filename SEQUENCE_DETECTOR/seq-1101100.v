module Seq(input x , clk , rst,output reg y);
parameter A = 3'b000;
parameter B = 3'b001;
parameter C = 3'b010;
parameter D = 3'b011;
parameter E = 3'b100;
parameter F = 3'b101;
parameter G = 3'b110;
reg [2:0]p,n;
always @(posedge clk , posedge rst)
begin 
if(rst) n = A ; 
else 
begin 
case({p})					
A : begin 
y = 0;
if(x) n = B;
else n = A; end
B: begin 
y = 0;
if(x) n = C;
else n = A; end
C : begin 
y = 0;
if(x) n = C;
else n = D; end
D: begin 
y = 0;
if(x) n = E;
else n = A; end
E : begin 
y = 0;
if(x) n = F;
else n = A; end
F : begin 
y = 0;
if(x) n = C;
else n = G;
end
G : begin 
y = 0;
if(x) n  = E;
else 		
begin n = A; y = 1'b1; end
end
endcase
p = n;
end
end
endmodule
