`timescale 10ns / 1ps
module dff_pin(q,qbar,d,rst,clk);
output reg q,qbar;
 input d,rst;
input clk;
 always @(posedge clk or posedge rst)
 begin 
 if(rst)
  begin 
   q=1'b0;
   qbar=1'b1;
 end 
 else 
  begin
    q=d;
    qbar=~d;  
  end   
 end 
 
specify
(d => q)=5;
(d => qbar)=5;
(clk => q)=6;
(clk => qbar)=7;
(rst => q)=2;
(rst => qbar)=3;
endspecify

endmodule
