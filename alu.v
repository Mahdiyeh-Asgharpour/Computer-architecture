module alu(input[3:0] a, input[3:0] b,input s0,input s1,input s2,input s3,input cin,output[3:0] y);
wire [3:0] v;
wire cout;
aritmethic a0(a,b,cin,s0,s1,v,cout);
wire [3:0] n;
logicwithoutshift l0(a,b,s0,s1,n);
wire [3:0] k;
assign  z=0;
shift shr(a,z,z,z,k);
wire [3:0] q;
assign  o=1;
shift shl(a,z,z,o,q);
mux4to1 mm(.andab(v),.orab(n),.xorab(k),.nota(q),.s0(s2),.s1(s3),.y(y));
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
module full(input a,input b ,input cin,output s, output cout);
xor(x1,a,b);
xor(s,x1,cin);
and(x2,cin,x1);
and(x3,a,b);
or(cout,x2,x3);
endmodule

module aritmethic(input[3:0] a,input[3:0] b,input cin,input s0,input s1,output[3:0] y,output cout);
not(s0n,s0);
not(s1n,s1);
//not(bn,b);
assign  z=0;
assign o=1;
wire m0,m1,m2,m3;
mux4to1 mm0(b[0],~b[0],z,o,s0,s1, m0);
mux4to1 mm1(b[1],~b[1],z,o,s0,s1,m1);
mux4to1 mm2(b[2],~b[2],z,o,s0,s1,m2);
mux4to1 mm3(b[3],~b[3],z,o,s0,s1, m3);
wire c0,c1,c2;
full f0(a[0],m0,cin,y[0],c0);
full f1(a[1],m1,c0,y[1],c1);
full f2(a[2],m2,c1,y[2],c2);
full f3(a[3],m3,c2,y[3],cout);
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
