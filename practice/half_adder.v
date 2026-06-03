`timescale 1ns / 1ps

primitive udp_sum(output sum, input a,b

    );
    
    table
  //a b   sum
    0 0 : 0;
    0 1 : 1;
    1 0 : 1;
    1 1 : 0;
    endtable
    endprimitive
    
    primitive udp_carry(output carry,input a,b);
    
    table
   //a  b  carry
    0 0 : 0;
    0 1 : 0;
    1 0 : 0;
    1 1 : 1;
    endtable
    endprimitive
    
    module half_adder(output sum,carry,input a,b);
    udp_sum S1 (sum,a,b);
    udp_carry C1 (carry,a,b);
      
endmodule
