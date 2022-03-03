//这是bandpass.v文件的程序清单
module bandpass (
	rst,clk,din,
	dout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 signed [14:0]	din;  //数据输入
	output signed [14:0]	dout; //滤波后的输出数据
	
	//实例化零点滤波系数及极点系数运算模块
	wire signed [21:0] Xout;
	ZeroParallel u7 (
		.rst (rst),
		.clk (clk),
		.Xin (din),
		.Xout (Xout));
		
	wire signed [14:0] Yin;
	wire signed [28:0] Yout;
	PoleParallel u8 (
		.rst (rst),
		.clk (clk),
		.Yin (Yin),
		.Yout (Yout));
		
   wire signed [28:0] Ysum;
   assign Ysum = {{7{Xout[21]}},Xout} - Yout;	
	
	//因为滤波器系数中a(0)=512,需将加法结果除以512，采用右移9位的方法实现除法运算
	wire signed [28:0] Ydiv;
	assign Ydiv = {{9{Ysum[28]}},Ysum[25:9]};
	
	//根据仿真结果可知，滤波器的输出范围与输入数据范围相同，因此可直接进行截尾输出
	assign Yin = (rst ? 15'd0 : Ydiv[14:0]);
	
	//增加一级寄存器输出，提高系统运行速度
	reg signed [14:0] dout_tem;
	always @(posedge clk)
	   dout_tem <= Yin;
	assign dout = dout_tem;

endmodule
	