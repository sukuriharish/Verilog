module fibonacci;
  integer a=0, b=1, c, i;
  initial begin
    $write("%0d %0d ", a, b);
    for(i=2; i<10; i=i+1) begin
      c = a + b;
      $write("%0d ", c);
      a = b; b = c;
    end
  end
endmodule