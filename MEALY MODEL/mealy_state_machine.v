module mealy(
    input x,clk,rst,
    output reg y
    );
reg [1:0]ps,ns;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
always @(posedge clk,posedge rst)
begin
if(rst) begin
ps=s0; y=1'b1; 
end
else ps=ns;
 end
always @(ps,x)
begin
case({ps})
//s0:-
s0:begin
if(x==1)
begin
ns=s0; y=1'b1;
end
else
begin
ns=s1; y=1'b0;
end
end
//s1:-
s1:begin
if(x==1)
begin
ns=s3; y=1'b0;
end
else
begin
ns=s2; y=1'b1;
end
end
//s2:-
s2:begin
if(x==1)
begin
ns=s1; y=1'b0;
end
else
begin
ns=s0; y=1'b1;
end
end
//s3:-
s3:begin
if(x==1)
begin
ns=s2; y=1'b1;
end
else
begin
ns=s3; y=1'b0;
end
end
endcase
end
endmodule
