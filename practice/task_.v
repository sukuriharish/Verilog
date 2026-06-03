module task_(y);
  output reg y;

  // Initialize y so the toggle (~y) works
  initial y = 0;

  // Task definition
  task run_clk;
    begin
      forever begin
        #5 y = ~y; // Toggle the signal directly or via reference
      end
    end
  endtask

  // You must CALL the task for it to run
  initial begin
    run_clk();
  end
  initial 
     #200 $finish;
	 

endmodule