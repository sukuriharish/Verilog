module negative;
  integer n = -5;
  initial begin
    if (n > 0) $display("%0d is Positive", n);
    else if (n < 0) $display("%0d is Negative", n);
    else $display("Number is Zero");
  end
endmodule