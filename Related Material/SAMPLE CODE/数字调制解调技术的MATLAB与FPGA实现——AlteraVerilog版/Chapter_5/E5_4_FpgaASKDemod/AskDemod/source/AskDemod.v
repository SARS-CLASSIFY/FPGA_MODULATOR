//这是AskDemod.v文件的程序清单
module AskDemod (
	rst,clk,din,
	dout);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//FPGA系统时钟:8MHz
	input	 signed [7:0]	din;  //基带输入数据
	output signed [13:0]	dout; //ASK输出数据
	
	//对输入的ASK调制数据进行整流处理
	reg signed [7:0] abs_din;
	always @(posedge clk or posedge rst)
		if (rst)
			abs_din <= 8'd0;
		else
			if (din[7])
				abs_din <= -din;
			else
			   abs_din <= din;
	
	//实例化lpf滤波器核
	wire ast_sink_valid,ast_source_ready,ast_source_valid,ast_sink_ready,reset_n;
	wire [1:0] ast_source_error;
	wire [1:0] ast_sink_error;
	wire signed [21:0]  Yout;
	assign ast_source_ready=1'b1;
	assign ast_sink_valid=1'b1;
	assign ast_sink_error=2'd0;
	assign reset_n = !rst;
	lpf	u0(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(abs_din),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(Yout),
		.ast_sink_ready(ast_sink_ready),
		.ast_source_valid(ast_source_valid),
		.ast_source_error(ast_source_error));
		
	//根据滤波器系数，可知滤波后输出数据最大位宽为输入数据位宽+14位，因此，最高数据位为
	//Yout(21)Yout(21 downto 8)做为输出数据。
	assign dout = Yout[21:8];
	
endmodule
