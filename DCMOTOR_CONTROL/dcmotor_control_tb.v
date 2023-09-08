module dcmotor_control_tb;
	reg [7:0] vc;
	reg clk;
	reg rst;
	wire pwm;
	dcmotor_control uut (
		.vc(vc), 
		.clk(clk), 
		.rst(rst), 
		.pwm(pwm)
	);
	always #100 clk = ~clk;  
	initial begin
		vc = 8'd3;clk = 0;rst = 1;
		#100 vc = 8'd12;clk = 1;rst = 0;
		#100 vc = 8'd56;
		#100 vc = 8'd78;
		#100 vc = 8'd117;
	end  
endmodule

