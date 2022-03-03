//这是FskMod.v文件的程序清单
module FskMod (
	rst,clk,din,
	it,qt);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//数据采样时钟:32MHz
	input	   din;              //调制原始数据，Rb=1 MHz
	//输出的CPFSK信号：fc=6 MHz，h=0.5，f1=5.75 MHz，f2=6.25 MHz
	output signed [14:0]	it; 
	output signed [14:0]	qt; 


	
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [24:0] carrier;
	wire signed [24:0] frequency_df;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=25'd6291456;//6MHz
	
	//实例化NCO核
	dds	u0 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.freq_mod_i (frequency_df),
		.fsin_o (it),
		.fcos_o (qt),
		.out_valid (out_valid));

	//Rb=1MHz，h=0.5，df1=-0.25MHz df2=0.25MHz
	//根据输入数据的高电低平，设置不同的频率偏移量
	assign frequency_df = (din)?25'd262144:-25'd262144;

		
endmodule
