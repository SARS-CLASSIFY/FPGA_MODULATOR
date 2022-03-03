//这是iir_lpf.v文件的程序清单
module iir_lpf (
	rst,clk,Xin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为32MHz
	input	 signed [28:0]	Xin;  //数据输入频率为2kHZ
	output signed [28:0]	Yout; //滤波后的输出数据


	//零点系数实现代码
	//将输入数据依次存入移位寄存器中
	reg signed[28:0] Xin_1,Xin_2,Xin_3;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin 
				Xin_1 <= 0;
				Xin_2 <= 0;
				Xin_3 <= 0;
			end
		else
			begin
				Xin_1 <= Xin;
				Xin_2 <= Xin_1;
				Xin_3 <= Xin_2;
			end
			
	//采用移位运算及加法运算实现乘法运算
	wire signed[40:0] XMult_0,XMult_1,XMult_2,XMult_3;	
	assign XMult_0={{9{Xin[28]}},Xin,3'd0};                  //*8
   assign XMult_1={{9{Xin_1[28]}},Xin_1,3'd0} + {{10{Xin_1[28]}},Xin_1,2'd0} + {{12{Xin_1[28]}},Xin_1}; //*13
   assign XMult_2={{9{Xin_2[28]}},Xin_2,3'd0} + {{10{Xin_2[28]}},Xin_2,2'd0} + {{12{Xin_2[28]}},Xin_2}; //*13
	assign XMult_3={{9{Xin_3[28]}},Xin_3,3'd0};             //*8

	//对滤波器系数与输入数据的乘法结果进行累加，并输出滤波后的数据
	//此处增加一级寄存器，以提高系统运算速度
	reg signed[40:0] Xout;
	always @(posedge clk)
		Xout <= XMult_0 + XMult_1 + XMult_2 + XMult_3;
		
	
	//极点系数的实现代码
	//将输入数据依次存入移位寄存器中
	reg signed[28:0]  Yin_1,Yin_2,Yin_3;
	wire signed[28:0] Yin;	
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin 
				Yin_1 <= 0;
				Yin_2 <= 0;
				Yin_3 <= 0;
			end
		else
			begin
				Yin_1 <= Yin;
				Yin_2 <= Yin_1;
				Yin_3 <= Yin_2;
			end	
			
	//采用移位运算及加法运算实现乘法运算
	wire signed[40:0] YMult_1,YMult_2,YMult_3;	
   assign YMult_1={{9{Yin_1[28]}},Yin_1,3'd0} - {{4{Yin_1[28]}},Yin_1,8'd0} - {{1{Yin_1[28]}},Yin_1,11'd0}; //*-2296
   assign YMult_2={{2{Yin_2[28]}},Yin_2,10'd0} + {{3{Yin_2[28]}},Yin_2,9'd0} + {{4{Yin_2[28]}},Yin_2,8'd0}- {{10{Yin_2[28]}},Yin_2,2'd0}; //*1788
	assign YMult_3={{10{Yin_3[28]}},Yin_3,2'd0} + {{7{Yin_3[28]}},Yin_3,5'd0} - {{3{Yin_3[28]}},Yin_3,9'd0}; //*-476
	
	//将零点系数结果Xout与极点系数滤波后的结果相减，输出IIR滤波器结果
	wire signed[40:0] Ysum;
	assign Ysum = Xout - YMult_1 - YMult_2 - YMult_3;
	
	//对Ysum右移10比特相当于除以1024，而后取低28位数据输出
	assign Yin = Ysum[38:10];
	
	
	//此处滤波结果由寄存器输出，以提高系统运算速度
	reg signed[28:0] dout;
	always @(posedge clk)
		dout <= Ysum[38:10];
	assign Yout = dout;	
	
endmodule
