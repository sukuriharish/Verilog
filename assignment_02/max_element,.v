module max_element;
  integer arr [0:4];
  integer i, max;
  initial begin
    arr[0]=12; arr[1]=45; arr[2]=7; arr[3]=89; arr[4]=23;
    max = arr[0];
    for (i = 1; i < 5; i = i + 1) begin
      if (arr[i] > max) max = arr[i];
    end
    $display("Maximum Element: %0d", max);
  end
endmodule