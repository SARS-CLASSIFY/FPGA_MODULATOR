//这是DifBitSnc.v文件的程序清单
module DifBitSync (
	rst,clk,
	dataout,Bit_Sync);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟:32MHz
	output  [5:0]	dataout;   //延时处理后的输出数据
	output Bit_Sync;          //位同步脉冲输出

	
	//实例化输入数据产生模块
	wire [5:0] datain;
	DinProduce u1 (
	   .rst   (rst),
		.clk32 (clk),
		.cosine (datain));
		
	//实例化位同步模块
   BitSync u2(
		.Bit_Sync(Bit_Sync),
		.clk(clk),
		.datain(datain),
		.dataout(dataout),
		.rst(rst));
		
endmodule
