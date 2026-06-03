module multi_line_write;
  integer f;
  initial begin
    f = $fopen("lines.txt", "w");
    $fdisplay(f, "Line 1");
    $fdisplay(f, "Line 2");
    $fdisplay(f, "Line 3");
    $fclose(f);
  end
endmodule