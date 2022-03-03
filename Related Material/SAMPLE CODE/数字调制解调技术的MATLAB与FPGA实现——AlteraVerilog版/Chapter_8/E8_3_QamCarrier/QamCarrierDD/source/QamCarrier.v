//这是QamCarrier.v文件的程序清单
module QamCarrier (
	rst,clk,din,
	di,dq,df); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //时钟信号，数据速率/采样速率/FPGA系统时钟/8 MHz
	input	 signed [7:0]	din;    //输入的16QAM已调数据
	output signed [26:0]	di;     //解调后的基带信号(同相支路)
	output signed [26:0]	dq;     //解调后的基带信号(正交支路)
	output signed [33:0]	df;     //环路滤波器输出数据
	
	//首先对输入数据通过寄存器输入  
	reg signed [7:0] dint;
	always @(posedge clk)
	   dint <= din;
		
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [36:0] carrier;
	wire signed [9:0] sin,cos ;
	wire signed [36:0] frequency_df;
	wire signed [33:0] Loopout;
	assign reset_n = !rst;
	assign clken = 1'b1;
	//assign carrier=37'd34359738368;//2MHz  df=0Hz
	//assign carrier=37'd34368328303;//2.0005MHz  df=500Hz
	assign carrier=37'd34376918237;//2.001MHz   df=1KHz
	assign frequency_df={{3{Loopout[33]}},Loopout};//根据NCO核接口，扩展为30位
	
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
		.datab (dint),
		.result (zi));
		
   //实例化NCO正交支路乘法运算器核	
	wire signed [15:0] zq;	
   mult8_8 u2 (
	   .clock (clk),
		.dataa (cos[9:2]),
		.datab (dint),
		.result (zq));
		

   //实例化鉴相器同相支路低通滤波器核
	wire ast_sink_valid,ast_source_ready;
	wire [1:0] ast_sink_error;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	wire sink_readyi,source_validi;
	wire [1:0] source_errori;
	wire signed [26:0] yi;	
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
	wire signed [26:0] yq;	
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
		
		
	//实例化鉴相器模块
	wire signed [33:0] pd;
	reg bitsync;
	DD u6 (
	   .rst (rst),
		.clk (clk),
		.bitsync (bitsync),
		.yi (yi),
		.yq (yq),
		.pd (pd));
			
	//实例化环路滤波器模块	
   LoopFilter u5(
	   .rst (rst),
		.clk (clk),
		.pd  (pd),
		.frequency_df(Loopout));
		
	//模拟产生位同步模块
	reg [2:0] c;
	always @(posedge clk or posedge rst)
	   if (rst)
		   c <= 3'd0;
		else
		   begin
			   c <= c+ 3'd1;
				if (c==3'd0)
					bitsync <= 1'b1;
				else
				   bitsync <= 1'b0;
			end

   //匹配滤波后的数据为同相、正交基带信号输出
	assign df = Loopout;
	assign di = yi;
	assign dq = yq;
	
endmodule
