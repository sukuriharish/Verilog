module reverse_array;
  integer arr [0:4] = '{1, 2, 3, 4, 5};
  integer i;
  initial begin
    $display("Reversed Array:");
    for (i = 4; i >= 0; i = i - 1) begin
      $display("%0d", arr[i]);
    end
  end
endmodule