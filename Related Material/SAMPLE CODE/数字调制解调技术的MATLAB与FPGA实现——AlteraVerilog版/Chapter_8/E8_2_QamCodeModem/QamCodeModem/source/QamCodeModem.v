//这是QamCodeModem.v文件的程序清单
module QamCodeModem (
	rst,clk,din,
	dout,i,q); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 [3:0]	din;     //输入的原始数据
	output [3:0]	dout;    //解调后的原始数据
	output [2:0]   i;       //星座映射的I支路数据
	output [2:0]   q;       //星座映射的Q支路数据	

	
	//实例化16QAM编码模块
	wire  [2:0] it,qt;	
   CodeMap u1 (
	   .rst (rst),
		.clk (clk),
		.din (din),
		.I (it),
		.Q (qt));
		
	//实例化16QAM解码模块
   DeCodeMap u2 (
	   .rst (rst),
		.clk (clk),
		.dout (dout),
		.I (it),
		.Q (qt));
		
	assign i = it;
	assign q = qt;	
	
endmodule
	