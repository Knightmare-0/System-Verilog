
class driver;

virtual ff_intf.TEST_MP T1;

function new(virtual ff_intf.TEST_MP T2);
this.T1=T2;
endfunction

task drive_data();
T1.cb.s <= $random();
T1.cb.r <= $random();
T1.cb.j <= $random();
T1.cb.k <= $random();
T1.cb.d <= $random();
T1.cb.t <= $random();

endtask

endclass

