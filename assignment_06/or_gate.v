`timescale 1ns / 1ps
module or_gate(output out, input a,b,c);
wire x;

assign #2 x = a & b;
assign #3 out =  x & c;


   
endmodule
