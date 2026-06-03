`timescale 1ns / 1ps
module time_scale(output reg y, input clk);

always @(posedge clk or negedge clk)
begin
if(clk)
begin
   y=~clk;
end
else
  begin
    y=~clk;
 end
 end
initial
begin
  $dumpfile("test.vcd");
  $dumpvars();
end 
endmodule
