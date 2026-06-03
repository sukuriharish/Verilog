module sum_array;
  integer arr [0:3];
  integer i, sum = 0;
  initial begin
    arr[0]=5; arr[1]=10; arr[2]=15; arr[3]=20;
    for (i = 0; i < 4; i = i + 1) sum = sum + arr[i];
    $display("Total Sum: %0d", sum);
  end
endmodule