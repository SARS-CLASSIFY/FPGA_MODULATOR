//这是integrator_col.v文件的程序清单
module integrator_col (
	rst,clk,pn_pre,pn_mid,pn_aft,addr,di,dq,
	di_pre,dq_pre,di_mid,dq_mid,di_aft,dq_aft);

	input	 rst;   //复位信号，高电平有效
	input	 clk;   //FPGA系统时钟：49.6 MHz
	input  pn_pre;    //本地产生的pn码序列
	input  pn_mid;
	input  pn_aft;
	input [7:0]  addr;       
	input  signed [14:0] di; 
	input  signed [14:0] dq; 	
	output signed [22:0 ]di_pre;  	
	output signed [22:0 ]dq_pre; 
	output signed [22:0 ]di_mid;  	
	output signed [22:0 ]dq_mid; 
	output signed [22:0 ]di_aft;  	
	output signed [22:0 ]dq_aft; 	
   
   integrator u1 (
	   .rst (rst),
		.clk (clk),
		.pn (pn_pre),
		.addr (addr),
		.din (di),
		.dout (di_pre));	

   integrator u2 (
	   .rst (rst),
		.clk (clk),
		.pn (pn_pre),
		.addr (addr),
		.din (dq),
		.dout (dq_pre));	
		
   integrator u3 (
	   .rst (rst),
		.clk (clk),
		.pn (pn_mid),
		.addr (addr),
		.din (di),
		.dout (di_mid));	

   integrator u4 (
	   .rst (rst),
		.clk (clk),
		.pn (pn_mid),
		.addr (addr),
		.din (dq),
		.dout (dq_mid));	
		
   integrator u5 (
	   .rst (rst),
		.clk (clk),
		.pn (pn_aft),
		.addr (addr),
		.din (di),
		.dout (di_aft));	

   integrator u6 (
	   .rst (rst),
		.clk (clk),
		.pn (pn_aft),
		.addr (addr),
		.din (dq),
		.dout (dq_aft));			
		
endmodule
