module TB_top;

covergroup signal_coverage;
	coverpoint request_input (
	bins reg[0] = {[0:0]};
	bins reg[1] = {[1:1]};
	bins reg[2] = {[2:2]};
	bins reg[3] = {[3:3]};
)
coverpoint grant_output (
	bins grant[0] = {[0:0]};
	bins grant[1] = {[1:1]};
)
