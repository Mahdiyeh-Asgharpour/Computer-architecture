module counter(input clk,input x,output reg a,output reg b,output reg c);
  and(y1,!a,!b,!c);
  and(y2,a,b,c);
  or(ta,y1,y2);
  tff tffa(clk,ta,a);
  and(y3,!c,!b);
  and(y4,b,c);
  and(y5,!x,a,b);
  or(tb,y3,y4,y5);
  tff tffb(clk,tb,b);
  and(y6,!x,!a);
  or(tc,!b,c,x,y6);
  tff tffc(clk,tc,c);
  
  endmodule
 module tff ( input clk, input t, output reg q);  
  always @ (posedge clk) begin  
    if (t==1)  
      q =!q;  
    else  
        q=q;
  end  
 endmodule