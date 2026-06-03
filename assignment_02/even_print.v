module print_evens;
  integer i;
  initial begin
    for(i=1; i<=20; i=i+1)
      if(i % 2 == 0) $display(i);
  end
endmodule