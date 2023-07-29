module seq_det1(
    input clk,rst,seq,
    output reg  y
    );
localparam a=3'b000;
localparam b=3'b001;
localparam c=3'b010;
localparam d=3'b011;
localparam e=3'b100;
localparam f=3'b101;
localparam g=3'b110;

reg [2:0] pre,nxt;
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
       b:if(seq)  nxt=c;
         else nxt=a;
       c:if(seq)  nxt=c;
         else nxt=d;
		 d:if(seq)  nxt=e;
         else nxt=a;	
       e:if(seq)  nxt=f;
         else nxt=a;
       f:if(seq)  nxt=b;
         else nxt=g;
       g:if(seq) begin
     		 nxt=d;  y=1'b1;
			 end
         else nxt=a;
       default:begin
         y=1'b0;   nxt=a;
        end
     endcase
   end	  
endmodule
