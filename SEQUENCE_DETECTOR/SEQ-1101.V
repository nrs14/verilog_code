// QUESTION SEQUENCE DETECTOR FOR THE FOLLOWING 1101 .WRITE THE VERILOG CODE.//



module Seq_gen(
    input clk,rst,seq,
    output reg  tick
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
     tick=1'b0;
     case(pre)
       a:if(seq)  nxt=b;
         else nxt=a;	
       b:if(seq)  nxt=c;
         else nxt=a;
       c:if(seq)  nxt=c;
         else nxt=d;
       d:if(seq) begin
     		 nxt=b;  tick=1'b1;
			 end
         else nxt=a;
       default:begin
         tick=1'b0;   nxt=b;
        end
     endcase
   end	  
endmodule
