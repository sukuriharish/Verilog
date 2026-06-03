module alu_status(input [3:0] a, b, input [1:0] op, output [3:0] res, output [3:0] flags);
  wire [4:0] tmp = (op == 2'b00) ? (a + b) : (op == 2'b01) ? (a - b) : {1'b0, (a & b)};
  assign res = tmp[3:0];
  assign flags[0] = (res == 4'b0000); 
  assign flags[1] = tmp[4];           
  assign flags[2] = res[3];           
  assign flags[3] = (a[3] == b[3]) && (res[3] != a[3]); 
endmodule