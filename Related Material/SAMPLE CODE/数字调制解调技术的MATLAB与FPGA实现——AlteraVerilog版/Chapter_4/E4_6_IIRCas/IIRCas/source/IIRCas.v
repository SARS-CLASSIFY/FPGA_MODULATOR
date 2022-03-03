//这是IIRCas.v文件的程序清单
module IIRCas (
	rst,clk,Xin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为8MHz
	input	 signed [11:0]	Xin;  //数据输入频率为8MHZ
	output signed [11:0]	Yout; //滤波后的输出数据
	
	//实例化第一级滤波器运算模块
	wire signed [11:0] Y1;
	FirstTap U1 (
		.rst (rst),
		.clk (clk),
		.Xin (Xin),
		.Yout (Y1));

	//实例化第二级滤波器运算模块
	SecondTap U2 (
		.rst (rst),
		.clk (clk),
		.Xin (Y1),
		.Yout (Yout));

		
endmodule
	