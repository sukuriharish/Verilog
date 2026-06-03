`timescale 1ns / 1ps

module m_detector( output reg a, input [2:0]y

    );
     initial
      a=1'b0;
    always @(*)
       
       if(y[2]&&y[1]||y[1]&&y[0]||y[2]&&y[0])
           a=1'b1;
        else
           a=1'b0;   
     
endmodule
