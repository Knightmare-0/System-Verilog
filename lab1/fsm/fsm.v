

module fsm(input x, clk,reset, output reg z,d);


reg [2:0] cst, nst;

parameter S0 = 3'b000, W0 = 3'b001, W1 =
3'b010, W2 = 3'b011, OT = 3'b100, DE = 3'b101; //all state

always @(cst or x)

begin

case (cst)

S0: if (x == 1'b0)

begin nst = S0; z=1'b0; d=1'b0; end

else

begin nst = W0; z=1'b0; d=1'b0; end

W0:

begin nst = W1; z=1'b0; d=1'b0; end
W1:

begin nst = W2; z=1'b0; d=1'b0; end

W2:

begin nst = OT; z=1'b1; d=1'b0; end

OT:

begin nst = DE; z=1'b0; d=1'b1; end

DE:

begin nst = S0; z=1'b0; d=1'b0; end


endcase

end

always@(posedge clk)

begin

if (reset) cst <= S0;

else cst <= nst;

end

endmodule
