//这是PoleParallel.v文件的程序清单
module PoleParallel (
	rst,clk,Yin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 signed [14:0]	Yin;  //数据//11
	output signed [28:0]	Yout; //滤波后的输出数据//25


	//将数据存入移位寄存器Yin_Reg中
	reg signed[14:0] Yin_Reg[5:0];
	reg [3:0] i,j; 
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin 
				for (i=0; i<6; i=i+1)
					Yin_Reg[i]=14'd0;
			end
		else
			begin
			   //与串行结构不同，此处不需要判断计数器状态
				for (j=0; j<5; j=j+1)
					Yin_Reg[j+1] <= Yin_Reg[j];
				Yin_Reg[0] <= Yin;
			end

	//实例化有符号数乘法器IP核mult
	wire signed[28:0] Mult_Reg[5:0];
	mult1948	u9 (
		.dataa (Yin_Reg[0]),
		.result (Mult_Reg[0]));	
	mult3660	u10 (
		.dataa (Yin_Reg[1]),
		.result (Mult_Reg[1]));	
	mult4085	u11 (
		.dataa (Yin_Reg[2]),
		.result (Mult_Reg[2]));	
	mult2881	u12 (
		.dataa (Yin_Reg[3]),
		.result (Mult_Reg[3]));	
	mult1206	u13 (
		.dataa (Yin_Reg[4]),
		.result (Mult_Reg[4]));	
	mult250	u14 (
		.dataa (Yin_Reg[5]),
		.result (Mult_Reg[5]));			
			
	//对滤波器系数与输入数据的乘法结果进行累加，并输出滤波后的数据
	assign Yout = Mult_Reg[0] + Mult_Reg[1] + Mult_Reg[2] + Mult_Reg[3] + Mult_Reg[4] + Mult_Reg[5];
	
endmodule
