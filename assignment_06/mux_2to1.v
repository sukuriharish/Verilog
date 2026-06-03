`timescale 1ns / 1ps
         module mux_2to1(output out , input s,input [1:0]a);
         
         assign #4  out =a[s];
         endmodule                                                                           
                                                                         