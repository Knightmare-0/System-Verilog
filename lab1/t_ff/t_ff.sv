//T_FF.sv
module t_ff(T_inter.RTL1 rtl1);
always@(posedge rtl1.clk, posedge rtl1.reset)
begin
if(rtl1.reset)
rtl1.q<=0;
else if(rtl1.set)
rtl1.q<=1;
else if(rtl1.t)
rtl1.q<= !rtl1.q;
end
endmodule
