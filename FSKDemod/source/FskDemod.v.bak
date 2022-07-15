//这是FskDemod.v文件的程序清单
module FskDemod (
	rst,clk,
	dout);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//数据采样时钟:32MHz
	output signed [14:0]	dout; //解调后的基带波形数据

	///////////////////////////////////////////
	//FSK调制数据产生模块,利用FskMod产生FSK调制数据
	//////////////////////////////////////////
	
	//生成码速率为1MHz的原始bit数据流source
	//速率为 1MHz的方波信号，相当于频率为0.5MHz的时钟信号
	reg [5:0] count;
	always @(posedge clk or posedge rst)
		if (rst)
		   count <= 6'd0;
		else
		   count <= count + 6'd1;
			
	//取count[5]作为原始数据流
	wire source;
	assign source = count[5];
	
	//实例化FskMod模块
	wire signed[14:0] FskData;
   FskMod u0(
		.rst(rst),
		.clk(clk),
		.din(source),
		.dout(FskData));
	
	
	///////////////////////////////////////////
	//FskDemod模块,输入数据接口信号为FskData
	//////////////////////////////////////////
	
	//声明滤波器输入接口信号
	wire ast_sink_valid,ast_source_ready,reset_n;
	wire [1:0] ast_sink_error;

	//设置滤波器输入接口信号的值
	assign ast_source_ready=1'b1;
	assign ast_sink_valid=1'b1;
	assign ast_sink_error=2'd0;
	assign reset_n = !rst;
	
	//声明bpf1滤波器输出接口信号
	wire sink_ready_bpf1,source_valid_bpf1;
	wire [1:0] source_error_bpf1;
	wire signed [28:0]  data_bpf1;
	//实例化bpf1滤波器核
	bpf1	u1(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(FskData),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(data_bpf1),
		.ast_sink_ready(sink_ready_bpf1),
		.ast_source_valid(source_valid_bpf1),
		.ast_source_error(source_error_bpf1));


	//声明bpf2滤波器输出接口信号
	wire sink_ready_bpf2,source_valid_bpf2;
	wire [1:0] source_error_bpf2;
	wire signed [28:0]  data_bpf2;
	//实例化bpf1滤波器核
	bpf2	u2(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(FskData),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(data_bpf2),
		.ast_sink_ready(sink_ready_bpf2),
		.ast_source_valid(source_valid_bpf2),
		.ast_source_error(source_error_bpf2));		
		
	//对带通滤波后的数据求绝对值（全波整流）
	reg signed [14:0] abs_bpf1,abs_bpf2;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   abs_bpf1 <= 15'd0;
			   abs_bpf2 <= 15'd0;
		   end
		else
		   begin
				if (data_bpf1[28])
					abs_bpf1 <= -data_bpf1[28:14];
				else
					abs_bpf1 <= data_bpf1[28:14];
				if (data_bpf2[28])
					abs_bpf2 <= -data_bpf2[28:14];
				else
					abs_bpf2 <= data_bpf2[28:14];	
			end
			
		
	//对整流后的数据低通滤波
	
	//声明lpf1滤波器输出接口信号
	wire sink_ready_lpf1,source_valid_lpf1;
	wire [1:0] source_error_lpf1;
	wire signed [29:0]  data_lpf1;
	//实例化lpf1滤波器核
	lpf	u3(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(abs_bpf1),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(data_lpf1),
		.ast_sink_ready(sink_ready_lpf1),
		.ast_source_valid(source_valid_lpf1),
		.ast_source_error(source_error_lpf1));		

	//声明lpf2滤波器输出接口信号
	wire sink_ready_lpf2,source_valid_lpf2;
	wire [1:0] source_error_lpf2;
	wire signed [29:0]  data_lpf2;
	//实例化lpf2滤波器核
	lpf	u4(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(abs_bpf2),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(data_lpf2),
		.ast_sink_ready(sink_ready_lpf2),
		.ast_source_valid(source_valid_lpf2),
		.ast_source_error(source_error_lpf2));				
		
	//两路低通滤波后的数据相减，完FSK信号解调
	reg signed [29:0] sub;
   always @(posedge clk)
		sub <= data_lpf1 - data_lpf2;
		
	assign dout = sub[29:15];


		
endmodule
