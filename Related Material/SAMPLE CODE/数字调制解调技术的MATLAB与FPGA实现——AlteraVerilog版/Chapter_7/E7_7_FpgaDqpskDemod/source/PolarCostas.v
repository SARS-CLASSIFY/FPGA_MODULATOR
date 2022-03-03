//这是PolarCostas.v文件的程序清单
module PolarCostas (
	rst,clk,clk4,din,
	dout,bitsync); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：8MHz
	input		clk4;  //FPGA系统时钟：32MHz
	input	 signed [7:0]	din;    //输入数据：8MHz
	output [1:0]	     dout;    //解调后的数据
	output bitsync;

	
	//实例化解调环路模块Polar
	wire signed [25:0] di,dq,df;
	Polar	u0 (
		.rst (rst),
		.clk (clk),
		.din (din),
		.di (di),
		.dq (dq),
		.df (df));

   //实例化位同步模块BitSync
	wire sync_i;
	BitSync	u1 (
		.rst (rst),
		.clk (clk4),
		.datain (di[25]),
		.sync (sync_i));

   //实例化差分解码模块cd2ab
	reg [1:0] cd;
	cd2ab	u2 (
		.rst (rst),
		.clk (sync_i),
		.cd (cd),
		.ab (dout));
   
	//在位同步信号sync_i的驱动下，输出解调后的相对码cd
	reg sync_id,bit_sync;
	always @(posedge clk4 or posedge rst)
	   if (rst)
		   begin
			   sync_id <= 1'b0;
				cd <= 2'd0;
				bit_sync <= 1'b0;
			end
		else
		   begin
				sync_id <= sync_i;
				if ((sync_id) &&(!sync_i))
					begin
						cd <= {dq[25],di[25]};
						bit_sync <= 1'b1;
					end
				else
					bit_sync <= 1'b0;
			end
			
	assign bitsync = bit_sync;		
	
endmodule
