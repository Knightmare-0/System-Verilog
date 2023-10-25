`include "d_ff.v"
`include "jk_ff.v"
`include "sr_ff.v"
`include "t_ff.v"
`include "interface.sv"
`include "test.sv"

module top;
bit clk;
always #5 clk=~clk;
usr_inter i(clk);
d_ff d(.d(i.d),.clk(clk),.reset(i.reset),.q(i.q));
jk_ff jk(.j(i.j),.k(i.k),.clk(clk),.reset(i.reset),.q(i.q));
sr_ff sr(.s(i.s),.r(i.r),.clk(clk),.reset(i.reset),.q(i.q));
t_ff t(.t(i.t),.clk(clk),.reset(i.reset),.q(i.q));
test t1(i1.TB);
initial
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, j=%b, k = %b, s = %b , r = %b, d = %b, t = %b, q = %b", $time, clk, i1.j,i1.k,i1.s,i1.r,i1.d,i1.t,i1.q);
end
endmodule 

