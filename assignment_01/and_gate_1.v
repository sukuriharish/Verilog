`timescale 1ns / 1ps
module and_gate_1( output y, input a,b);
    assign y = a&b;
endmodule


module tb_and_gate;
reg a,b;
wire y;
and_gate_1 DUT(y,a,b);
initial begin
$monitor ("A=%b,B=%b,y=%b",a,b,y);

#10  a=0;b=0;
#10  a=0;b=1;
#10  a=1;b=0;
#10  a=1;b=1;

#10 $finish;
end
endmodule


