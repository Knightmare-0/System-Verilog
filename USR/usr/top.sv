module top;
bit clk;
always #5 clk=~clk;
usr_inter i1(clk);
usr dut(i1.p1);
test T1(i1.p2);
initial
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, reset=%b, pout = %b", $time, clk, i1.rst,i1.pout);
end
endmodule 

