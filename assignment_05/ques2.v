`timescale 10ns / 1ps
//
module ques1(output out,input m,n,p,q );
wire e,f;
reg clk;
always
   #5 clk=~clk;


or  a1(f,p,q);
or  a2(out,e,f);
or #15 a3(e,m,n);

initial #25 $finish;

endmodule