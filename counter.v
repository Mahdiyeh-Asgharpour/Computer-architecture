module counter(input clk,input rst, input x,output  a,output  b,output  c);
  and(y1,!a,!b,!c);
  and(y2,a,b,c);
  or(ta,y1,y2);
  tff1 tffa(clk,ta,rst,a);
  and(y3,!c,!x);
  and(y4,x,c);
  or(tb,y3,y4);
  tff1 tffb(clk,tb,rst,b);
  assign tc=1;
  tff1 tffc(clk,tc,rst,c);
  
  endmodule
 module tff1 ( input clk, input t,input rst, output reg q);  
  always @ (posedge clk) begin
	if(rst)
		q=0;
	else
		if (t==1)  
			q<=!q;  
		else  
			q<=q;
  end  
 endmodule
 