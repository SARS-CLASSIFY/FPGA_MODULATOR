//这是ASKMod.v文件的程序清单
module ASKMod (
	rst,clk,
	dout);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//FPGA系统时钟:8MHz
	output signed [6:0]	dout; //ASK输出数据
	
	//实例化NCO/DDS核
	wire reset_n,out_valid,clken;
	wire signed [31:0] carrier_f;
	wire signed [13:0]sine ;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier_f=32'd687194767;//20MHz
								
	carrier	u0 (
		.phi_inc_i (carrier_f),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.fsin_o (sine),
		.out_valid (out_valid));
   
	reg [13:0] ask;
	always @(*)
				ask <= sine;
		
	assign dout = ask [13:7];
	
	
endmodule
