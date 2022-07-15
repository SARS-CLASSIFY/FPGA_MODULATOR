//这是FskMod.v文件的程序清单
module FskMod (
	rst,clk,din,
	dout);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//数据采样时钟:1MHz
	input	   din;              //调制原始数据，Rb=100Hz
	//输出的CPFSK信号：fc=6 MHz，h=3.5，f1=4.25 MHz，f2=7.75 MHz
	output signed [9:0]	dout; 



	
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [24:0] carrier;
	wire signed [24:0] frequency_df;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=25'd25166;//750hz
	
	//实例化NCO核
	fskmode	u0 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.freq_mod_i (frequency_df),
		.fsin_o (dout),
		.out_valid (out_valid));

	//Rb=1MHz，h=3.5，df1=-1.75MHz df2=1.75MHz
	//根据输入数据的高电低平，设置不同的频率偏移量
	assign frequency_df = (din)?25'd8388:-25'd8388;

		
endmodule
