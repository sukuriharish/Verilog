module leap_year;
  integer year = 2024;
  initial begin
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
      $display("%0d is a Leap Year", year);
    else
      $display("%0d is not a Leap Year", year);
  end
endmodule