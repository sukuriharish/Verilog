`timescale 1ns / 1ps
module xor(
            output y; input x,a,b; 
    );
    
    always @(*) 
      if(x)
         begin
         generate xor(y,a,b); 
         end 
endmodule
