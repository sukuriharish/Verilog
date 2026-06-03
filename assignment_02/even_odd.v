module even_odd;
  integer n = 7;
  initial begin
    if (n % 2 == 0) $display("%0d is Even", n);
    else $display("%0d is Odd", n);
  end
endmodule