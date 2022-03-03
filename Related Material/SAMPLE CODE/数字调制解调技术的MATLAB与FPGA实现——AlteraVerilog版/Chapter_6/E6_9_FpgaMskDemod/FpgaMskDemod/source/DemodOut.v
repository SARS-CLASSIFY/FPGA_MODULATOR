//这是DemodOut.v文件的程序清单
module DemodOut (
	rst,clk,din,Isync,Qsync,It,Qt,
	bit_sync,dout); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //时钟信号，FPGA系统时钟/输入数据速率/采样速率
	input	   din;   //输入的滤波后的同相、正交两路位定时单载波信号
	input Isync;    //同相位定时脉冲
	input Qsync;    //正交位定时脉冲
	input signed [25:0] It; //输入的滤波后的同相基带波形
	input signed [25:0] Qt;	//输入的滤波后的正交基带波形
	output bit_sync;        //输出的MSK解调后的位定时信号
	output dout   ;        //输出MSK解调后的数据	
	
	
   

	//定义中间信号变量，用于输出判决时刻的I、Q支路数据，用于仿真查看
	reg signed [25:0] IQt;
	//定义中间信号变量，用于存放并/串转换形成的解调数据，对其进行差分解码，
	//即可形成最后的解调数据
	reg di,dq;
	reg sync,douttem;

   //根据位定时脉冲，判决输出I、Q支路基带数据
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				sync <= 1'b0;
				douttem <= 1'b0;
				di <=  1'b0;
				dq <=  1'b0;
				IQt <= 26'd0;
			end
		else
			begin
				if (Isync) begin
					IQt <= It;
					di <= It[25];
					//差分解码输出
					douttem <= di ^ dq;//xor
				   end
				else if (Qsync) begin
					IQt <= Qt;
					dq <= Qt[25];
					//差分解码输出
					douttem <= di ^ dq;//xor
					end
				//输出MSK解调后的位同步脉冲信号
				sync <= Isync | Qsync;//or
			end
			
	assign bit_sync = sync;
   assign dout = douttem;
	
endmodule
