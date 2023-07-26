module updown_tb;

	// Inputs
	reg clk;
	reg reset;
	reg up_down;

	// Outputs
	wire [3:0] counter;

	// Instantiate the Unit Under Test (UUT)
	up_down uut (
		.clk(clk), 
		.reset(reset), 
		.up_down(up_down), 
		.counter(counter)
	);

	initial begin 
clk=0;
forever #50 clk=~clk;
end
initial begin
reset=1; up_down=0;
#20 reset=0; up_down=1;

end
      
endmodule
