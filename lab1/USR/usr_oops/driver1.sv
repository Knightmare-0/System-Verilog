class driver1;

virtual usr_inter.TB T1;

function new(virtual usr_inter.TB T2);
this.T1=T2;
endfunction

task drive_data();
T1.cb.s0 <= $random();
T1.cb.s1 <= $random();
T1.cb.sin <= $random();
T1.cb.pin <= $random();
endtask

endclass
