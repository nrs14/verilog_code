
module fs4_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c;

	// Outputs
	wire [3:0] d;
	wire bo;

	// Instantiate the Unit Under Test (UUT)
	fs4 uut (
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
