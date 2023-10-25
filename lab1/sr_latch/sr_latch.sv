//SR.sv
module srl(SR_inter.RTL1 rtl1);
always@(posedge rtl1.clk, posedge rtl1.reset)
begin
if(rtl1.reset)

begin
rtl1.q<=0  ;
rtl1.q_bar <=1 ;
end

else if(rtl1.set)

begin
rtl1.q <=1  ;
rtl1.q_bar <= 0;
end

else if(rtl1.s == 0 && rtl1.r == 0 )
begin
rtl1.q<= rtl1.q ;
rtl1.q_bar <= rtl1.q_bar;
end

else if(rtl1.s == 0 && rtl1.r == 1 )

begin
rtl1.q<= 1 ;
rtl1.q_bar <= 0;
end

else 

begin
rtl1.q<= 0 ;
rtl1.q_bar <= 1;
end

end
endmodule
