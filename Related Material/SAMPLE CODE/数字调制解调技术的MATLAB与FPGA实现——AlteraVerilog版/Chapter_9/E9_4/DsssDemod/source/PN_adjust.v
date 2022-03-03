//这是PN_adjust.v文件的程序清单
module PN_adjust (
	rst,clk,di_pre,dq_pre,di_mid,dq_mid,di_aft,dq_aft,gate,addr_pn,
	load,locked,addr_load);

	input	 rst;               //复位信号，高电平有效
	input	 clk;               //FPGA系统时钟：49.6 MHz
	input [7:0]  addr_pn;     //输入的PN码位置信息 
	input signed [35:0] gate; //输入的捕获门限
   //相关积分模块送来的6路积分数据	
	input signed [17:0 ]di_pre;  	
	input signed [17:0 ]dq_pre; 
	input signed [17:0 ]di_mid;  	
	input signed [17:0 ]dq_mid; 
	input signed [17:0 ]di_aft;  	
	input signed [17:0 ]dq_aft;
	output load;           //输出的PN码序列置位信号
	output locked;         //锁定状态指示信号，高电平锁定
	output [7:0]addr_load; //输出的PN码序列置位数据
	
	
	//乘法器完成平方运算，设置1个周期时延
	wire signed [35:0] mid_i,mid_q,pre_i,pre_q,aft_i,aft_q;
	mult18_18 u1(
	   .clock (clk),
		.dataa (di_mid),
		.result (mid_i));

	mult18_18 u2(
	   .clock (clk),
		.dataa (dq_mid),
		.result (mid_q));

	mult18_18 u3(
	   .clock (clk),
		.dataa (di_pre),
		.result (pre_i));

	mult18_18 u4(
	   .clock (clk),
		.dataa (dq_pre),
		.result (pre_q));		

	mult18_18 u5(
	   .clock (clk),
		.dataa (di_aft),
		.result (aft_i));

	mult18_18 u6(
	   .clock (clk),
		.dataa (dq_aft),
		.result (aft_q));	
   
	//完成I、Q支路相关峰的求和运算
   wire signed [35:0] mid,pre,aft;
	assign mid = mid_i + mid_q;
	assign pre = pre_i + pre_q;
	assign aft = aft_i + aft_q;
	
   //由于乘法运算延时一个周期，因此在addr_pn=1时设置load信号
   //并完成门限判决及地址置位操作。考虑到pn_code模块中计数器输出值
   //与addr_pn之间的相位关系，根据超前与滞后支路的值设置addr_load的值
	reg [7:0] addrload;
	reg loadt,lockedt;
	always @(posedge clk or posedge rst)
	   if (rst)
		   begin
			   loadt <= 1'b0;
				lockedt <= 1'b0;
				addrload <= 8'd0;
			end
		else
		   begin
			   if (addr_pn==8'd1)
				   begin
					   loadt <= 1'b1;
						//中间支路平方和小于门限值，地址向前滑动４个采样点
						if (mid < gate)
							begin
								addrload <= 8'd11;
								lockedt <= 1'b0;
							end
						//否则环路转入跟踪状态
						else
						   if (pre < aft)
							   begin
								   addrload <= 8'd6;
								   lockedt <= 1'b1;
							   end
				         else
				            if (pre > aft)		
							      begin
								   addrload <= 8'd8;
								   lockedt <= 1'b1;
							      end
								else
							      begin
								   addrload <= 8'd7;
								   lockedt <= 1'b1;
							      end
					end
				else
					loadt <= 1'b0;
			end
			
	assign load = loadt;
   assign locked = lockedt;
   assign addr_load = addrload;
	
endmodule
						   
					
				
	
	
	