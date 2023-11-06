module top;
bit clk;
always #5 clk = ~clk;
jk_inter in(clk);
jk_latch dut(in);
test t(in);
initial 
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, reset=%b, j=%b, k=%b, q=%b, q_bar=%b", $time, clk, in.reset, in.j, in.k, in.q, in.qb);
end
endmodule 

