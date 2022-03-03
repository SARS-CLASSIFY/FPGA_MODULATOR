//这是pn_code.v文件的程序清单
module pn_code (
	rst,clk,load,addr_load,
	addr_pn,pn_pre,pn_aft,pn_mid); 
	
	input	 rst;             //复位信号，高电平有效
	input	 clk;             //FPGA系统时钟：49.6 MHz
	input  load;            //计数器置位信号，用于调整PN码序列相位
	input  [7:0] addr_load; //计数器置位地址
	output [7:0] addr_pn;   //PN码序列的位置地址
	output pn_pre;          //比pn_mid超前半个伪码码元的PN序列
	output pn_aft;          //比pn_mid滞后半个伪码码元的PN序列
	output pn_mid;          //本地PN序列

   //实例化单端口ROM核，存储存储8倍采样的一个伪码周期PN序列
	//生成IP核时，输入数据经过寄存器处理，输出数据不经过寄存器处理
	wire [7:0] addr;
	wire [0:0] pn_code;
   pn u1 (
	   .address(addr),
	   .clock(clk),
	   .q(pn_code));	
		
	//248进制计数器，用于产生伪码存储器的驱动地址
	//具有同步置位功能
   counter u2 (
	   .aclr(rst),
	   .clock(clk),
	   .data(addr_load),
	   .sload(load),
	   .q(addr));
		
   //通过触发器产生前后支路PN码序列及对应的地址信号
   reg [7:1] pncode;
	reg [7:0] addr_1,addr_2,addr_3,addrpn;
   always @(posedge clk)
      begin
			pncode[1]<= pn_code[0];
			pncode[2]<= pncode[1];
			pncode[3]<= pncode[2];
			pncode[4]<= pncode[3];
			pncode[5]<= pncode[4];
			pncode[6]<= pncode[5];
			pncode[7]<= pncode[6];
			addr_1 <= addr;
			addr_2 <= addr_1;
			addr_3 <= addr_2;
			addrpn <= addr_3;
      end
     
	//pn_mid与addr_pn同步 
	//pn_pre与pn_aft分别比pn_mid超前及滞后3、4个周期
	assign pn_pre = pn_code[0];
	assign pn_mid = pncode[3];
	assign pn_aft = pncode[7];
	assign addr_pn = addrpn;

	
endmodule
