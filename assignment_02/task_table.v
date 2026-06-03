module task_table;
  task print_table(input integer n);
    integer i;
    for (i = 1; i <= 10; i = i + 1)
      $display("%0d x %0d = %0d", n, i, n*i);
  endtask
  initial print_table(7);
endmodule