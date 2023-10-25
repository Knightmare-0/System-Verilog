class LogicGate;
function logic andGate(logic a,logic b);
return a & b ;
endfunction

function logic orGate(logic a, logic b);
return a|b;
endfunction

function logic xorGate(logic a, logic b);
return a^b;
endfunction 
endclass

class MUX extends LogicGate
function logic andGate(logic a,logic b);
return ~(a&b);
endfunction

function logic mux2to1(logic a,logic b,logic select);
logic andOut =andGate(a,~select);
logic orOut =orGate(b, andOut);
return orOut;
endfunction
endclass 

