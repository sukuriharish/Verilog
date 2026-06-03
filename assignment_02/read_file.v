module read_file;
  integer f;
  reg [79:0] line;
  initial begin
    f = $fopen("test.txt", "r");
    if (f) begin
      $fgets(line, f);
      $display("Read from file: %s", line);
      $fclose(f);
    end
  end
endmodule