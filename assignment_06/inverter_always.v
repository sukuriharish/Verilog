`timescale 1ns / 1ps
module inverter_always(output reg out, input in);
 
 always @(in)
 begin
  #3 out = ~in;
 end   
endmodule
