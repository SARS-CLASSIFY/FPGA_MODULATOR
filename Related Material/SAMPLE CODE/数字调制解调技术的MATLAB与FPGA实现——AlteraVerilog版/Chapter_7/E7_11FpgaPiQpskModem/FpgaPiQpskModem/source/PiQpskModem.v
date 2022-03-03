//这是PiQpskModem.v文件的程序清单
module PiQpskModem (
	rst,clk,clk4,din,
	dout,bitsync); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：8MHz
	input		clk4;  //FPGA系统时钟：32MHz
	input	 signed [7:0]	din;    //输入数据：8MHz
	output [1:0]	     dout;    //解调后的数据
	output bitsync;

	
	//首先对输入信号进行寄存器处理
	reg signed [7:0] dint;
	always @(posedge clk)
	   dint <= din;
	
   //输入信号分别经阶数相同的普通滤波器及Hilbert滤波器处理
	//普通滤波器处理
	wire ast_sink_valid,ast_source_ready,reset_n;
	wire [1:0] ast_sink_error;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign reset_n=!rst;
	assign ast_sink_error=2'd0;
	
	wire sink_ready1,source_valid1;
	wire [1:0] source_error1;
	wire signed [17:0] bpf_out;	
   bpf u1(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (dint),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (bpf_out),
		.ast_sink_ready (sink_ready1),
		.ast_source_valid (source_valid1),
		.ast_source_error (source_error1));


   //Hilbert滤波器处理
	wire sink_ready2,source_valid2;
	wire [1:0] source_error2;
	wire signed [17:0] hbpf_out;	
   h_bpf u2(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (dint),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (hbpf_out),
		.ast_sink_ready (sink_ready2),
		.ast_source_valid (source_valid2),
		.ast_source_error (source_error2));

	//对普通滤波器的输出信号延时8个采样点，相当于一个符号周期
   wire signed [15:0] delay_out,taps;	
	Delay8 u3 (
		.clock (clk),
		.shiftin (bpf_out[17:2]),
		.shiftout (delay_out),
		.taps (taps));//没有使用该信号接口


    //2路滤波后的信号分别与延时的信号相乘，实现差分解调
	wire signed [33:0] mult_out;	
   mult16_18 u4 (
	   .clock (clk),
		.dataa (delay_out),
		.datab (bpf_out),
		.result (mult_out));
		
	wire signed [33:0] hmult_out;	
   mult16_18 u5 (
	   .clock (clk),
		.dataa (delay_out),
		.datab (hbpf_out),
		.result (hmult_out));		
		
   //对乘法运算后的信号进行匹配滤波，完成基带解调
	wire sink_ready6,source_valid6;
	wire [1:0] source_error6;
	wire signed [27:0] lpf_out;	
   lpf u6(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (mult_out[32:17]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (lpf_out),
		.ast_sink_ready (sink_ready6),
		.ast_source_valid (source_valid6),
		.ast_source_error (source_error6));

	wire sink_ready7,source_valid7;
	wire [1:0] source_error7;
	wire signed [27:0] hlpf_out;	
   lpf u7(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (hmult_out[32:17]),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (hlpf_out),
		.ast_sink_ready (sink_ready7),
		.ast_source_valid (source_valid7),
		.ast_source_error (source_error7));
		

   //提取位定时信号
   //实例化位同步模块BitSync
	wire sync_i;
	BitSync	u8 (
		.rst (rst),
		.clk (clk4),
		.datain (lpf_out[27]),
		.sync (sync_i));
   
	//在位同步信号sync_i的驱动下，输出解调后的数据douttem
	reg sync_id,bit_sync;
	reg [1:0] douttem;
	always @(posedge clk4 or posedge rst)
	   if (rst)
		   begin
			   sync_id <= 1'b0;
				douttem <= 2'd0;
				bit_sync <= 1'b0;
			end
		else
		   begin
				sync_id <= sync_i;
				if ((sync_id) &&(!sync_i))
					begin
						douttem <= {lpf_out[27],hlpf_out[27]};
						bit_sync <= 1'b1;
					end
				else
					bit_sync <= 1'b0;
			end
	assign dout = douttem;		
	assign bitsync = bit_sync;	
	
endmodule
