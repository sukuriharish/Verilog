module div;
  integer a = 20, b = 4, res;
  initial begin
    res = a / b;
    $display("Division: %0d", res);
  end
endmodule