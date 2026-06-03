`timescale 1ns / 1ps


module nand_gate(output y,input a,b

    );
    wire x;
    supply1 vdd;
    supply0 gnd;
    
    pmos p1(y,vdd,a);
    pmos p2(y,vdd,b);
    nmos n1(y,x,a);
    nmos n2(x,gnd,y);
endmodule
