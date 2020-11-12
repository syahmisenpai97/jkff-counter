module counterup (input j,k,clk, output q1,q2,q3,q4);

wire jk3, jk4;

and(jk3,q1,q2);
and(jk4,jk3,q3);

jkff jkff1(.j(j), .k(k), .clk(clk), .q(q1));

jkff jkff2(.j(q1), .k(q1), .clk(clk), .q(q2));

jkff jkff3(.j(jk3), .k(jk3), .clk(clk), .q(q3));

jkff jkff4(.j(jk4), .k(jk4), .clk(clk), .q(q4));

endmodule