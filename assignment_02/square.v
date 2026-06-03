module squares;
  integer i;
  initial begin
    for (i = 1; i <= 10; i = i + 1) begin
      $display("Square of %0d is %0d", i, i * i);
    end
  end
endmodule