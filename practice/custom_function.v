`timescale 1ns / 1ps

primitive udp_f(output f, input a,b,c);

table
// a b c   f
   0 0 0 : 1; 
   0 0 1 : 0; 
   0 1 0 : 0; 
   0 1 1 : 0; 
   1 0 0 : 0; 
   1 0 1 : 0; 
   1 1 0 : 1; 
   1 1 1 : 1; 
   endtable
   endprimitive
   
   module custom_function(output f,input a,b,c);
   udp_f(f,a,b,c);
endmodule
