//top.sv
module top;
bit clk;
SR_inter i1(clk);
srl Dut(i1);
test T1(i1);
always #5 clk=~clk;
initial
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, reset=%b,set=%b, s=%b, r=%b, q=%b, q_bar=%b", $time, clk, i1.reset, i1.set, i1.s, i1.r, i1.q, i1.q_bar);
end
endmodule 

