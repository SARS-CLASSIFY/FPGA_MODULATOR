//这是CodeModem.v文件的程序清单
module CodeModem (
	rst,clk,ab_in,
	cd,ab_out); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 [1:0]	ab_in;     //输入的绝对码数据
	output [1:0]	cd;        //转换后的相对码数据
	output [1:0]	ab_out;    //反转换后的绝对码数据
	
	//实例化绝对码转相对码模块ab2cd
	wire  [1:0] c_d;	
   ab2cd u1 (
	   .rst (rst),
		.clk (clk),
		.ab (ab_in),
		.cd (c_d));
		
	//实例化相对码转绝对码模块cd2ab
   cd2ab u2 (
	   .rst (rst),
		.clk (clk),
		.cd (c_d),
		.ab (ab_out));	
		
	assign cd = c_d;
	
endmodule
	