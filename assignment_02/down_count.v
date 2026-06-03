module count_down;
  integer i;
  initial begin
    for(i=10; i>=1; i=i-1) $display(i);
  end
endmodule