module count_even_arr;
  integer arr [0:5] = '{1, 2, 3, 4, 5, 6};
  integer i, count = 0;
  initial begin
    for (i = 0; i < 6; i = i + 1) begin
      if (arr[i] % 2 == 0) count = count + 1;
    end
    $display("Total Even Numbers in Array: %0d", count);
  end
endmodule