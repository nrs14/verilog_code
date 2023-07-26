module mux_tb;

	// Inputs
	reg d0;
	reg d1;
	reg d2;
	reg d3;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.s0(s0), 
		.s1(s1), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		d0 = 1;d1 = 0;d2 = 1;d3 = 1;s0 = 0;s1 = 0;

		// Wait 100 ns for global reset to finish
		#100 s0 = 0;s1 = 1;
		#100 s0 = 1;s1 = 0;
		#100 s0 = 1;s1 = 1;
        
		// Add stimulus here

	end
      
endmodule
