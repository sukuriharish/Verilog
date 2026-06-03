module factorial;
  integer n=5, fact=1, i;
  initial begin
    for(i=1; i<=n; i=i+1) fact = fact * i;
    $display("Factorial: %0d", fact);
  end
endmodule