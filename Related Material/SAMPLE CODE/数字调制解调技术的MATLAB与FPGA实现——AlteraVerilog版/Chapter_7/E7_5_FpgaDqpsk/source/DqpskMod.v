//这是DqpskMod.v文件的程序清单
module DqpskMod (
	rst,clk,din,
	dout); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：8MHz
	input    din;   //输入数据：2MHz
	output signed [15:0]	dout;  
   
	//首先对输入数据进入寄存器输入
	reg dint;
	always @(posedge clk)
	   dint <= din;
	
   //实例化码形变换模块	
	wire [1:0] di,dq;
	CodeTrans u1 (
	   .rst (rst),
		.clk (clk),
		.din (dint),
		.di (di),
		.dq (dq));
		
	//实例化成形滤波器模块
	wire ast_sink_valid,ast_source_ready;
	wire [1:0] ast_source_error;
	wire [1:0] ast_sink_error;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	//实例化同相支路低通滤波器核
	wire sink_readyi,source_validi;
	wire [1:0] source_errori;
	wire signed [14:0] di_lpf;	
   fir_lpf u2(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (di),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (di_lpf),
		.ast_sink_ready (sink_readyi),
		.ast_source_valid (source_validi),
		.ast_source_error (source_errori));

   //实例化正交支路低通滤波器核
	wire sink_readyq,source_validq;
	wire [1:0] source_errorq;
	wire signed [14:0] dq_lpf;	
   fir_lpf u3(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (dq),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (dq_lpf),
		.ast_sink_ready (sink_readyq),
		.ast_source_valid (source_validq),
		.ast_source_error (source_erroriq));
	
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [29:0] carrier;
	wire signed [14:0] sin,cos ;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=30'd268435456;//2MHz
	
	//实例化NCO核
	nco	u4 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.fsin_o (sin),
		.fcos_o (cos),
		.out_valid (out_valid));
	
   //实例化同相支路乘法运算器核
	wire signed [29:0] mult_i;	
   mult15_15 u5 (
	   .clock (clk),
		.dataa (sin),
		.datab (di_lpf),
		.result (mult_i));
		
   //实例化正交支路乘法运算器核	
	wire signed [29:0] mult_q;	
   mult15_15 u6 (
	   .clock (clk),
		.dataa (cos),
		.datab (dq_lpf),
		.result (mult_q));
		

   //同相正交支路合成，输出DQPSK信号
   reg signed [29:0] douttem;
	always @(posedge clk or posedge rst)
	   if (rst)
		   douttem <= 30'd0;
		else
		   douttem <= mult_i + mult_q;
			
	assign dout = douttem[29:14];
		
endmodule
