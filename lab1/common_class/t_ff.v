//T_FF.sv
module t_ff(input clk, reset, set, t, output reg q);
always@(posedge clk, posedge reset)
begin
if(reset)
q<=0;
else if(set)
q<=1;
else if(t)
q<= !q;
end
endmodule
