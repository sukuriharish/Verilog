module task_inout;
  task update_val(inout integer val);
    val = val * 2;
  endtask
  integer data = 25;
  initial begin
    update_val(data);
    $display("Updated Value: %0d", data);
  end
endmodule