`timescale 10ns / 1ps
module fulladder_always(output reg sum,carry, input a,b,c);
reg x,y,z;

always @(a,b,c)
begin
#5 x =  a ^ b;
#6 sum = x ^ c;
#5 y = a & b;
#3 z = x & c;
#4 carry = y | z;
end
   
endmodule
