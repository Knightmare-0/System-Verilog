module jk_latch(jk_inter.p1 rtl);
assign rtl.qb=~rtl.q;
always @(posedge rtl.clk, posedge rtl.reset)
if (rtl.reset)
 rtl.q<=1'b0; 
else
begin
  case ({rtl.j, rtl.k})
 	2'b00: rtl.q<=rtl.q;
	2'b01: rtl.q<=0;
 	2'b10: rtl.q<=1'b1;
 	2'b11: rtl.q<=~rtl.q;
	default : rtl.q<=0;
 endcase
end
endmodule
