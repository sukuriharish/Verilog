`include "decoder_3to8.v"

module tb_decoder_3to8;

  reg [2:0] A;
  wire [7:0] Q;

  decoder_3to8 DUT(Q,A);

  initial begin
$monitor("Time=%0t | Output A=%b | Input Q=%b", $time, A, Q);
  #10 A[2]=0;A[1]=0;A[0]=0;
  #10 A[2]=0;A[1]=0;A[0]=1;
  #10 A[2]=0;A[1]=1;A[0]=0;
  #10 A[2]=0;A[1]=1;A[0]=1;
  #10 A[2]=1;A[1]=0;A[0]=0;
  #10 A[2]=1;A[1]=0;A[0]=1;
  #10 A[2]=1;A[1]=1;A[0]=0;
  #10 A[2]=1;A[1]=1;A[0]=1;
    #10 $finish;
  end

  initial begin
    $dumpfile("decoder_3to8.vcd");
    $dumpvars(0, tb_decoder_3to8);
  end

endmodule 