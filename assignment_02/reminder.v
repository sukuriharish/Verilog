module remainder;
  integer a = 10, b = 3, res;
  initial begin
    res = a % b;
    $display("Remainder: %0d", res);
  end
endmodule