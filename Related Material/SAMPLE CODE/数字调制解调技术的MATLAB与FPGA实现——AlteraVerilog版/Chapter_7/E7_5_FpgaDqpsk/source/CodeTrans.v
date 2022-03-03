//这是CodeTrans.v文件的程序清单
module CodeTrans (
	rst,clk,din,
	di,dq); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //时钟信号，数据速率/采样速率/FPGA系统时钟/8 MHz
	input	   din;   //输入的二进制原始数据/2Mbps
	output signed [1:0]	di; //串/并变换、差分编码、插值处理后的同相信号
	output signed [1:0]	dq; //串/并变换、差分编码、插值处理后的正交信号

	
    //串/并转换，2 Mbps的单比特数据转换为1 Mbps的双比特码元
	 reg [1:0] ab;
	 reg [2:0] count;
	 reg dint;
    always @(posedge clk or posedge rst)
	    if (rst)
		    begin
			    ab <= 2'd0;
				 count <= 3'd0;
				 dint <= 1'b0;
			end
		else
		   begin
		      count <= count + 3'd1;
			   if (count == 3'd0)
					dint <= din;
				else if (count == 3'd4)
					ab <= {din,dint};
			end

    //绝对码ab转换成相对码cd，码时钟由分频得到的1 MHz信号提供
	 wire [1:0] cd;
    ab2cd u0 ( 
 		.rst (rst),
		.clk (count[2]),
		.ab (ab),
		.cd (cd));  
		
    //对相对码进行插值（可插零值，也可直接插方波数据）及双极性变换处理
	 reg [1:0] dit,dqt;
	 always @(posedge clk or posedge rst)
	    if (rst)
		    begin
				dit <= 2'd0;
				dqt <= 2'd0;
			end
		else
		   begin
			   if(!cd[0])
					dit <= 2'b01;
				else
				   dit <= 2'b11;
				if (!cd[1])
				   dqt <= 2'b01;
				else
				   dqt <= 2'b11;
			end
			
	assign di = dit;
	assign dq = dqt;

endmodule

	