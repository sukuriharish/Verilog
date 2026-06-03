`timescale 1ns / 1ps


module inverter_gate(output out , input in);

    assign #2 out = ~in;
endmodule
