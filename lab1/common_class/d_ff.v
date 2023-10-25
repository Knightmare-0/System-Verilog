//D_FF.sv
module d_ff(input clk, reset, d, output reg q);
always@(posedge clk, posedge reset)
begin
if(reset)
q<=0;
else
q<=d;
end
endmodule
