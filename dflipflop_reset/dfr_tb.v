module dfr_tb;

	// Inputs
	reg d;
	reg rst;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dfr uut (
		.d(d), 
		.rst(rst), 
		.clk(clk), 
		.q(q)
	);

	always #100 clk = ~clk;  
    // Testcase  
    initial begin  
        clk <= 0; rst=1; d <= 0;  
		  #100 rst=0;  d <= 1; 
		  #100   d <= 0; 	
		  #100   d <= 1; 
		  #100 rst=1;  d <= 1; 
		  #100   d <= 0; 	
		  #100   d <= 1; 

	end
      
endmodule

