module full_add(output s,cout, input a,b,cin);
    wire t1,c1,t2,c2;
     halfadder(t1,c1,a,b);
     halfadder(s,c2,t1,cin);
     or(cout,c1,c2);
     endmodule