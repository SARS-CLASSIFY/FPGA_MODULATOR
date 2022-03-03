//这是MskDemod.v文件的程序清单
module MskDemod (
	rst,clk,din,
	dout,bit_sync); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：16MHz
	input	 signed [7:0]	din; //输入数据：16MHz
	output  dout;             //解调判决输出的数据流
	output  bit_sync;         //位同步信号
	
	//首先用clk信号对输入数据进行边沿触发输入
	reg signed [7:0] datain;
	always @(posedge clk)
		datain <= din;
	
   //实例化平方运算乘法器核	
	wire signed [15:0] square_out;	
   mult8_8 u1 (
	   .clock  (clk),
		.dataa (datain),
		.datab (datain),
		.result (square_out));

	//实例化是下边频支路平方环模块	
	wire signed [7:0] oc_L;	
	wire signed [27:0] df_L;
	wire signed [31:0] startf_L;
	assign startf_L=32'd738197504;//2.75MHz
   SquareLoop u2 (
	   .rst  (rst),
		.clk (clk),
		.din (square_out[14:7]),
		.startf (startf_L),
		.carrier (oc_L),
		.df (df_L));		
		
	//实例化是上边频支路平方环模块	
	wire signed [7:0] oc_H;	
	wire signed [27:0] df_H;
	wire signed [31:0] startf_H;
	assign startf_H=32'd872415232;//3.25MHz
   SquareLoop u3 (
	   .rst  (rst),
		.clk (clk),
		.din (square_out[14:7]),
		.startf (startf_H),
		.carrier (oc_H),
		.df (df_H));	
		
	//获取同相、正交两支路的相干载波
   //为提高运算速度，将输入数据及进入解调乘法器的相干载波增加一级触发器
	reg signed [8:0] carrier_I,carrier_Q;
	reg signed [7:0] din_R;
	always @(posedge clk or posedge rst)
	   if (rst)
		   begin
			   din_R <= 8'd0;
				carrier_I <= 9'd0;
				carrier_Q <= 9'd0;
			end
		else
			begin
				din_R <= datain;
				carrier_I <= {oc_H[7],oc_H}+{oc_L[7],oc_L};
				carrier_Q <= {oc_H[7],oc_H}-{oc_L[7],oc_L};
			end
		
	//相干解调
	wire signed [15:0] mult_I,mult_Q;	
   mult8_8 u4 (
	   .clock  (clk),
		.dataa (din_R),
		.datab (carrier_I[8:1]),
		.result (mult_I));	

   mult8_8 u5 (
	   .clock  (clk),
		.dataa (din_R),
		.datab (carrier_Q[8:1]),
		.result (mult_Q));	
	
	//滤波输出同相、正交两路基带波形
   //同相支路滤波
	wire signed [25:0] It;
	wire reset_n,ast_sink_valid,ast_source_ready;
	wire [1:0] ast_sink_error;
	assign reset_n = !rst;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	wire sink_readyi,source_validi;
	wire [1:0] source_errori;
   msklpf u6(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (mult_I[14:0]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (It),
		.ast_sink_ready (sink_readyi),
		.ast_source_valid (source_validi),
		.ast_source_error (source_errori));
		
   //正交支路滤波
	wire signed [25:0] Qt;
	wire sink_readyq,source_validq;
	wire [1:0] source_errorq;
   msklpf u7(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (mult_Q[14:0]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (Qt),
		.ast_sink_ready (sink_readyq),
		.ast_source_valid (source_validq),
		.ast_source_error (source_errorq));		
		
	//获取同相、正交两支路的位定时脉冲信号
	//同相正交支路载波相乘
	wire signed [15:0] bit_sync_mult;
   mult8_8 u8 (
	   .clock  (clk),
		.dataa (oc_L),
		.datab (oc_H),
		.result (bit_sync_mult));
		
   //滤波输出定时单载波信号
	wire signed [25:0] bit_sync_lpf;
	wire sink_readys,source_valids;
	wire [1:0] source_errors;
   msklpf u9(
		.clk (clk),
		.reset_n (reset_n),
		//由于oc_L/oc_H可能同时出现“10000000”，因此取乘法结果的高14位
		.ast_sink_data (bit_sync_mult[15:1]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (bit_sync_lpf),
		.ast_sink_ready (sink_readys),
		.ast_source_valid (source_valids),
		.ast_source_error (source_errors));
		
	//实例化位同步信号脉冲成型模块	
	wire Isync,Qsync;
   Shape u10 (
	   .rst (rst),
		.clk (clk),
		.din (bit_sync_lpf[25]),
		.Isync (Isync),
		.Qsync (Qsync));
	
	//并/串转换，差分解码，定时判决输出最终MSK解调数据
	DemodOut u11 (
	   .rst (rst),
		.clk (clk),
		.Isync (Isync),
		.Qsync (Qsync),
		.It (It),
		.Qt (Qt),
		.bit_sync (bit_sync),
		.dout (dout));
	
endmodule
