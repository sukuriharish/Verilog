`timescale 1ns / 1ps

module nor_gate(output y, input a,b );
wire c;
supply1 pwr;
supply0 gnd;
pmos p1(c,pwr,b);
pmos p2(y,c,a);

nmos n1(y,gnd,a);
nmos n2(y,gnd,b);
endmodule
