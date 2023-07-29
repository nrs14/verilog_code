module moore(
    input x,clk,rst,
    output reg y
    );
	reg [1:0]p,n;
	parameter s0 = 2'b00;
	parameter s1 = 2'b01;
	parameter s2 = 2'b10;
	parameter s3 = 2'b11;
	always @(posedge clk,posedge rst)
	begin
		if(rst) 
			begin 
				p = s0;
			end
		else
		begin
				case ({ p })
					s0 :
						begin
							y = 1;
							if(x) 
								begin
									n = s0;
								end
							else
								begin 
									n = s1;
								end
						end
					s1 : 
						begin
							y = 0;
							if(x)
								begin
									n = s2;
								end
							else
								begin
									n = s3;
								end
						end
					s2 : 
						begin
							y = 1;
							if(x)
								begin
									n = s0;
								end
							else
								begin
									n = s1;
								end
						end
					s3 :
						begin
							y = 0;
							if(x)
								begin
									n = s2;
								end
							else
								begin
									n = s3;
								end
						end
				endcase
									 p = n;

			end	
	end

endmodule
