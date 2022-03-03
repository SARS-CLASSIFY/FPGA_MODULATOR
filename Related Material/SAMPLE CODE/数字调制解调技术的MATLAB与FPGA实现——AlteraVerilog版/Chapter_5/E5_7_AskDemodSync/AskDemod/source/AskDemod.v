//这是AskDemod.v文件的程序清单
module AskDemod (
	rst,clk,clk32,din,
	dout,gate,dataout,bit_sync);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//数据采样时钟:8MHz
	input		clk32;   			//FPGA系统时钟:32MHz
	input	 signed [7:0]	din;  //基带输入数据
	output signed [13:0]	dout; //ASK解高后输出的基带数据
	output signed [13:0]	gate; //解调基带信号的均值输出
	output dataout;  //判决输出的数据流
	output bit_sync; //位同步信号
	
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
	assign dout = Yout[21:8];
	
	//实例化均值运算模块：Gate
	wire signed [13:0] mean;
   Gate u1 (
		.rst(rst),
		.clk(clk),
		.din(Yout[21:8]),
		.mean(mean));
		
	//对解调后的基信号进行判决输出
	wire demod;
	wire signed [13:0] demoddata;
	assign demoddata = Yout[21:8];
	assign demod = (demoddata>mean)? 1'b1:1'b0;
	
	//实例化位同步模块
	wire sync;
   BitSync u2(
		.rst(rst),
		.clk(clk32),
		.datain(demod),
		.sync(sync));
	
	//在位同步信号的驱动下，输出判决后的基带数据流
	reg data_out;
	always @(posedge sync or posedge rst)
		if (rst)
			data_out <= 1'b0;
		else
		   data_out <= demod;
			
	assign dataout = data_out;
	assign bit_sync =sync;		
	assign gate = mean;
endmodule
