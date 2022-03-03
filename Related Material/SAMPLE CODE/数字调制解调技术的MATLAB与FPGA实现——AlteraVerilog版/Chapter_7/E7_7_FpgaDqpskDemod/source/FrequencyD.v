//这是FrequencyD.v文件的程序清单
module FrequencyD (
	rst,clk,yi,yq,
	FreD);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 signed [27:0]	yi;    //输入同相支路数据
	input	 signed [27:0]	yq;    //输入正交支路数据
	output signed [16:0]	FreD;  //鉴频器输出数据
	
	reg signed [27:0] yit,yqt,di,dq;
	always @(posedge clk or posedge rst)
	   if (rst)
		   begin 
			   yit <= 0;
				yqt <= 0;
				di <= 0;
				dq <= 0;
			end
		else
		   begin 
			   yit <= yi;
				yqt <= yq;
				di <= yi - yit;
				dq <= yq - yqt;
			end
			
	//由于乘法器输入数据位宽为18比特，取微分后的高18位数据进行乘法运算
	wire signed [35:0] mi,mq,fi;
	mult18_18 u0 (
		.clock (clk),
		.dataa (yi[27:10]),
		.datab (dq[27:10]),
		.result (mi));	

	mult18_18 u1 (
		.clock (clk),
		.dataa (yq[27:10]),
		.datab (di[27:10]),
		.result (mq));
   assign fi = mi - mq;
   
	//由于环路滤波器输入数据位宽为17比特，取高17位有效数据输出
   assign FreD = fi[35:19];
	
endmodule
