module copy_array;
  integer source [0:2] = '{10, 20, 30};
  integer destination [0:2];
  integer i;
  initial begin
    for (i = 0; i < 3; i = i + 1) destination[i] = source[i];
    $display("Copy Complete. Destination[1] = %0d", destination[1]);
  end
endmodule