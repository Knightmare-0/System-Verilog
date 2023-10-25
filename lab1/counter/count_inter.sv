interface count_inter(input bit clk);
logic [3:0] count;
logic rst;
modport p1(input clk, rst , output count);
modport p2(output clk, rst , input count);
endinterface : count_inter 
