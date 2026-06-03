`include "p_encoder.v"

module tb_p_encoder;

  reg [7:0] Q;
  wire [2:0] A;

  p_encoder DUT(A,Q);

  initial begin
    // Cleaner monitor: %0t is time, %b for the 3-bit output, %b for the 8-bit input
    $monitor("Time=%0t | Output A=%b | Input Q=%b", $time, A, Q);

    // Start with all zeros at time 0
    Q = 8'b00000000;

    // Test 1: Multiple bits are high (Q[4] and Q[2])
    // The encoder should pick '4' (100) because it has higher priority
    #10 Q = 8'b00010100; 
    
    // Test 2: Only Q[4] remains high
    #10 Q = 8'b00010000;

    // Test 3: A higher priority bit (Q[6]) turns on
    #10 Q = 8'b01010001; 

    #10 $finish;
  end

  initial begin
    $dumpfile("p_encoder.vcd");
    $dumpvars(0, tb_p_encoder);
  end

endmodule // Only one 'end' before this!