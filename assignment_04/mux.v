module mux(output reg x, input a,b,input s0);


always @(*) 
  if(s0)
   x=a;
   else 
    x=b;
endmodule