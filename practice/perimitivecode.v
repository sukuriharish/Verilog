module perimitivecode(output g,k,s, input x1,x2,x3,x4);
wire t1,t2,t3,t4,t5,t6;
 
 and a1(t1,x1,x3);
 and a2(t2,x2,x4);
 not i1(t5,x3);
 not i2(t6,x2);
 or o1(t3,t5,x1);
 or o2(t4,t6,x4);
 and a3(g,t1,t2);
 and a4(s,t3,t4);
 or o3(k,g,s);
 
endmodule 