module tmm_c2(
	input clk,
	input rst_n,
	input [19:0] m,
	output reg clk_out
);


reg [19:0]count;

always@(posedge clk)
begin
	if(!rst_n)
	begin
		count<=0;
		clk_out<=0;
	end

	else if(count==m-1)
	begin
		clk_out<=~clk_out;
		count<=0;
	end
	else if(count==m/2-1)
	begin
		clk_out<=~clk_out;
		count<=count+1;
	end
	else
		count<=count+1;
end

endmodule

