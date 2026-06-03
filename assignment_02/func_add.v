module func_add;
  function integer add(input integer x, y);
    add = x + y;
  endfunction
  initial $display("Addition via Function: %0d", add(15, 25));
endmodule