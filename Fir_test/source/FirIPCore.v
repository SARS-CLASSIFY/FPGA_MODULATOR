//这是FirIPCore.v文件的程序清单
module FirIPCore (
	reset_n,clk,Xin,
	Yout);
	
	input		reset_n;   //复位信号，低电平有效
	input		clk;       //FPGA系统时钟/数据速率：100MHz
	input	 signed [11:0]	Xin;  //数据输入频率为50MHZ
	output signed [13:0]	Yout; //滤波后的输出数据
	
	wire sink_valid,ast_source_valid,ast_sink_ready;
	wire [1:0] ast_source_error;
	wire [1:0] ast_sink_error;
	assign ast_sink_error=2'd0;
	
	//系统时钟二分频
	
	reg  ast_sink_valid;
	always @(posedge clk or negedge reset_n)
	   if (!reset_n) begin
			ast_sink_valid <= 1'b0;
		end
		else begin
			   ast_sink_valid <= ~ast_sink_valid;
		end
		
	assign  sink_valid = ast_sink_valid;
	
	//实例化fir滤波器核
	firip	u0(		
	
		.clk              (clk),              //                     clk.clk
		.reset_n          (reset_n),          //                     rst.reset_n
		.ast_sink_data    (Xin),    //   avalon_streaming_sink.data
		.ast_sink_valid   (sink_valid),   //                        .valid
		.ast_sink_error   (ast_sink_error),   //                        .error
		.ast_source_data  (Yout),  // avalon_streaming_source.data
		.ast_source_valid (ast_source_valid), //                        .valid
		.ast_source_error (ast_source_error)  //                        .error
		
		);
		
endmodule

