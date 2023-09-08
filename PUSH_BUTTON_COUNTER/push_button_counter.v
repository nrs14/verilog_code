module push_button_counter(
    input rst,button,
    output [7:0] led
    );
reg [7:0] count;
always @(posedge button,posedge rst)
begin
if(rst)
count<=0;
else if(button)
count<=count+1;
end
assign led=count;
endmodule
