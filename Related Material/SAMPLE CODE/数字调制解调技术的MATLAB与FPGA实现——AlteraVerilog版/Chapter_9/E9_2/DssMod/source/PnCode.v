//这是PnCode.v文件的程序清单
module PnCode (
	rst,clk,
	pn); 
	
	input	 rst; //复位信号，高电平有效
	input	 clk; //FPGA系统时钟，频率：31×Rb=6.2 MHz
	output pn;  //输出的PN码序列
   
	//设置PN码的本原多项式及初始相位
	parameter Len = 5;     //寄存器长度
	wire [Len-1:0] reg_state = 5'b10000;   //寄存器初值
	wire [Len:0]   polynomial= 6'b100101;  //本原多项式  
   
   reg [Len-1:0] pn_reg;
   reg pncode;
	integer i;
	reg poly=1'b0;
	always @(posedge clk)
		//采用同步复位机制控制PN码的初始相位
		if (rst)
		   begin
			   pn_reg <= reg_state;
				pncode <= 1'b0;
			end
		else
		   begin
				//第１位寄存器的值为根据多项式异或运算后的值
				pn_reg[0] <= poly;
			   //最末位寄存器的值输出为pn码
			   pncode <= pn_reg[Len-1];
				//pn_reg中的内容顺利右移１位
			   for (i=0; i<=(Len-2); i=i+1)
					pn_reg[i+1] <= pn_reg[i];
			end
			
	integer j;
	//根据多项式的值产生组合逻辑电路
   always @(*)
		for (j=(Len-1); j>=0; j=j-1)
		   begin
			   if (j==(Len-1))
			      poly = pn_reg[j];
		      else if (polynomial[j+1])
			      poly = poly ^ pn_reg[j];
		   end
			
   assign pn = pncode;
	 
endmodule
	