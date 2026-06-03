`include "binary_gray.v"

module tb_binary_gray;

reg [3:0]y;
wire [3:0]g;

binary_gray DUT(g,y);

initial begin
    $monitor("%b %b %b %b the given bit is %b %b %b %b", g[3],g[2],g[1],g[0],y[3],y[2],y[1],y[0]);

    #10 y[3]=0;y[2]=0;y[1]=0;y[0]=1;
    #10 y[3]=0;y[2]=0;y[1]=1;y[0]=0;
    #10 y[3]=0;y[2]=1;y[1]=0;y[0]=0;
    #10 y[3]=0;y[2]=0;y[1]=1;y[0]=1;
    #10 y[3]=1;y[2]=1;y[1]=0;y[0]=1;
    #10 $finish;

end
initial 
begin
 $dumpfile("binary_gray.vcd");
 $dumpvars();
 end
 endmodule
