`timescale 1ns / 1ps

primitive udp_y0(output y0, input a0,a1,a2,a3,a4,a5,a6,a7);

table
// a0 a1 a2 a3 a4 a5 a6 a7  y0 
   1  0  0  0  0  0  0  0 : 0;  
   0  1  0  0  0  0  0  0 : 0;  
   0  0  1  0  0  0  0  0 : 0;  
   0  0  0  1  0  0  0  0 : 0; 
   0  0  0  0  1  0  0  0 : 1;  
   0  0  0  0  0  1  0  0 : 1;  
   0  0  0  0  0  0  1  0 : 1;  
   0  0  0  0  0  0  0  1 : 1;
   endtable
   endprimitive
   
   primitive udp_y1(output y1, input a0,a1,a2,a3,a4,a5,a6,a7);
   
   table
 //a0 a1 a2 a3 a4 a5 a6 a7  y1
   1  0  0  0  0  0  0  0 : 0;  
   0  1  0  0  0  0  0  0 : 0;  
   0  0  1  0  0  0  0  0 : 1;  
   0  0  0  1  0  0  0  0 : 1; 
   0  0  0  0  1  0  0  0 : 0;  
   0  0  0  0  0  1  0  0 : 0;  
   0  0  0  0  0  0  1  0 : 1;  
   0  0  0  0  0  0  0  1 : 1;
   endtable
   endprimitive
   
   primitive udp_y2(output y2, input a0,a1,a2,a3,a4,a5,a6,a7);
   
   table
   //a0 a1 a2 a3 a4 a5 a6 a7 y2
   1  0  0  0  0  0  0  0 : 0;  
   0  1  0  0  0  0  0  0 : 1;  
   0  0  1  0  0  0  0  0 : 0;  
   0  0  0  1  0  0  0  0 : 1; 
   0  0  0  0  1  0  0  0 : 0;  
   0  0  0  0  0  1  0  0 : 1;  
   0  0  0  0  0  0  1  0 : 0;  
   0  0  0  0  0  0  0  1 : 1;
   endtable
  
   endprimitive
   module encoder_8to3(output y0,y1,y2, input a0,a1,a2,a3,a4,a5,a6,a7);
   udp_y0 A1(y0,a0,a1,a2,a3,a4,a5,a6,a7);
   udp_y1 A2(y1,a0,a1,a2,a3,a4,a5,a6,a7);
   udp_y2 A3(y2,a0,a1,a2,a3,a4,a5,a6,a7);
   endmodule