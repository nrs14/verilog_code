module ha_tb;
	reg a,b; //input
	wire s,co; //output
	ha uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.co(co)
	);	// Instantiate the Unit Under Test (UUT)
	initial begin	// Initialize Inputs
		a = 0;b = 0;	// Wait 100 ns for global reset to finish
		#100 a = 0;b = 1;
		#100 a = 1;b = 0;
		#100 a = 1;b = 1;
	end     
endmodule

