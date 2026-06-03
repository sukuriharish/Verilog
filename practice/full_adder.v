`timescale 1ns / 1ps


primitive udp_sum(output sum, input a,b,c

    );
    
    table
  //a b c  sum
    0 0 0: 0;
    0 0 1: 1;
    0 1 0: 1;
    0 1 1: 0;
    1 0 0: 1;
    1 0 1: 0;
    1 1 0: 0;
    1 1 1: 1;
    endtable
    endprimitive
    
    primitive udp_carry(output carry,input a,b,c);
    
    table
   //a  b  carry
    0 0 0: 0;
    0 0 1: 0;
    0 1 0: 0;
    0 1 1: 1;
    1 0 0: 0;
    1 0 1: 1;
    1 1 0: 1;
    1 1 1: 1;
    endtable
    endprimitive
    
    module full_adder(output sum,carry,input a,b,c);
    udp_sum S1 (sum,a,b,c);
    udp_carry C1 (carry,a,b,c);
      
endmodule
