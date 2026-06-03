`include "multiplier_4bit.v"

module tb_multiplier_4bit;
reg [3:0]x,y;
wire [7:0]z;

multiplier_4bit DUT(z,x,y);
initial begin

$monitor("time=%0b z=%b x=%b y=%b",$time,z,x,y);
x=4'b1001;
y=4'b1011;
#10 x=4'b1001;
y=4'b1011;
/*#10 x[0]=0;y[0]=0;
#10 x[1]=0;y[1]=1;
#10 x[2]=1;y[2]=0;

#10 x[3]=1;y[3]=1;
#10 x[4]=0;y[4]=0;
#10 x[5]=0;y[5]=1;
#10 x[6]=1;y[6]=0;
#10 x[7]=1;y[7]=1;*/
#10 $finish;
end 
initial begin
    $dumpfile("multiplier_4bit.vcd");
    $dumpvars();
  end
endmodule 
