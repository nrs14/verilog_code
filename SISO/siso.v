module df(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
end
endmodule 

module siso1(
    input d,clk,
    output q);
    wire q1,q2,q3;
    df g1(d, clk, q1);
    df g2(q1, clk, q2);
    df g3(q2, clk, q3);
    df g4(q3, clk, q);
endmodule

