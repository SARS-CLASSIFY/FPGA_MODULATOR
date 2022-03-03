//这是LoopFilter.v文件的程序清单
module LoopFilter (
	rst,clk,pd,
	frequency_df); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：8MHz
	input	 signed [25:0]	pd;            //输入数据：8MHz
	output signed [25:0]	frequency_df;  //环路滤波器输出数据
	
	
   reg [2:0] count;
	reg signed [25:0] sum,loopout;
	//*
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				count <= 3'd0;
				sum <= 26'd0;
				loopout <= 26'd0;
			end
		else
			begin
				//频率字更新周期为8个CLK周期
				count <= count + 3'd1;
			   //环路滤波器中的累加器寄存器
				if (count==3'd0)
				   //c2=2^(-13)
			      sum<=sum+{{13{pd[25]}},pd[25:13]};
 			   if (count==3'd1)
				   //c1=2^(-6)
				   loopout<=sum+{{6{pd[25]}},pd[25:6]};
			  end
    //*/
	 
    /*仿真调整C1/C2系数对环路跟踪性能的影响
	integer t;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				count <= 3'd0;
				sum <= 26'd0;
				loopout <= 26'd0;
				t <= 0;
			end
		else
			begin
			   t <= t+1;
			   if (t<30000)
				   begin
						//频率字更新周期为8个CLK周期
						count <= count + 3'd1;
						//环路滤波器中的累加器寄存器
						if (count==3'd0)
							//c2=2^(-12)
							sum<=sum+{{12{pd[25]}},pd[25:12]};
						if (count==3'd1)
							//c1=2^(-5)
							loopout<=sum+{{5{pd[25]}},pd[25:5]};
				   end
			   else
				   begin
						//频率字更新周期为8个CLK周期
						count <= count + 3'd1;
						//环路滤波器中的累加器寄存器
						if (count==3'd0)
							//c2=2^(-17)
							sum<=sum+{{17{pd[25]}},pd[25:17]};
						if (count==3'd1)
							//c1=2^(-10)
							loopout<=sum+{{10{pd[25]}},pd[25:10]};
				  end
			  end 
		 */

			  
     assign frequency_df = loopout;

endmodule
