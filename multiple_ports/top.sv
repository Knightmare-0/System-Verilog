`include "test.sv"
`include "ff.v"
`include "ff_inter.sv"

module top;
bit clk;
always #5 clk = ~clk;
ff_intf intf_ins(clk);
ff dut_ins(.j(intf_ins.j),.k(intf_ins.k),.s(intf_ins.s),.r(intf_ins.r),.d(intf_ins.d),.t(intf_ins.t),.rst(intf_ins.rst),.clk(clk),.qjk(intf_ins.qjk),.qsr(intf_ins.qsr),.qd(intf_ins.qd),.qt(intf_ins.qt));
test_ff test_ins(intf_ins);
initial 
begin
$dumpfile("top.vcd");
$dumpvars;
end
endmodule 

