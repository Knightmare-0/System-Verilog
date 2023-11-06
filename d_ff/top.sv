//top.sv
module top;
bit clk;
always #5 clk=~clk;
Dff_inter i1(clk);
d_ff Dut(i1.RTL1);
test T1(i1.test);

initial
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, reset=%b,set=%b, d=%b, q=%b", $time, clk, i1.reset, i1.set, i1.d, i1.q);
end
endmodule 

