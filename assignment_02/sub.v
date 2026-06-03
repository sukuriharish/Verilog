module sub;
  integer a = 50, b = 20, res;
  initial begin
    res = a - b;
    $display("Subtraction: %0d", res);
  end
endmodule