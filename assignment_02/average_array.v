module average_array;
  integer arr [0:3];
  integer i, sum = 0;
  real avg;
  initial begin
    arr[0]=10; arr[1]=20; arr[2]=30; arr[3]=40;
    for (i = 0; i < 4; i = i + 1) sum = sum + arr[i];
    avg = sum / 4.0;
    $display("Average: %f", avg);
  end
endmodule