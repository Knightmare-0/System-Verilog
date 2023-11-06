module jk_ff(input clk,j,k,reset,output reg q);
always @(posedge clk, posedge reset)
if (reset)
 q<=1'b0; 
else
begin
  case ({j, k})
 	2'b00: q<=q;
	2'b01: q<=0;
 	2'b10: q<=1'b1;
 	2'b11: q<=~q;
 endcase
end
endmodule
