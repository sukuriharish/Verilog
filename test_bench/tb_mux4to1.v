`include "mux4to1.v"

module tb_mux4to1;

reg s0,s1;
reg [3:0]x;
wire y;

mux4to1 DUT(y,s0,s1,x);
initial 
begin
 x[0]=0;
 x[1]=1;
 x[2]=1;
 x[3]=0;
end
initial begin
$monitor("%b %b %b %b %b",$time, s0,s1,x,y);
#10 s0=0; s1=0;
#10 s0=1; s1=0;
#10 s0=0; s1=1;
#10 s0=1; s1=1;
#10 $finish;
end
endmodule