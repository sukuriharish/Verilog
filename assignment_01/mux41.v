module mux41(output x, input s0,s1,[3:0] a);
 wire [3:0]y,c;
 wire t1,t2;
 not(t1,s0);
 not(t2,s1);
 nand b0(y[0],t1,t2,a[0]),b1(y[1],s0,t2,a[1]),b2(y[2],t1,s1,a[2]),b3(y[3],s0,s1,a[3]);
 nand b5(c[0],y[0],y[0]),b6(c[1],y[1],y[1]),b7(c[2],y[2],y[2]),b8(c[3],y[3],y[3]);
 or o1(x,c[3],c[2],c[1],c[0]);
 endmodule