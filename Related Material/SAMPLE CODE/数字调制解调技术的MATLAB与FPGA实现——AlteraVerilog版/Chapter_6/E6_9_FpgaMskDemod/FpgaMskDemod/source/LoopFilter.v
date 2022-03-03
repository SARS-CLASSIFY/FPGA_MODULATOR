//这是LoopFilter.v文件的程序清单
module LoopFilter (
	rst,clk,pd,
	frequency_df); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：32MHz
	input	 signed [27:0]	pd;            //输入数据：32MHz
	output signed [27:0]	frequency_df;  //环路滤波器输出数据
	
	
   reg [2:0] count;
	reg signed [27:0] sum,loopout;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				count <=0;
				sum <= 0;
				loopout <= 0;
			end
		else
			begin
				//频率字更新周期为8个CLK周期
				count <= count + 1;
			   //环路滤波器中的累加器寄存器
				if (count==3'd1)
				   //c2=2^(-8)
			      sum<=sum+{{8{pd[27]}},pd[27:8]};
 			   if (count==3'd2)
				   //c1=2^(-3)
				   loopout<=sum+{{3{pd[27]}},pd[27:3]};
			  end
			  
     assign frequency_df = loopout;

endmodule
