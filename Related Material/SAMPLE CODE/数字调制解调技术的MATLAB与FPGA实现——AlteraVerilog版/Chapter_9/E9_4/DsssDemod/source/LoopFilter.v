//这是LoopFilter.v文件的程序清单
module LoopFilter (
	rst,clk,load,pd,
	frequency_df); 
	
	input	rst;    //复位信号，高电平有效
	input	clk;    //FPGA系统时钟：49.6MHz
	input load;   //伪码同步模块送来的序列位置置位信号
	input	 signed [22:0]	pd;            //输入数据
	output signed [22:0]	frequency_df;  //环路滤波器输出数据
	
	
	reg signed [22:0] sum_z1;
   wire signed [22:0] sum;
	always @(posedge clk or posedge rst)
		if (rst)
			sum_z1 <=23'd0;
		else
			if (load)
				sum_z1 <= sum;

	assign sum = sum_z1 + {{11{pd[22]}},pd[22:11]};        //c2;
   assign frequency_df = sum_z1 + {{5{pd[22]}},pd[22:5]}; //c1	


endmodule
