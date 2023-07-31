module fsm2(
    input x,clk,rst,
    output reg y
    );
	 reg [1:0]p,n;
	parameter A = 2'b00;
	parameter B = 2'b01; 
	parameter C = 2'b10;
	parameter D = 2'b11;
	always @(posedge clk , posedge rst)
		begin
			if(rst) p = A;
			else
				begin 
					case({p})
						A : 
							begin
								y = 1'b0;
								if(x) n = B;
								else  n = A;
							end
						B : 
							begin 
								y = 1'b0;
								if(x) n = B;
								else  n = C;
							end
						C : 
							begin
								y = 1'b0;
								if(x) n = D;
								else  n = A;
							end
						D : 
							begin
								y = 1'b1;
								if(x) n = B;
								else  n = C;
							end
						endcase
						p = n;
					end
				end
endmodule
