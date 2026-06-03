`include "fdemux1to4.v"
module tb_fdemux1to4;
reg s0,s1,x;
wire [3:0]y;
fdemux1to4 DUT(y,s0,s1,x);


initial begin

$monitor("time=%b y=%b s0=%b s1=%b x=%b",$time,y,s0,s1,x);
#0 x=1;
#10 s0=0;s1=0;
#5 s0=0;s1=1;
#10 s0=1;s1=0;
#5 s0=1;s1=1;
#10 $finish;
end
initial begin
    $dumpfile("fdemux1to4.vcd");
    $dumpvars();
  end

endmodule 
