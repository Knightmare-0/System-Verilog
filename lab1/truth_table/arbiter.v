module arbiter(input [3:0] a, input clk,rst,output reg [1:0] y);

always @(posedge clk, posedge rst)
    if(rst)
	y <= 2'b0;
    else
	begin
	case (a)
		4'bxxx1 : begin 
				  y[0]<=1;
				  y[1]<=1;
				  end
		4'bx1x0 : begin 
				  y[0]<=1;
				  y[1]<=0;
				  end
		4'bx010 : begin 
				  y[0]<=0;
				  y[1]<=1;
				  end
		4'b1000 : begin 
				  y[0]<=0;
				  y[1]<=0;
				  end
		default : begin 
				  y[0]<=y[0];
				  y[1]<=y[1];
				  end
	endcase
	end

endmodule

	
