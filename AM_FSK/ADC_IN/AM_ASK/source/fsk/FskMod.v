//这是FskMod.v文件的程序清单
module FskMod (
	rst,clk,din,
	dout,dac_clk);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//数据采样时钟:50M-pll200MHz
	input	   din;              //调制原始数据，Rb=500 Hz
	//输出的CPFSK信号：fc=25 MHz，h=2，f1=25M-500 Hz，f2=25M+500 MHz
	output signed [13:0]	dout; 
	output dac_clk;

	wire clk_200M;
	
	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [31:0] carrier;
	wire signed [24:0] frequency_df;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=32'd536870912;//25MHz
	
	
	assign dac_clk=clk_200M;
	//实例化NCO核
	fsk	u0 (
		.phi_inc_i (carrier),
		.clk (clk_200M),
		.reset_n (reset_n),
		.clken (clken),
		.freq_mod_i (frequency_df),
		.fsin_o (dout),
		.out_valid (out_valid));
		
	
	pll200 pll200_inst(
		.inclk0(clk),
		.c0(clk_200M)
	);	
		
		
	//Rb=1MHz，h=3.5，df1=-1.75MHz df2=1.75MHz
	//根据输入数据的高电低平，设置不同的频率偏移量
	assign frequency_df = (din)?25'd5368:-25'd5368;

		
endmodule
