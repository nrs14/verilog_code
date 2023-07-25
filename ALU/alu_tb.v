module alu_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] s;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 4'b1001;b = 4'b0011;s = 3'b000;

		// Wait 100 ns for global reset to finish
		#100 a = 4'b1001;b = 4'b1011;s = 3'b001;
		#100 a = 4'b1001;b = 4'b0111;s = 3'b010;
		#100 a = 4'b1101;b = 4'b1011;s = 3'b011;
		#100 a = 4'b1011;b = 4'b0111;s = 3'b100;
		#100 a = 4'b1010;b = 4'b1011;s = 3'b101;
		#100 a = 4'b1110;b = 4'b0111;s = 3'b110;
		#100 a = 4'b0101;b = 4'b1011;s = 3'b111;
		
        
		// Add stimulus here

	end
      
endmodule

