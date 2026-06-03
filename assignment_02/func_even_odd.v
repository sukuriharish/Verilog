module func_even_odd;
  function string check(input integer n);
    if (n % 2 == 0) check = "Even";
    else check = "Odd";
  endfunction
  initial $display("Number 8 is %s", check(8));
endmodule