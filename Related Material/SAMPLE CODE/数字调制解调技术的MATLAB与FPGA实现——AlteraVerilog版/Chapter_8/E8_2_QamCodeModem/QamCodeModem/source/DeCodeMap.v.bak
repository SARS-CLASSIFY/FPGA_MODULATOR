//这是cd2ab.v文件的程序清单
module cd2ab (
	rst,clk,cd,
	ab); 
	
	input		rst;       //复位信号，高电平有效
	input		clk;       //FPGA系统时钟
	input	 [1:0]	cd;  //输入的相对码数据
	output [1:0]	ab;  //转换后的绝对码数据

	reg [1:0] ef,a_b;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   ef <= 2'd0;
			end
		else
			begin
			   ef <= cd;
				if (ef[0]!=ef[1])
				   begin
					   a_b[0] <= cd[1] ^ ef[1];//xor
						a_b[1] <= cd[0] ^ ef[0];//xor
					end
				else
				   begin
					   a_b[1] <= cd[1] ^ ef[1];//xor
						a_b[0] <= cd[0] ^ ef[0];//xor
				   end
			end
			
	assign ab = a_b;

			
endmodule
	