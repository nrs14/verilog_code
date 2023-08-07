module fs_tb;	// Inputs
	reg a;
	reg b;
	reg c;
	wire d;// Outputs
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
	a = 0;b = 0;c = 0;// Initialize Inputs
// Wait 100 ns for global reset to finish
		#100 a = 0;b = 0;c=1;
		#100 a = 0;b = 1;c=0;
		#100 a = 0;b = 1;c=1;
		#100 a = 1;b = 0;c=0;
		#100 a = 1;b = 0;c=1;
		#100 a = 1;b = 1;c=0;
		#100 a = 1;b = 1;c=1;
	end   
endmodule
