`timescale 1ns / 1ps

module gray_code( output [3:0]g, input [3:0]y);
    assign g[0]= y[0]^y[1];
    assign g[1]= y[1]^y[2];
    assign g[2]= y[2]^y[3];
    assign g[3]= y[3];
         
endmodule
module tb_gray_code;
reg [3:0]y;
wire [3:0]g;
gray_code DUT(y,a,b);
initial begin
$monitor ("time=%time A=%b,B=%b,y=%b",a,b,y);

#10  a=0;b=0;
#10  a=0;b=1;
#10  a=1;b=0;
#10  a=1;b=1; 

#10 $finish;
end
endmodule