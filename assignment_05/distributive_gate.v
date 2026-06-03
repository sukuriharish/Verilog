`timescale 10ns / 1ps

module ques1(output out,input m,n,p,q );
wire e,f;
reg clk;
always
   #5 clk=~clk;


and #11 a1(f,p,q);
and #8 a2(out,e,f);
and #4 a3(e,m,n);

initial #25 $finish;

endmodule