class driver;

virtual inter_fsm.TB T1;

function new(virtual inter_fsm.TB T2);
this.T1=T2;
endfunction

task drive_data();
T1.cb.x <=$random();
endtask

endclass
