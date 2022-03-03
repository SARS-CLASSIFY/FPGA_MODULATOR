//这是DsssDemod.v文件的程序清单
module DsssDemod (
	rst,clk,din,
	locked,bit_sync,dout); 
	
	input		rst;           //复位信号，高电平有效
	input		clk;           //FPGA系统时钟：49.6MHz
	input signed [7:0] din; //DSSS中频输入数据
	output locked;          //伪码锁定指示信号，高电平锁定
	output bit_sync;        //位同步信号
	output dout;            //解调后的数据输出
	
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [30:0] carrier;
	wire signed [9:0] sin,cos ;
	wire signed [30:0] frequency_df;
	wire signed [22:0] Loopout;
	assign reset_n = !rst;
	assign clken = 1'b1;
	//assign carrier=31'd346368330;//8MHz
	//assign carrier=31'd346584811;//8.0005MHz 
	assign carrier=31'd346411626;//8.001MHz 
	
	assign frequency_df={{8{Loopout[22]}},Loopout};//根据NCO核接口，扩展为31位
	
	//实例化NCO核
   //Quartus提供的NCO核输出数据最小位宽为10比特，根据环路设计需求，只取高8比特参与后续运算	
	nco	u0 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.freq_mod_i (frequency_df),
		.fsin_o (sin),
		.fcos_o (cos),
		.out_valid (out_valid));
	
   //实例化NCO同相支路乘法运算器核
	wire signed [15:0] zi;	
   mult8_8 u1 (
	   .clock (clk),
		.dataa (sin[9:2]),
		.datab (din),
		.result (zi));
		
   //实例化NCO正交支路乘法运算器核	
	wire signed [15:0] zq;	
   mult8_8 u2 (
	   .clock (clk),
		.dataa (cos[9:2]),
		.datab (din),
		.result (zq));
		

   //实例化鉴相器同相支路低通滤波器核
	wire ast_sink_valid,ast_source_ready;
	wire [1:0] ast_sink_error;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	wire sink_readyi,source_validi;
	wire [1:0] source_errori;
	wire signed [25:0] yi;	
   fir_lpf u3(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (zi[14:0]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (yi),
		.ast_sink_ready (sink_readyi),
		.ast_source_valid (source_validi),
		.ast_source_error (source_errori));


   //实例化鉴相器正交支路低通滤波器核
	wire sink_readyq,source_validq;
	wire [1:0] source_errorq;
	wire signed [25:0] yq;	
   fir_lpf u4(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (zq[14:0]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (yq),
		.ast_sink_ready (sink_readyq),
		.ast_source_valid (source_validq),
		.ast_source_error (source_errorq));
		
	
   wire signed [22:0] pd;
   wire load;	
   //实例化环路滤波器模块	
   LoopFilter u5(
	   .rst (rst),
		.clk (clk),
		.load (load),
		.pd  (pd),
		.frequency_df(Loopout));
		
	//实例化鉴相器模块
   wire signed [22:0] douti,doutq;		
   PhaseDetect u6(
	   .rst (rst),
		.clk (clk),
		.yi  (douti),
		.yq  (doutq),
		.pd  (pd));	
		
	//实例化伪码捕获模块
   wire pn;	
   PnSync u7(
	   .rst (rst),
		.clk (clk),
		.di  (yi[25:11]),
		.dq  (yq[25:11]),
		.pn  (pn),
		.bit_sync (load),
		.locked   (locked),
		.douti (douti),
		.doutq (doutq));
		
	assign bit_sync = load;
	assign dout = douti[22];
		
	
endmodule
