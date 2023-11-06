interface usr_inter(input bit clk);
logic s0,s1,sin,sout,rst;
logic [3:0] pout;
logic [3:0] pin; 
modport p1(input clk,s0,s1,sin,rst,pin, output sout,pout);
modport p2(output clk,s0,s1,sin,rst,pin, input sout,pout);
endinterface :usr_inter  

