module top;
bit clk;
always #5 clk =~clk;
count_inter in(clk);
counter dut(in);
test t(in);
initial 
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, reset=%b, count=%b", $time, clk, in.rst, in.count);
end
endmodule 

