module multiplication_table;
  integer n=5, i;
  initial begin
    for(i=1; i<=10; i=i+1)
      $display("%0d x %0d = %0d", n, i, n*i);
  end
endmodule