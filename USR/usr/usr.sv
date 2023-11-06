module usr(usr_inter.p1 rtl);
always @(posedge rtl.clk or  posedge rtl.rst)
begin
if(rtl.rst)
rtl.pout <= 4'b0000;
begin
case ({rtl.s1,rtl.s0})
	2'b00 : begin
		rtl.pout <= 0;
		rtl.sout <= rtl.pout[3];
		end
	2'b01 : begin
		rtl.pout = rtl.pout << 1;
		rtl.pout[0] = rtl.sin;
		rtl.sout = rtl.pout[3];
		end
	2'b10 : begin
		rtl.pout = rtl.pout >> 1;
		rtl.pout[3] = rtl.sin;
		rtl.sout = rtl.pout[0];
		end
	2'b11 : begin
		rtl.pout <= rtl.pin;
		rtl.sout <= rtl.pout[3];
		end
	default : begin
		rtl.pout <= 0;
		rtl.sout <= 0;
		end
endcase
end
end
endmodule 
