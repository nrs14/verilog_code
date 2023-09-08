module push_button_counter_tb;
	reg rst;
	reg button;
	wire [7:0] led;
	push_button_counter uut (
		.rst(rst), 
		.button(button), 
		.led(led)
	);
	initial begin
			  rst = 1; button = 0;
		#100 rst = 0; button = 1;
		#100 rst = 0; button = 0;
		#100 rst = 0; button = 1;
		#100 rst = 0; button = 0;
		#100 rst = 0; button = 1;
		#100 rst = 0; button = 0;
		#100 rst = 0; button = 1;
		#100 rst = 0; button = 0;
		#100 rst = 0; button = 1;
		#100 rst = 0; button = 0;
	end
endmodule
