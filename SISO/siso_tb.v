module siso1_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	siso1 uut (
		.d(d), 
		.clk(clk), 
		.q(q)
	);

	always #100 clk <= ~clk;  
  
    // Testcase  
    initial begin  
				 
	 clk <=0;d<=1;
#100 d<=0;
#100 d<=1;
#100 d<=1;
		

	end
      
endmodule
