//D_inter.sv
interface T_inter(input bit clk);
logic t,reset,set;
logic q;
modport RTL1(input clk, t,reset,set, output q);
modport test1(input q,output clk, t, reset,set);
endinterface: T_inter
