`timescale 1ns/100ps

module tb_moore_detector;

  reg clk, rst
  wire z;
  wire [1:0]current;   

  // Instantiate the DUT (Device Under Test)
  moore_detector dut (
    .x(x),
    .rst(rst),
    .clk(clk),
    .z(z)
  );
   assign current=dut.current; 
  // Clock generation: 10 ns period
  initial clk = 0;
  always #5 clk = ~clk;  

  // Apply stimulus
  initial begin
    // Initialize
    rst = 1; x = 0;
    #8;                // keep reset active for >1 clock
    rst = 0;            // release reset

    // Apply input sequence: 1010101
    // Expected detection at every "101"
    x = 1; #10;   // input = 1
    x = 0; #10;   // input = 0
    x = 1; #10;   // input = 1 -> sequence "101" detected here
    x = 0; #10;   // input = 0
    x = 1; #10;   // input = 1 -> another "101"
    x = 1; #10;   // input = 1
    x = 0; #10;   // input = 0 -> new "10"
    x = 1; #10;   // input = 1 -> sequence "101" again

    #20;
    $finish;
  end

  // Monitor outputs
  initial begin
    $monitor("Time=%0t | x=%b | rst=%b | state=%0d | z=%b",
              $time, x, rst, dut.current, z);
  end

endmodule