module count_up;
  integer i;
  initial begin
    for(i=1; i<=10; i=i+1) $display(i);
  end
endmodule