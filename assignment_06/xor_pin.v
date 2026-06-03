`timescale 1ns / 1ps
module xor_pin(output out, input a,b);

    specify
    (a => out) = 2;
    (b => out) = 3;
    endspecify
    
    xor(out,a,b);
  
endmodule
