
module fs_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d;
	wire bo;

	// Instantiate the Unit Under Test (UUT)
	fs uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.bo(bo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100 a = 0;b = 0;c=1;
		#100 a = 0;b = 1;c=0;
		#100 a = 0;b = 1;c=1;
		#100 a = 1;b = 0;c=0;
		#100 a = 1;b = 0;c=1;
		#100 a = 1;b = 1;c=0;
		#100 a = 1;b = 1;c=1;
        
		// Add stimulus here

	end
      
endmodule
