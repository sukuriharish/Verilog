module func_sub;
  function integer sub(input integer x, y);
    sub = x - y;
  endfunction
  initial $display("Subtraction via Function: %0d", sub(50, 20));
endmodule