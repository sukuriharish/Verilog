module parity#(parameter n=4)(
  output y, input [n-1:0]a
    );
     wire [n-1:0]temp;
    genvar i;
    generate
     for(i=0;i<=4;i=i+1)
     begin : Xor
      xor(temp[i],a[i],temp[i-1]); 
    end
    assign y=temp[i-1];
    endgenerate
endmodule
