module fs4(  input [3:0] a,b,
    input c,
    output [3:0] d,
    output bo
    );
	 wire c1,c2,c3;
fs g1(a[0],b[0],c, d[0],c1);
fs g2(a[1],b[1],c1,d[1],c2);
fs g3(a[2],b[2],c2,d[2],c3);
fs g4(a[3],b[3],c3,d[3],bo);
endmodule
