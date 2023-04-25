module seven (input A,B,C,D,output a,b,c,d,e,f,g);
sevensegment ( A,B,C,D, a,b,c,d,e,f,g);
endmodule

module sevensegment (input A,B,C,D,output a,b,c,d,e,f,g);
assign a=A|C|(B&D)|(~B&~D);
assign b=~B|(C&D)|(~C&~D);
assign c=B|~C|D;
assign d=A|(~B&~D)|(~B&C)|(C&~D)|(B&~C&D);
assign e=(~B&~D)|(C&~D);
assign f=A|(B&~C)|(B&~D)|(~C&~D);
assign g=A|(B&~C)|(~B&C)|(C&~D);
endmodule
