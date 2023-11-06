module top;
bit clk;

always #5 clk = ~clk;
arbiter_inter i1(clk);
arbiter Dut(.rst(i1.rst),.a(i1.a), .y(i1.y), .clk(clk));
test T1(i1);

initial
begin
$dumpfile("top.vcd");
$dumpvars;
end
endmodule 

