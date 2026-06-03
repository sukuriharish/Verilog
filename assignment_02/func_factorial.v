module func_factorial;
  function integer fact(input integer n);
    integer i;
    fact = 1;
    for (i = 1; i <= n; i = i + 1) fact = fact * i;
  endfunction
  initial $display("Factorial of 6 is %0d", fact(6));
endmodule