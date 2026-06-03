`timescale 1ns / 1ps

module and_gate(output out , input a,b);

     assign #3 out = a & b;
endmodule
