module mult_tb;
	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	wire [7:0] y;
	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.a(a), 
		.b(b), 
		.y(y)
	);
	initial begin
		// Initialize Inputs
		 a = 4'b0001;b = 4'b0011;
		// Wait 100 ns for global reset to finish
		#100 a = 4'b1001;b = 4'b1011;
		#100 a = 4'b0101;b = 4'b1001;
		#100 a = 4'b1101;b = 4'b1000;
		#100 a = 4'b1111;b = 4'b0010;
	end     
endmodule

