`timescale 10ns / 1ps

module ques1(output out,input m,n,p,q );
wire e,f;
reg clk;
always
   #5 clk=~clk;


and #8 a2(f,p,q);
and #4 a3(out,e,f);
and #11 a1(e,m,n);

initial #25 $finish;

endmodule
