//这是PnSync.v文件的程序清单
module PnSync (
	rst,clk,di,dq,
	pn,bit_sync,locked,douti,doutq); 
	 
	input	 rst;             //复位信号，高电平有效
	input	 clk;             //FPGA系统时钟：49.6 MHz
	input signed [14:0] di; //输入的下变频后的I支路基带信号
	input signed [14:0] dq; //输入的下变频后的Q支路基带信号
	output pn;              //输出的本地同步伪码序列
	output bit_sync;        //扩频解调数据的位同步脉冲
	output locked;          //锁定状态指示信号，高电平锁定
	output signed [22:0 ]douti;  //中间同相支路相关积分器输出
	output signed [22:0 ]doutq;  //中间正交支路相关积分器输出	

   //首先对输入数据通过寄存器输入
	reg signed [14:0] dit,dqt;
	always @(posedge clk)
	   begin
		   dit <= di;
			dqt <= dq;
		end
		
   wire signed [35:0] gate = 36'd33554432;// 2147496128
	wire signed [22:0] di_pre,di_mid,di_aft,dq_pre,dq_mid,dq_aft;
   wire [7:0] addr_load,addr_pn;
	wire load,pn_pre,pn_aft,pn_mid;
	
   //实例化相关积分器模块
   integrator_col u1 (
		.clk (clk),
		.rst (rst),
		.addr (addr_pn),
		.pn_pre (pn_pre),
		.pn_mid (pn_mid),
		.pn_aft (pn_aft),
		.di (dit),
		.dq (dqt),
		.di_pre (di_pre),
		.dq_pre (dq_pre),
		.di_mid (di_mid),
		.dq_mid (dq_mid),		
		.di_aft (di_aft),
		.dq_aft (dq_aft));				

   //实例化伪码产生器模块
   pn_code u2 (
		.clk (clk),
		.rst (rst),
      .load (load),
      .addr_load (addr_load),
      .addr_pn (addr_pn),
      .pn_pre (pn_pre),
      .pn_aft (pn_aft),
      .pn_mid (pn_mid));
		
		
   //实例化伪码相位调整模块
   PN_adjust u3 (
		.clk (clk),
		.rst (rst),
      .gate (gate),
      .addr_pn (addr_pn),
      .load (load),
      .locked (locked),
      .addr_load (addr_load),
      .di_pre (di_pre[22:5]),
      .dq_pre (dq_pre[22:5]),
      .di_mid (di_mid[22:5]),
      .dq_mid (dq_mid[22:5]),
      .di_aft (di_aft[22:5]),
      .dq_aft (dq_aft[22:5]));
		
	assign pn = pn_mid;
	assign bit_sync = load;
	assign douti = di_mid;
	assign doutq = dq_mid;

endmodule
