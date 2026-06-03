module alu2c(
    output reg [1:0]y, input a,b,s0,s1
    );
    
    always @(*)
     if(s0&&s1)
      y=a+b;
      else if(s0&&~s1)
      y=a-b;
      else if(~s0&&s1)
      y=a&b;
     else 
     y=a|b; 
    
endmodule
