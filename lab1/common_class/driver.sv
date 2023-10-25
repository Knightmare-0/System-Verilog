

class transactor;
rand bit s,r,j,k,d,t;
constraint C1{s inside{[0,1]};}
constraint C2{r inside{[0,1]};}
constraint C3{j inside{[0,1]};}
constraint C4{k inside{[0,1]};}
constraint C5{d inside{[0,1]};}
constraint C6{t inside{[0,1]};}
endclass

/*class driver_jk extends transactor;

virtual inter.TB T1;

function new(virtual inter.TB T2);
this.T1=T2;
endfunction

task drive_data_jk();
T1.cb.j <= j;
T1.cb.k <= k;
endtask

endclass

class driver_sr extends transactor;
virtual inter.TB T1;

function new(virtual inter.TB T2);
this.T1=T2;
endfunction

task drive_data_sr();
T1.cb.s <= s;
T1.cb.r <= r;
endtask
endclass

class driver_d extends transactor;
virtual inter.TB T1;

function new(virtual inter.TB T2);
this.T1=T2;
endfunction

task drive_data_d();
T1.cb.s <= d;
endtask
endclass

class driver_t extends transactor;
virtual inter.TB T1;

function new(virtual inter.TB T2);
this.T1=T2;
endfunction

task drive_data_t();
T1.cb.s <= t;
endtask
endclass
*/









`include "interface.sv"

class driver;
transactor tx;
virtual inter.TB i1;
function new(virtual inter.TB i1_new);
this.i1=i1_new;
this.tx=new();
$display ("%d : Driver: new method created", $time);
endfunction
task drive_data();
begin
repeat(20) @( i1.cb)
begin
if((tx.randomize()))
begin
i1.cb.s<=tx.s;
i1.cb.r<=tx.r;
$display("%d : driver: sent s=%b, r=%b ",$time, i1.cb.s,i1.cb.r);
end
else
$display("%d : Randomization error", $time);
end
end
endtask
endclass













