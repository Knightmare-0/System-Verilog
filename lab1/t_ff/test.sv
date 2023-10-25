//Test Module
module test(T_inter.test1 t1);
initial
begin
t1.reset=0;
t1.set=0;
t1.t=0;
#10
t1.reset=1;t1.set=1;
t1.t=0;
#10
t1.reset=0;
t1.t=0;
#10
t1.t=1;t1.set=0;
#10
t1.t=0;
#10
t1.t=1;
#10
t1.t=0;
#100
$finish;
end 
endmodule

