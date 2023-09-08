module tb_PWM_Generator;
	reg clk;
	reg increase_duty;
	reg decrease_duty;
	wire PWM_OUT;
	PWM_Generator uut (
		.clk(clk), 
		.increase_duty(increase_duty), 
		.decrease_duty(decrease_duty), 
		.PWM_OUT(PWM_OUT)
	);
	initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
increase_duty = 0;
decrease_duty = 0;
#100;
increase_duty = 1;
#100;// increase duty cycle by 10%
increase_duty = 0;
#100;
increase_duty = 1;
#100;// increase duty cycle by 10%
increase_duty = 0;
#100;
increase_duty = 1;
#100;// increase duty cycle by 10%
increase_duty = 0;
#100;
decrease_duty = 1;
#100;//decrease duty cycle by 10%
decrease_duty = 0;
#100;
decrease_duty = 1;
#100;//decrease duty cycle by 10%
decrease_duty = 0;
#100;
decrease_duty = 1;
#100;//decrease duty cycle by 10%
decrease_duty = 0;
end
endmodule

