module sum_odd;
  integer i, sum = 0, n = 20;
  initial begin
    for (i = 1; i <= n; i = i + 1) begin
      if (i % 2 != 0) sum = sum + i;
    end
    $display("Sum of odd numbers up to %0d: %0d", n, sum);
  end
endmodule