//这是FirIPCore.v文件的程序清单
module FirIPCore (
	reset_n,clk,Xin,
	Yout);
	
	input		reset_n;   //复位信号，低电平有效
	input		clk;       //FPGA系统时钟/数据速率：32MHz
	input	 signed [11:0]	Xin;  //数据输入频率为8MHZ
	output signed [24:0]	Yout; //滤波后的输出数据
	
	wire sink_valid,ast_source_ready,ast_source_valid,ast_sink_ready;
	wire [1:0] ast_source_error;
	wire [1:0] ast_sink_error;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	
	//由于系统时钟为数据速率的4倍，因此需要每4个时钟周期设置一次ast_sink_valid有效信号
	reg [1:0] count;
	reg  ast_sink_valid;
	always @(posedge clk or negedge reset_n)
	   if (!reset_n) begin
			count <= 2'd0;
			ast_sink_valid <= 1'b0;
		end
		else begin
		   count <= count + 2'd1;
			if (count==0)
			   ast_sink_valid <= 1'b1;
			else
			   ast_sink_valid <= 1'b0;
		end
		
	assign  sink_valid = ast_sink_valid;
	
	//实例化fir滤波器核
	fir	u0(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(Xin),
		.ast_sink_valid(sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(Yout),
		.ast_sink_ready(ast_sink_ready),
		.ast_source_valid(ast_source_valid),
		.ast_source_error(ast_source_error));
		
endmodule

