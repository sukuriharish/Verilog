module sum_n;
  integer n=10, sum=0, i;
  initial begin
    for(i=1; i<=n; i=i+1) sum = sum + i;
    $display("Sum: %0d", sum);
  end
endmodule