module ha_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	ha uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100 a = 0;b = 1;
		#100 a = 1;b = 0;
		#100 a = 1;b = 1;
        
		// Add stimulus here

	end
      
endmodule

