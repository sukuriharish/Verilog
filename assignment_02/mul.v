module mul;
  integer a = 5, b = 6, res;
  initial begin
    res = a * b;
    $display("Multiplication: %0d", res);
  end
endmodule