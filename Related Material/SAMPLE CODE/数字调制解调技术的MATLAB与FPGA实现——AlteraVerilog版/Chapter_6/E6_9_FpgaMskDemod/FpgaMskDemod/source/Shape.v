//这是Shape.v文件的程序清单
module Shape (
	rst,clk,din,
	Isync,Qsync); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //时钟信号，FPGA系统时钟/输入数据速率/采样速率
	input	   din;   //输入的滤波后的同相、正交两路位定时单载波信号
	output Isync;   //成形后输出的同相位定时脉冲
	output Qsync;   //成形后输出的正交位定时脉冲
	
	reg [5:0] count;
	reg din_d;
	reg sync_i,sync_q;
	always @(posedge clk or posedge rst)
		if (rst)
			begin
				count <= 6'd0;
				din_d <= 1'b0;
				sync_i <= 1'b0;
				sync_q <= 1'b0;
			end
		else
		   begin
				din_d <= din;
				//检测到下降沿计数清零
				if ((!din) && din_d)
				   count <= 6'd0;
				else
					count <= count + 6'd1;
				//根据计数器的值，输出正交支路位定时脉冲
            //一个正交支路位定时信号周期为32个时钟周期。波峰处离上升沿为8个时钟周期，
            //波谷处离上升沿为24个时钟周期，考虑计时延时，分别在count＝6、22时做判决输出
            if (count==6'd6) 
					begin
						sync_i <= 1'b1;
						sync_q <= 1'b0;
					end
            else if (count==6'd22)
					begin
						sync_i <= 1'b0;
						sync_q <= 1'b1;
					end
            else
					begin
						sync_i <= 1'b0;
						sync_q <= 1'b0;
					end
			end

	assign Isync = sync_i;
	assign Qsync = sync_q;
	
endmodule
