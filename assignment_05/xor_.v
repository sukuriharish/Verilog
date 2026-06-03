
module xor_(
            output y, input a,b
    );
    parameter x=1;
           generate
                 if(x==1)
                   begin:  Xor 
                   xor a1(y,a,b); 
                   end 
                 else 
                    begin : And 
                    and a2(y,a,b);
                 end 
            endgenerate 
endmodule
