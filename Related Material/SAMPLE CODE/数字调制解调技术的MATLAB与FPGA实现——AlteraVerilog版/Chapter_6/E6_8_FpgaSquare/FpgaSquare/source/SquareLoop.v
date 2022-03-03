//这是SquareLoop.v文件的程序清单
module SquareLoop (
	rst,clk,din,
	carrier,df); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：16MHz
	input	 signed [7:0]	din;     //输入数据：16MHz
	output signed [7:0]	carrier; //同步后的载波输出信号(正交支路)
	output signed [27:0]	df;      //环路滤波器输出数据
	
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [31:0] startf;
	wire signed [9:0] sin,cosine ;
	wire signed [31:0] frequency_df;
	wire signed [27:0] Loopout;
	assign reset_n = !rst;
	assign clken = 1'b1;
	//assign startf=32'd805306368;//3MHz
	assign startf=32'd872415232;//3.25MHz
	
	assign frequency_df={{4{Loopout[27]}},Loopout};//根据NCO核接口，扩展为32位
	
	//实例化NCO核
   //Quartus提供的NCO核输出数据最小位宽为10比特，根据环路设计需求，只取高8比特参与后续运算	
	nco	u0 (
		.phi_inc_i (startf),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.freq_mod_i (frequency_df),
		.fsin_o (sin),
		.fcos_o (cosine),
		.out_valid (out_valid));
	assign carrier = sin[9:2];

   //实例化NCO同相正交支路乘法运算器核	
	wire signed [15:0] oc_out;	
   mult8_8 u1 (
		.dataa (sin[9:2]),
		.datab (cosine[9:2]),
		.result (oc_out));

   //实例化平方运算乘法器核	
	wire signed [15:0] square_out;	
   mult8_8 u2 (
		.dataa (din),
		.datab (din),
		.result (square_out));

   //实例化鉴相器乘法运算器核	
	wire signed [15:0] mult_out;	
   mult8_8 u4 (
		.dataa (oc_out[14:7]),
		.datab (square_out[14:7]),
		.result (mult_out));		
		
		
   //实例化低通滤波器核
	wire signed [27:0] pd;
	wire ast_sink_valid,ast_source_ready;
	wire [1:0] ast_sink_error;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	wire sink_ready,source_valid;
	wire [1:0] source_error;
   locklpf u3(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (mult_out[14:0]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (pd),
		.ast_sink_ready (sink_ready),
		.ast_source_valid (source_valid),
		.ast_source_error (source_error));
		
		
	//实例化环路滤波器模块	
   LoopFilter u6(
	   .rst (rst),
		.clk (clk),
		.pd  (pd),
		.frequency_df(Loopout));
		
	//将环路滤波器数据送至输出端口查看	
	assign df = Loopout;
	
endmodule
