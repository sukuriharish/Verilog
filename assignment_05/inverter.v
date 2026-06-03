`timescale 1ns / 1ps


module inverter(output out, input in);
assign #2 out=~in;
endmodule
