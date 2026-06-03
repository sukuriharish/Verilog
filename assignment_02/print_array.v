module print_array;
  integer arr [0:2];
  initial begin
    arr[0] = 10; arr[1] = 20; arr[2] = 30;
    $display("Index 0: %0d", arr[0]);
    $display("Index 1: %0d", arr[1]);
    $display("Index 2: %0d", arr[2]);
  end
endmodule