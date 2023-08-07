module hs_tb;
	reg a;// Inputs
	reg b;
	wire d;
	wire bo;// Outputs
	// Instantiate the Unit Under Test (UUT)
	hs uut (
		.a(a), 
		.b(b), 
		.d(d), 
		.bo(bo)
	);
	initial begin
		// Initialize Inputs
		a = 0;b = 0;
		// Wait 100 ns for global reset to finish
		#100 a = 0;b = 1;
		#100 a = 1;b = 0;
		#100 a = 1;b = 1;
	end      
endmodule
