//Test Module
module test(SR_inter.test1 t1);
initial
begin
t1.reset=0;
t1.set=0;
t1.s=1;t1.r=0;
#10
t1.reset=1;t1.set=1;
t1.s=0;t1.r=0;
#10
t1.reset=0;
t1.s=1;t1.r=0;
#10
t1.s=0;t1.r=0;;t1.set=0;
#10
t1.s=0;t1.r=0;
#10
t1.s=0;t1.r=1;
#10
t1.s=1;t1.r=0;
#10;
t1.s=1;t1.r=1;
#100
$finish;
end 
endmodule

