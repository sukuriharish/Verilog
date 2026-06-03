`timescale 1ns / 1ps


`timescale 1ns / 1ps


primitive udp_diff(output diff, input a,b,c

    );
    
    table
  //a b c  diff
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
    
    primitive udp_borrow(output borrow,input a,b,c);
    
    table
   //a  b borrow
    0 0 0: 0;
    0 0 1: 1;
    0 1 0: 1;
    0 1 1: 1;
    1 0 0: 0;
    1 0 1: 0;
    1 1 0: 0;
    1 1 1: 1;
    endtable
    endprimitive
    
    module full_sub(output diff,borrow,input a,b,c);
    udp_diff D1 (diff,a,b,c);
    udp_borrow B1 (borrow,a,b,c);
      
endmodule
