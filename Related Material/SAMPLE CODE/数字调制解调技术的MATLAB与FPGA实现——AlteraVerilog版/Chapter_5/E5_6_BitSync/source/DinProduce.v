//这是DinProduce.v文件的程序清单
module DinProduce (
	rst,clk32,
	cosine);
	
	input		rst;   //复位信号，高电平有效
	input		clk32; //FPGA系统时钟:32MHz
	output signed [5:0]	cosine;   //延时处理后的输出数据
   
	//对系统时钟分频处理，得到4分频的时钟信号
	reg [1:0] c;
	reg clk8;
	always @(posedge clk32 or posedge rst)
	   if (rst)
		   begin
			   c <= 0;
				clk8 <= 0;
			end
		else 
		   begin
			   c <= c+1;
				clk8 <= c[1];
			end

	//实例化NCO核所需的接口信号
	wire reset_n,out_valid,clken;
	wire [29:0] carrier;
	wire signed [9:0] cos ;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=30'd67108864;//0.5MHz正弦波，1MHz码元速率

	//实例化NCO核
   //Quartus提供的NCO核输出数据最小位宽为10比特，根据环路设计需求，只取高8比特参与后续运算
   wire signed [5:0] cose;	
	cos u0 (
		.phi_inc_i (carrier),
		.clk (clk8),
		.reset_n (reset_n),
		.clken (clken),
		.fsin_o (cos),
		.out_valid (out_valid));
		
	//对输出的正弦波信号进行处理
	//使得输出的数据与《数字通信同步技术的MATLAB与FPGA实现》（Xilinx/VHDL版）
	//中的数据完全一致,以便于比较仿真结果
	reg signed [5:0] cost;
	assign cose = cos[9:4];
	always @(posedge clk32)
		if (cose==-6'd13)   cost = -6'd12;
		else if (cose==6'd13)   cost =6'd12;
		else if (cose==6'd22)   cost =6'd23;
		else if (cose==6'd29)   cost =6'd30;
		else   cost = cose;
   assign cosine = cost;	
		
endmodule
		