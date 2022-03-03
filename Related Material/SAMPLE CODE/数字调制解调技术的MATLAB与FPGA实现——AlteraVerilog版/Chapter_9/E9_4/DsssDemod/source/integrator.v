//这是integrator.v文件的程序清单
module integrator (
	rst,clk,pn,addr,din,
	dout); 
	
	input	 rst;   //复位信号，高电平有效
	input	 clk;   //FPGA系统时钟：49.6 MHz
	input  pn;    //本地产生的pn码序列
	input [7:0]  addr;          //pn码地址信息
	input  signed [14:0] din;   //输入的基带数据
	output signed [22:0 ]dout;  //相关积分器输出
	
	reg signed [22:0] sum,dtem;
	always @(posedge clk or posedge rst)
	   if (rst)
		   begin
			   sum  <= 23'd0;
				dtem <= 23'd0;
			end
		else
		   begin
			   if (addr <8'd247)
				   if (pn) sum <= sum + {{8{din[14]}},din};
					else    sum <= sum - {{8{din[14]}},din};
				else if (addr==8'd247)
				   begin
					   if (pn) dtem <= sum + {{8{din[14]}},din};
					   else    dtem <= sum - {{8{din[14]}},din};
						sum <= 23'd0;
					end
			end

			
	assign dout = dtem;

endmodule
