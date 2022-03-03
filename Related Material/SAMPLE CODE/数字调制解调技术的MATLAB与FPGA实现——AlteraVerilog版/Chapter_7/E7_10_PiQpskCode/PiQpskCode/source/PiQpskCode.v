//这是PiQpskCode.v文件的程序清单
module PiQpskCode (
	rst,clk,din,
	Xk,Yk); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟
	input	 signed [1:0]	din;    
	output signed [7:0]	Xk;     
	output signed [7:0]	Yk;     
   
	//对输入数据首先进行寄存器输入
	reg [1:0] dint;
	always @(posedge clk)
	    dint <= din;
		 
	//根据当前输入数据，对存储器地址累加
	reg [2:0] addr;
   always @(posedge clk or posedge rst)   
	   if (rst)
			addr <= 3'd0;
	else
		case (dint)
			2'd0: addr <= addr + 3'd1;
			2'd1: addr <= addr + 3'd7;
			2'd2: addr <= addr + 3'd3;
			2'd3: addr <= addr + 3'd5;
			default : addr <= addr + 3'd1;
		endcase
		
    
    //设计正弦及余弦表
	 reg [7:0] cos,sine;
	 always @(posedge clk or posedge rst)
	    if (rst)
			begin
				cos <= 8'd0;
				sine<= 8'd0;
			end
		else
			case(addr)
				3'd0:
					begin
						cos <= 8'b01111111;
						sine <=8'b00000000;
					end
				3'd1:
					begin
						cos  <= 8'b01011010;
                  sine <= 8'b01011010;
					end			   
				3'd2:
					begin
						cos  <= 8'b00000000;
                  sine <= 8'b01111111;
					end	
				3'd3:
					begin
						cos  <= 8'b10100110;
                  sine <= 8'b01011010;
					end	
				3'd4:
					begin
						cos  <= 8'b10000001;
                  sine <= 8'b00000000;
					end	
				3'd5:
					begin
						cos  <= 8'b10100110;
                  sine <= 8'b10100110;
					end						
				3'd6:
					begin
						cos  <= 8'b00000000;
                  sine <= 8'b10000001;
					end						
				3'd7:
					begin
						cos  <= 8'b01011010;
                  sine <= 8'b10100110;
					end
				default:
					begin
						cos <= 8'b01111111;
						sine <=8'b00000000;
					end				   
			endcase
			
	assign Xk = cos;
	assign Yk = sine;
	
endmodule
