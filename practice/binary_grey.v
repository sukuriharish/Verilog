`timescale 1ns / 1ps

primitive udp_g0(output g2, input b2,b1,b0);

table
// b2 b1 b0  g2
   0  0  0 : 0;
   0  0  1 : 0;
   0  1  0 : 0;
   0  1  1 : 0;
   1  0  0 : 1;
   1  0  1 : 1;
   1  1  0 : 1;
   1  1  1 : 1;
   endtable
   endprimitive
   
   primitive udp_g1(output g1, input b2,b1,b0);

table
// b2 b1 b0  g1
   0  0  0 : 0;
   0  0  1 : 0;
   0  1  0 : 1;
   0  1  1 : 1;
   1  0  0 : 1;
   1  0  1 : 1;
   1  1  0 : 0;
   1  1  1 : 0;
   endtable
   endprimitive
   
   primitive udp_g2(output g0, input b2,b1,b0);

table
// b2 b1 b0  g0
   0  0  0 : 0;
   0  0  1 : 1;
   0  1  0 : 1;
   0  1  1 : 0;
   1  0  0 : 0;
   1  0  1 : 1;
   1  1  0 : 1;
   1  1  1 : 0;
   endtable
   endprimitive
   
   module binary_grey(output g0,g1,g2, input b0,b1,b2);
   
   udp_g0(g2,b2,b1,b0);
   udp_g1(g1,b2,b1,b0);
   udp_g2(g0,b2,b1,b0);
   endmodule





   
   
   
   