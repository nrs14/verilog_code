module fa(
    input a,b,c,
    output s,co
    );
	 wire s1,c1,c2;
ha g1(a,b,s1,c1);
ha g2(s1,c,c2,s);
or g3(co,c1,c2);

endmodule
