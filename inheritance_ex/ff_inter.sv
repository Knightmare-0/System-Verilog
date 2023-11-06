interface ff_intf(input bit clk);

logic rst,d,t,qsr,qjk,qd,qt;
logic s,r,j,k;

clocking cb@(posedge clk);
output d,t, s,r,j,k;
input qsr,qjk,qd,qt
endclocking 

modport TEST_MP(clocking cb,output rst);

endinterface 

