//这是ZeroParallel.v文件的程序清单
module ZeroParallel (
	rst,clk,Xin,
	Xout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 signed [14:0]	Xin;  //数据输
	output signed [21:0]	Xout; //滤波后的输出数据


	//将数据存入移位寄存器Xin_Reg中
	reg signed[14:0] Xin_Reg[5:0];
	reg [3:0] i,j; 
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin 
				for (i=0; i<6; i=i+1)
					Xin_Reg[i]=14'd0;
			end
		else
			begin
				for (j=0; j<5; j=j+1)
					Xin_Reg[j+1] <= Xin_Reg[j];
				Xin_Reg[0] <= Xin;
			end
			
	//将对称系数的输入数据相加
	wire signed [15:0] Add_Reg[2:0];
	assign Add_Reg[0]={Xin[14],Xin} - {Xin_Reg[5][14],Xin_Reg[5]};
	assign Add_Reg[1]={Xin_Reg[0][14],Xin_Reg[0]} - {Xin_Reg[4][14],Xin_Reg[4]};
	assign Add_Reg[2]={Xin_Reg[1][14],Xin_Reg[1]} + {Xin_Reg[3][14],Xin_Reg[3]};
	
	//采用移位运算及加法运算实现乘法运算
	wire signed [21:0] Mult_Reg[2:0];
	assign Mult_Reg[0]={{3{Add_Reg[0][15]}},Add_Reg[0],3'd0};       //*8
	assign Mult_Reg[1]={{2{Add_Reg[1][15]}},Add_Reg[1],4'd0} + {{6{Add_Reg[1][15]}},Add_Reg[1]};       //*17
	assign Mult_Reg[2]={{3{Add_Reg[2][15]}},Add_Reg[2],3'd0} + {{5{Add_Reg[2][15]}},Add_Reg[2],1'd0} + {{6{Add_Reg[2][15]}},Add_Reg[2]};  //*11

	//对滤波器系数与输入数据的乘法结果进行累加，并输出滤波后的数据
	assign Xout = Mult_Reg[0] + Mult_Reg[1] + Mult_Reg[2];
	
endmodule
