module min_element;
  integer arr [0:4];
  integer i, min;
  initial begin
    arr[0]=12; arr[1]=45; arr[2]=7; arr[3]=89; arr[4]=23;
    min = arr[0];
    for (i = 1; i < 5; i = i + 1) begin
      if (arr[i] < min) min = arr[i];
    end
    $display("Minimum Element: %0d", min);
  end
endmodule