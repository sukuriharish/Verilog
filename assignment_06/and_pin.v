`timescale 1ns / 1ps
module and_pin(output out, input a,b);

   specify
   
   (a => out) = 2;
   (b => out) = 3;
   endspecify
   and a1(out,a,b);
endmodule
