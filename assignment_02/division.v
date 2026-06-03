module division;
  integer n = 55;
  initial begin
    if (n % 5 == 0 && n % 11 == 0)
      $display("%0d is divisible by both 5 and 11", n);
    else
      $display("%0d is not divisible by both", n);
  end
endmodule