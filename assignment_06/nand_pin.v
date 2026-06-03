`timescale 10ns / 1ps

module nand_pin(output out, input a,b);

   specify
   
   ( a => out) = 2;
   (b => out) = 3;
   endspecify
   nand n1(out,a,b);
endmodule
