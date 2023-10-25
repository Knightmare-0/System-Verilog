class inputs;
bit A,B;
endclass

class jk_sr_inputs extends inputs;
bit j,k,s,r;

task drive_jk();
j = A;
k = B;
endtask

task drive_sr();
s = A;
r = B;
endtask

endclass

class d_inputs extends inputs;
bit d ;

task drive_d();
d = A;
endtask

endclass

class t_inputs extends inputs;
bit t ;

task drive_t();
t = B;
endtask

endclass

class driver;
inputs in;
jk_sr_inputs jkt , srt ;
d_inputs dt;
t_inputs tt;

virtual ff_intf.TEST_MP T1;

function new(virtual ff_intf.TEST_MP T2);
this.T1=T2;
endfunction

task drive_data();
in.A <= $random();
in.B <= $random();

jkt.drive_jk();
srt.drive_sr();
dt.drive_d();
tt.drive_t();

T1.cb.s <= srt.s;
T1.cb.r <= srt.r;
T1.cb.j <= jkt.j;
T1.cb.k <= jkt.k;
T1.cb.d <= dt.t;
T1.cb.t <= tt.d;

endtask

endclass

