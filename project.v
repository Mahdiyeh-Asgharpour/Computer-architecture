module full(input a,input b ,input cin,output s, output cout);
xor(x1,a,b);
xor(s,x1,cin);
and(x2,cin,x1);
and(x3,a,b);
or(cout,x2,x3);
endmodule
module mux4to1 (input andab,input orab,input xorab,input nota,input s0,input s1,output y);
not(s2n,s2);
not(s1n,s1);
and(x1,s2n,s1n,andab);
and(x2,s2n,s1,orab);
and(x3,s2,s1n,xorab);
and(x4,s2,s1,nota);
or(y,x1,x2,x3,x4);
endmodule
module logicwithoutshift(input a,input b,input s0,input s1,output y);
wire x1,x2,x3,x4;
and(x1,a,b);
or(x2,a,b);
xor(x3,a,b);
not(x4,a);
mux4to1 m(x1,x2,x3,x4,s0,s1,y);
endmodule
module mux2to1(input a,input b, input s,output y);
not(sn,s);
and(x1,a,sn);
and(x2,b,s);
or(y,x1,x2);
endmodule

module shift(input[3:0] a,input r,input l,input s,output [3:0] y);
mux2to1 m1( r, a[1], s, y[0]);
mux2to1 m2(a[0],a[2],s,y[1]);
mux2to1 m3(a[1],a[3],s,y[2]);
mux2to1 m4(a[2],l,s,y[3]);
endmodule
module AdderSubtractor(input[3:0] a, input[3:0] b,output[3:0] s,output c);
assign m=1;
xor(x0,b[0],m);
xor(x1,b[1],m);
xor(x2,b[2],m);
xor(x3,b[3],m);
full(a[0],x0,m,s[0],c1);
full(a[1],x1,m,s[1],c2);
full(a[2],x2,m,s[2],c3);
full(a[3],x3,m,s[3],c);
endmodule
module compare(input a,input b,output c,output d,output e);
and(c,~a,b);
and(e,~b,a);
or(x0,c,e);
not(d,x0);
endmodule
