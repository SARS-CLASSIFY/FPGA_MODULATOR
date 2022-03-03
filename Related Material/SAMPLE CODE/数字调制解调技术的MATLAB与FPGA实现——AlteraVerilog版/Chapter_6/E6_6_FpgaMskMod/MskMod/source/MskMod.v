//这是MskMod.v文件的程序清单
module MskMod (
	rst,clk,din,
	it,qt);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//数据采样时钟:32MHz
	input	   din;              //调制原始数据，Rb=1 MHz
	//输出的CPFSK信号：fc=6 MHz，h=0.5，f1=5.75 MHz，f2=6.25 MHz
	output signed [14:0]	it; 
	output signed [14:0]	qt; 
   
	wire cod;
	//实例化NCO核
	Code	u1 (
		.rst (rst),
		.clk (clk),
		.din (din),
		.dout (cod));

	//实例化频率调制模块核
	FskMod	u2 (
		.rst (rst),
		.clk (clk),
		.din (cod),
		.it (it),
		.qt (qt));

		
endmodule
