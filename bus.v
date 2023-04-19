module bus(output  [7:0]out,input [7:0] a,input [7:0] b,input [7:0] c,input[7:0] d,input [7:0] e,input[7:0] f,input s0,input s1,input s2);
mux81 mux7(.out(out[7]),.m1(a[7]),.m2(b[7]),.m3(c[7]),.m4(d[7]),.m5(e[7]),.m6(f[7]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux6(.out(out[6]),.m1(a[6]),.m2(b[6]),.m3(c[6]),.m4(d[6]),.m5(e[6]),.m6(f[6]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux5(.out(out[5]),.m1(a[5]),.m2(b[5]),.m3(c[5]),.m4(d[5]),.m5(e[5]),.m6(f[5]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux4(.out(out[4]),.m1(a[4]),.m2(b[4]),.m3(c[4]),.m4(d[4]),.m5(e[4]),.m6(f[4]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux3(.out(out[3]),.m1(a[3]),.m2(b[3]),.m3(c[3]),.m4(d[3]),.m5(e[3]),.m6(f[3]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux2(.out(out[2]),.m1(a[2]),.m2(b[2]),.m3(c[2]),.m4(d[2]),.m5(e[2]),.m6(f[2]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux1(.out(out[1]),.m1(a[1]),.m2(b[1]),.m3(c[1]),.m4(d[1]),.m5(e[1]),.m6(f[1]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
mux81 mux0(.out(out[0]),.m1(a[0]),.m2(b[0]),.m3(c[0]),.m4(d[0]),.m5(e[0]),.m6(f[0]),.m7(0),.m8(0), .s0(s0), .s1(s1), .s2(s2));
endmodule 
module mux81(output reg out,input  m1,input  m2,input  m3,input  m4,input  m5,input  m6,input  m7,input  m8,input  s0,input  s1,input  s2);
	always @(*)
	begin
		if(!s2)
			if(!s1)
				if(!s0)
					out=m1;
		if(!s2)
			if(!s1)
				if(s0)
					out=m2;
		if(!s2)
			if(s1)
				if(!s0)
					out=m3;
		if(!s2)
			if(s1)
				if(s0)
					out=m4;
		if(s2)
			if(!s1)
				if(!s0)
					out=m5;
		if(s2)
			if(!s1)
				if(s0)
					out=m6;
		if(s2)
			if(s1)
				if(!s0)
					out=m7;
		if(s2)
			if(s1)
				if(s0)
					out=m8;
	end
endmodule
