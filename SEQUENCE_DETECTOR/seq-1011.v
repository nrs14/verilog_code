module Seq_gen(
    input clk,rst,seq,
    output reg  y
    );
localparam a=2'b00;
localparam b=2'b01;
localparam c=2'b10;
localparam d=2'b11;
reg [1:0] pre,nxt;
always @ (posedge clk,posedge rst)
begin
   if(rst) pre=a;
	else  pre=nxt;
end
always @ *
   begin
     pre=nxt;
     y=1'b0;
     case(pre)
       a:if(seq)  nxt=b;
         else nxt=a;	
       b:if(seq)  nxt=b;
         else nxt=c;
       c:if(seq)  nxt=d;
         else nxt=a;
       d:if(seq) begin
     		 nxt=b;  y=1'b1;
			 end
         else nxt=c;
       default:begin
         y=1'b0;   nxt=a;
        end
     endcase
   end	  
endmodule
