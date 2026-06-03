module search_element;
  integer arr [0:4] = '{10, 20, 30, 40, 50};
  integer key = 30, i, found = 0;
  initial begin
    for (i = 0; i < 5; i = i + 1) begin
      if (arr[i] == key) begin
        $display("Element %0d found at index %0d", key, i);
        found = 1;
      end
    end
    if (!found) $display("Element not found");
  end
endmodule