module swap;
  integer a = 10, b = 20;
  initial begin
    $display("Before: a=%0d, b=%0d", a, b);
    {a, b} = {b, a};
    $display("After: a=%0d, b=%0d", a, b);
  end
endmodule