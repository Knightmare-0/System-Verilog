module counter(count_inter.p1 rtl);
always @(posedge rtl.clk , posedge rtl.rst)
begin
if(rtl.rst) 
rtl.count <= 4'b0;
else
rtl.count <= rtl.count + 4'b0001;
end

endmodule 
