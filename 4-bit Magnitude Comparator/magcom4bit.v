module magcom4bit(
input [3:0]a,b,
    output reg e,g,l
    );
always @ (a,b)
    begin 
        if (a < b)
		  begin
            g=0; e=0; l=1;
				end  
        else if (a == b)
		  begin
            g=0; e=1; l=0;    
			end  				
		  else
		  begin
           g=1; e=0; l=0;
			  end  
end  
endmodule
