module mcp_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire G;
	wire E;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	mcp uut (
		.a(a), 
		.b(b), 
		.G(G), 
		.E(E), 
		.L(L)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;

		// Wait 100 ns for global reset to finish
		  #100 a = 0;b = 1;
        #100 a = 1;b = 0;
		  #100 a = 1;b = 1;
		// Add stimulus here

	end
      
endmodule
