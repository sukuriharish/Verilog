module mux2(output reg x, input a,b,c,d,input s0,s1);

always @(*) 
  if(s0&&s1)
      x=a;
  else if(s1&&~s0)
       x=b;
  else if(~s1&&s0)
       x=c;    
  else 
       x=d;
     
endmodule