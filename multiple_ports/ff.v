module ff(input j,k,s,r,d,t,rst,clk,output reg qjk,qsr,qd,qt);

always @(posedge clk, posedge rst)
begin 

if(rst)

begin
qjk <= 0;
qsr <= 0;
qd <= 0;
qt <= 0;
end

else

	begin
		case({j,k})
			2'b00 : qjk <= qjk;
			2'b01 : qjk <= 0;
			2'b10 : qjk <= 1;
			2'b11 : qjk <= !qjk;
			default : qjk <= qjk;
		endcase

		case({s,r})
			2'b00 : qsr <= qsr;
			2'b01 : qsr <= 0;
			2'b10 : qsr <= 1;
			2'b11 : qsr <= 1'bx;
			default : qsr <= qsr;
		endcase

		qd <= d ;

		if(t)
			qt <= ~qt ;
		else
			 qt <= qt;
	end

end

endmodule

	
	


