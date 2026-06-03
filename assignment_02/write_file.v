module write_file;
  integer f;
  initial begin
    f = $fopen("test.txt", "w");
    $fdisplay(f, "Writing first line to file.");
    $fclose(f);
  end
endmodule