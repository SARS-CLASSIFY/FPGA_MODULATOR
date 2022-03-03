//这是ab2cd.v文件的程序清单
module ab2cd (
	rst,clk,ab,
	cd); 
	
	input		rst;       //复位信号，高电平有效
	input		clk;       //FPGA系统时钟
	input	 [1:0]	ab;  //输入的绝对码数据
	output [1:0]	cd;  //转换后的相对码数据

	reg [1:0] ef;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   ef <= 2'd0;
			end
		else
			begin
				if ((ab==2'b10) && (ef==2'b00))
					ef <= 2'b10;
				else if ((ab==2'b10) && (ef==2'b10))
					ef <= 2'b11;
				else if ((ab==2'b10) && (ef==2'b11))
					ef <= 2'b01;
				else if ((ab==2'b10) && (ef==2'b01))
					ef <= 2'b00;
					
					
				else if ((ab==2'b11) && (ef==2'b00))
					ef <= 2'b11;
				else if ((ab==2'b11) && (ef==2'b10))
					ef <= 2'b01;
				else if ((ab==2'b11) && (ef==2'b11))
					ef <= 2'b00;
				else if ((ab==2'b11) && (ef==2'b01))
					ef <= 2'b10;

				else if ((ab==2'b01) && (ef==2'b00))
					ef <= 2'b01;
				else if ((ab==2'b01) && (ef==2'b10))
					ef <= 2'b00;
				else if ((ab==2'b01) && (ef==2'b11))
					ef <= 2'b10;
				else if ((ab==2'b01) && (ef==2'b01))
					ef <= 2'b11;

				else if ((ab==2'b11) && (ef==2'b00))
					ef <= 2'b11;
				else if ((ab==2'b11) && (ef==2'b10))
					ef <= 2'b01;
				else if ((ab==2'b11) && (ef==2'b11))
					ef <= 2'b00;
				else if ((ab==2'b11) && (ef==2'b01))
					ef <= 2'b10;

				else if ((ab==2'b00) && (ef==2'b00))
					ef <= 2'b00;
				else if ((ab==2'b00) && (ef==2'b10))
					ef <= 2'b10;
				else if ((ab==2'b00) && (ef==2'b11))
					ef <= 2'b11;
				else if ((ab==2'b00) && (ef==2'b01))
					ef <= 2'b01;
			end
			
	assign cd = ef;
	
endmodule
	