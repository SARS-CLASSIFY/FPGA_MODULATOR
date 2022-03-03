//这是PhaseDetect.v文件的程序清单
module PhaseDetect (
	rst,clk,yi,yq,
	pd); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：8MHz
	input	 signed [22:0]	yi;  //输入同相支路数据：8MHz
	input	 signed [22:0]	yq;  //输入正交支路数据：8MHz
	output signed [22:0]	pd;  //鉴相器输出数据
	
	reg signed [22:0] pdt;
   always @(posedge clk or posedge rst)
	   if (rst)
		   pdt <= 23'd0;
		else
		   if (yi[22])
			   pdt <= -yq;
			else
			   pdt <= yq;
				
	assign pd = pdt;
			
	
endmodule

