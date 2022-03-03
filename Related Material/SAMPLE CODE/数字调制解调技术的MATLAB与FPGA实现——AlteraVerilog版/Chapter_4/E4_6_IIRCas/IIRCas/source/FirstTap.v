//这是FirstTap.v文件的程序清单
module FirstTap (
	rst,clk,Xin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	 signed [11:0]	Xin;  //数据输入频率为2kHZ
	output signed [11:0]	Yout; //滤波后的输出数据
	
	//零点系数的实现代码/////////////////////////
	//将输入数据存入移位寄存器中
	reg signed[11:0] Xin1,Xin2;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Xin1 <= 12'd0;
				Xin2 <= 12'd0;
		   end	
		else
		   begin
				Xin1 <= Xin;
				Xin2 <= Xin1;
			end
			
   //采用移位运算及加法运算实现乘法运算
	wire signed [23:0] XMult0,XMult1,XMult2;
	assign XMult0 = {{6{Xin[11]}},Xin,6'd0}+{{7{Xin[11]}},Xin,5'd0}-{{11{Xin[11]}},Xin,1'd0};        //*94
	assign XMult1 = {{5{Xin1[11]}},Xin1,7'd0}+{{9{Xin1[11]}},Xin1,3'd0}+{{10{Xin1[11]}},Xin1,2'd0};  //*140
	assign XMult2 = {{6{Xin2[11]}},Xin2,6'd0}+{{7{Xin2[11]}},Xin2,5'd0}-{{11{Xin2[11]}},Xin2,1'd0};  //*94
 
	//对滤波器系数与输入数据乘法结果进行累加
	wire signed [23:0] Xout;
	assign Xout = XMult0 + XMult1 + XMult2;
	
	
	//极点系数的实现代码///////////////////////
	wire signed[11:0] Yin;
	reg signed[11:0] Yin1,Yin2;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Yin1 <= 12'd0;
				Yin2 <= 12'd0;
			end
		else
		   begin
				Yin1 <= Yin;
				Yin2 <= Yin1;
			end
			
	//采用移位运算及加法运算实现乘法运算
	wire signed [23:0] YMult1,YMult2;
	wire signed [23:0] Ysum,Ydiv;
	assign YMult1 = {{2{Yin1[11]}},Yin1,10'd0}+{{5{Yin1[11]}},Yin1,7'd0}+{{6{Yin1[11]}},Yin1,6'd0}-
	                {{11{Yin1[11]}},Yin1,1'd0}-{{12{Yin1[11]}},Yin1};  //*1213=1024+128+64-2-1
	assign YMult2 = {{4{Yin2[11]}},Yin2,8'd0}+{{9{Yin2[11]}},Yin2,3'd0}+{{10{Yin2[11]}},Yin2,2'd0}; //*268=256+8+4
	                

	//第一级IIR滤波器实现代码///////////////////////////
	assign Ysum = Xout+YMult1-YMult2;	
	assign Ydiv = {{11{Ysum[23]}},Ysum[23:11]};//2048
	//根据仿真结果可知，第一级滤波器的输出范围可用9位表示
   assign Yin = (rst ? 12'd0 : Ydiv[11:0]);
	//增加一级寄存器，提高运行速度
	reg signed [11:0] Yout_reg ;
	always @(posedge clk)
		Yout_reg <= Yin;
	assign Yout = Yout_reg;
	
endmodule

