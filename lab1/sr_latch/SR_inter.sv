//SR_inter.sv
interface SR_inter(input bit clk);
logic s,r,reset,set;
logic q,q_bar;
modport RTL1(input clk, s ,r ,reset,set, output q, q_bar);
modport test1(input q,q_bar,output clk, s,r, reset,set);
endinterface: SR_inter
