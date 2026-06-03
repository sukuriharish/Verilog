module reverse_counting;
  integer i;
  initial begin
    for (i = 15; i >= 1; i = i - 1) begin
      $display("Count: %0d", i);
    end
  end
endmodule