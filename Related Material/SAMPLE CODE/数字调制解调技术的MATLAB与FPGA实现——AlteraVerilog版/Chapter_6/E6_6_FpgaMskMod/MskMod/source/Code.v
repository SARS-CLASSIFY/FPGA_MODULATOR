//这是Code.v文件的程序清单
module Code (
	rst,clk,din,
	dout);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//系统时钟信号，与采样频率相同，fs=32 MHz
	input	   din;              //差分编码前的调制数据：1 MHz
	output   dout; 				//差分编码后的调制数据：1 MHz


   reg data;
	reg [4:0] count;
	always @(posedge clk or posedge rst)
		if (rst)
			begin
				data <= 1'b0;
				count <= 5'd0;
			end
		else
			begin
				count <= count + 5'd1;
				if (count==5'd31)
					if (din)
						data <= ~data;
			end
			
	assign dout = data;
		
endmodule
