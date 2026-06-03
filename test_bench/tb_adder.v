`include "adder.v"

module tb_adder;

  reg a, b;
  wire s, c;

  // Connecting your adder
  adder DUT(s, c, a, b);

  initial begin
    // Added a clearer monitor string
    $monitor("Time=%0t | a=%b b=%b | s=%b c=%b", $time, a, b, s, c);
    
    #5  a=0; b=0;
    #10 b=1;
    #10 a=1; b=0;
    #10 b=1;
    #10 $finish; 
  end

  initial begin 
    $dumpfile("adder.vcd");
    $dumpvars(0, tb_adder); // It's safer to specify the scope
  end // Only one 'end' needed here!

endmodule