`include "fulladder.v"
module tb_fulladder;
reg a,b,c;
wire s,y;

fulladder DUT(s,y,a,b,c);

initial begin
$monitor("$time | s=%b|c=%b|a=%b|b=%b|c=%b",s,y,a,b,c);

#10 a=0;b=0;
#10 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#10 $finish;
end
initial begin
$dumpfile("fulladder.vcd");
$dumpvars();
end
endmodule
