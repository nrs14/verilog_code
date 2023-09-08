module dcmotor_control(
    input [7:0] vc,
    input clk,rst,
    output reg pwm
    );
reg [7:0] count;
always @(posedge clk)
begin if(rst)
count=8'b0;
else if(count<vc) begin
pwm=1'b1;
count=count+1;
end
else
begin
pwm=1'b0;
count=count+1;
end
end
endmodule
