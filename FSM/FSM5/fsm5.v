module fsm5(input x , z ,clk , rst);
parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;
reg [1:0]p,n;

always @(posedge clk or posedge rst)
begin
	if(rst) p = S0;
	else
		begin
			case({p})
				S0 : 
					begin
						if(!x && !z)     n = S0;
						else if(!x && z) n = S1;
						else if(x && !z) n = S2;
						else if(x && z)  n = S3;
					end
				S1 : 
					begin
						if(!x && !z)     n = S0;
						else if(!x && z) n = S1;
						else if(x && !z) n = S2;
						else if(x && z)  n = S3;
					end
				S2 : 
					begin
						if(!x && !z)     n = S0;
						else if(!x && z) n = S1;
						else if(x && !z) n = S2;
						else if(x && z)  n = S3;
					end
				S3 : 
					begin
						if(!x && !z)     n = S0;
						else if(!x && z) n = S1;
						else if(x && !z) n = S2;
						else if(x && z)  n = S3;
					end
			endcase
			p = n;
		end
	end
endmodule
