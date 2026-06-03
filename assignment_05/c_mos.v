`timescale 1ns / 1ps
module c_mos( output out, input in
    );
    supply0 gnd;
    supply1 vcc;
    pmos p1(out,vcc,in);
    nmos p2(out,gnd,in); 
endmodule
