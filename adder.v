module adder 
(input  a,
input  b,
input Cin,
output  s,
output cout);
halfadder (a,b,s,cout);
fulladder(a,b,Cin,s,cout);
endmodule 

module fulladder
(input a,
input b,
input cin,
output s,
output cout);

 wire a1, a2, a3;    
    xor u1(a1,a,b);
 and u2(a2,a,b);
 and u3(a3,a1,cin);
 or u4(cout,a2,a3);
    xor u5(s,a1,cin); 

endmodule

module halfadder
(input a,
input b,
output s,
output c);

assign s = a ^ b;
assign c = a & b;

endmodule
