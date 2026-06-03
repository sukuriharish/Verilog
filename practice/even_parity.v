`timescale 1ns / 1ps
primitive udp_p1(output p,input a,b,c);

table

// a b c   p
   0 0 0 : 0;
   0 0 1 : 1;
   0 1 0 : 1;
   0 1 1 : 0;
   1 0 0 : 1;
   1 0 1 : 0;
   1 1 0 : 0;
   1 1 1 : 1;
   endtable
   endprimitive
   
   module even_parity(output p,input a,b,c);
   udp_p1(p,a,b,c);
   endmodule