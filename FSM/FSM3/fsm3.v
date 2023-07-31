module fsm3(input x , clk , rst , output reg y);
parameter W = 2'b00;
parameter X = 2'b01;
parameter Y = 2'b10;
reg [1:0]p,n;

always @(posedge clk or posedge rst)
begin
	if(rst) p = W;
	else
		begin
			case({p})
				W : 
					begin
						y = 0;
						if(x) n = X ;
						else n = Y;
					end
				X : 
					begin
						y = 1;
						if(x) n = Y;
						else n = X;
					end
				Y : 
					begin
						y = 0;
						if(x) n = W;
						else n = X;
					end
			endcase
			p = n;
		end
	end
endmodule
