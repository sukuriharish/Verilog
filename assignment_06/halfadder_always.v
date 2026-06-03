`timescale 1ns / 1ps

module halfadder_always(output reg sum,carry, input a,b);

   always @(a,b)
   begin
   #3 sum = a ^ b;
   #4 carry = a & b;
   end
endmodule
