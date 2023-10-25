module top;
bit clk;
always #5 clk=~clk;
usr_inter i1(clk);
usr dut(.s0(i1.s0),.s1(i1.s1),.sin(i1.sin),.rst(i1.rst),.pin(i1.pin),.clk(clk),.pout(i1.pout),.sout(i1.sout));
test t1(i1.TB);
initial
begin
$dumpfile("top.vcd");
$dumpvars;
$monitor("time=%d, clk=%b, reset=%b, pout = %b", $time, clk, i1.rst,i1.cb.pout);
end
endmodule 

