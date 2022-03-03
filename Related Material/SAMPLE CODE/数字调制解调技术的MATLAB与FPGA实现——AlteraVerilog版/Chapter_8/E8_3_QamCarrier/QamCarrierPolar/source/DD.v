//这是DD.v文件的程序清单
module DD (
	rst,clk,yi,yq,
	pd); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：8MHz
	input	 signed [25:0]	yi;  //输入同相支路数据：8MHz
	input	 signed [25:0]	yq;  //输入正交支路数据：8MHz
	output signed [25:0]	pd;  //鉴相器输出数据
   
	//实例化均值计算模块，获取门限值mean
	wire signed [25:0] mean;
   mgate u0 (
	   .rst (rst),
		.clk (clk),
		.din (yi),
	   .mean(mean));
	
	
	//同时完成门限判决及I/Q支路的判决值与Q/I支路数据的乘法运算
	reg [2:0] i,q;
	reg signed [28:0] i_yq,q_yi;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				i <= 3'd0;
				q <= 3'd0;
				i_yq <= 29'd0;
				q_yi <= 29'd0;
			end
		else
			begin
			   //同时完成门限判决及I支路的判决值与Q支路数据的乘法运算
				if (yi > mean)
					begin
						i <= 3'd011;
						i_yq <= {{3{yq[25]}},yq} +{{2{yq[25]}},yq,1'b0};//*3
					end
				else if (yi > 26'd0)
					begin
						i <= 3'd001;
						i_yq <= {{3{yq[25]}},yq};//*1
					end				
				else if (yi < (-mean))
					begin
						i <= 3'd101;
						i_yq <= -{{3{yq[25]}},yq} - {{2{yq[25]}},yq,1'b0};//*-3
					end
				else
					begin
						i <= 3'd111;
						i_yq <= -{{3{yq[25]}},yq};//*-1
					end
			   //同时完成门限判决及Q支路的判决值与I支路数据的乘法运算
				if (yq > mean)
					begin
						q <= 3'd011;
						q_yi <= {{3{yi[25]}},yi} + {{2{yi[25]}},yi,1'b0};//*3
					end
				else if (yq > 26'd0)
					begin
						q <= 3'd001;
						q_yi <= {{3{yi[25]}},yi};//*1
					end				
				else if (yq < (-mean))
					begin
						q <= 3'd101;
						q_yi <= -{{3{yi[25]}},yi} - {{2{yi[25]}},yi,1'b0};//*-3
					end
				else
					begin
						q <= 3'd111;
						q_yi <= -{{3{yi[25]}},yi};//*-1
					end					
			end
   
	//模拟位同步信号条件下的判决运算
//	reg [2:0] count;
//	always @(posedge clk or posedge rst)
//	   if (rst)
//		   begin
//			   count <= 3'd0;
//			end
//		else
//			count <= count + 3'd1;
//
//	wire signed [28:0] aiq;	
//	assign aiq = (count==3'd2) ? (i_yq -q_yi): aiq; 
	
	wire signed [28:0] aiq;
	assign aiq = i_yq - q_yi;
	reg signed [28:0] pdout;
	always @(posedge clk or posedge rst)
		if (rst)
		   pdout <= 29'd0;
		else
		   if (((i==3'b011)|(i==3'b101)) && ((q==3'b011)|(q==3'b101)))
			   //i*i+q*q=18  1/18=1/16-1/128
			   pdout <= {{4{aiq[28]}},aiq[28:4]} + {{7{aiq[28]}},aiq[28:7]};
		   else if (((i==3'b001)|(i==3'b111)) && ((q==3'b001)|(q==3'b111)))
			   //i*i+q*q=2  1/2
			   pdout <= {{1{aiq[28]}},aiq[28:1]};				
		   else
			   //i*i+q*q=10  1/10=1/8-1/32
			   pdout <= {{3{aiq[28]}},aiq[28:3]} + {{5{aiq[28]}},aiq[28:5]};		
				
	assign pd = pdout[25:0];		
	
endmodule
