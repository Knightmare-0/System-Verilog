module usr(input s0,s1,sin,rst,clk, input [3:0] pin, output reg sout, output reg [3:0] pout);

always @(posedge clk or  posedge rst)
begin
if(rst)
pout <= 4'b0000;
else
begin
case ({s1,s0})
	2'b00 : begin
		pout <= 0;
		sout <= pout[3];
		end
	2'b01 : begin
		pout = pout << 1;
		pout[0] = sin;
		sout = pout[3];
		end
	2'b10 : begin
		pout = pout >> 1;
		pout[3] = sin;
		sout = pout[0];
		end
	2'b11 : begin
		pout <= pin;
		sout <= pout[3];
		end
	default : begin
		pout <= 0;
		sout <= 0;
		end
endcase
end
end
endmodule 
