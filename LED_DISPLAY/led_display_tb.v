module led_tb;
	reg [15:0] sw;
	wire [16:1] led;
	led uut (
		.sw(sw), 
		.led(led)
	);
	initial begin
		sw = 16'd6;
		#100 sw = 16'd6; 
		#100 sw = 16'd127;
		#100 sw = 16'd513;
		#100 sw = 16'd1023;
		#100 sw = 16'd2890;	
	end  
endmodule
