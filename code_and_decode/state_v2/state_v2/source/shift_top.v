module shift_top(
	input                        clk,
	input                        rst_n,


	output							  dout
	

);

wire trans_ready;
reg [4:0] data;//码元


//输出串行信号
wire signal;




always@(posedge trans_ready or negedge rst_n) 
begin
	  if(rst_n == 1'b0)
	  begin
		  data<=5'd0;
	  end
	  else
	  begin
		  if(data<5'd9)
				data<=data+5'd1;
		  else
		  begin
				data<=5'd0;
		  end
		  
	  end
end







assign dout=signal;

shift_data shift_data_inst(
	.clk(clk),
	.rst_n(rst_n),
	.data_in(data),
	.trans_done(trans_ready),
	.dout(signal)
);




endmodule


