module magcom4bit_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire e;
	wire g;
	wire l;

	// Instantiate the Unit Under Test (UUT)
	magcom4bit uut (
		.a(a), 
		.b(b), 
		.e(e), 
		.g(g), 
		.l(l)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;

		// Wait 100 ns for global reset to finish
		#100 a = 4'b0100;b = 4'b0101;
		#100 a = 4'b1100;b = 4'b1111;
		#100 a = 4'b0110;b = 4'b0111;
		#100 a = 4'b1110;b = 4'b1101;
        
		// Add stimulus here

	end
      
endmodule
