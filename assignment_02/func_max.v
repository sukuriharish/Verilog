module func_max;
  function integer get_max(input integer a, b);
    get_max = (a > b) ? a : b;
  endfunction
  initial $display("Max of 45 and 99 is %0d", get_max(45, 99));
endmodule