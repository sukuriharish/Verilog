`timescale 10ns / 1ps
module half_adder(output sum,carry, input a,b);

assign #3 sum= a ^ b;
assign #4 carry = a & b;

    
endmodule
