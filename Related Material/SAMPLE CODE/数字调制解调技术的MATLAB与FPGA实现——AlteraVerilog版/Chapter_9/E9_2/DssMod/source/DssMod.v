//这是DssMod.v文件的程序清单
module DssMod (
	rst,clk,din,
	clk_data,dout); 
	
	input	 rst;       //复位信号，高电平有效
	input	 clk;       //FPGA系统时钟/DDS驱动时钟，频率：8×31×Rb=49.6 MHz
	input  din;       //原始数据，频率：Rb=200 kbps
	output clk_data;  //输出的原始数据采样时钟，频率：Rb=200 kbps
	output signed [15:0 ]dout;  //载波调制后的扩频信号
	
   //对clk信号8分频，产生PN码时钟信号clk_pn
	reg [2:0] count = 3'd0;
	always @(posedge clk or posedge rst)
		count <= count + 3'd1;
			
	wire clk_pn;
	assign clk_pn = count[2];
	
	//对clk_pn进行31分频，产生数据采样时钟clk_data并取出原始数据
	reg [4:0] c_data;
	reg clkdata,data;
	always @(posedge clk_pn or posedge rst)
	   if (rst)
		   begin
			   c_data <= 5'd0;
				clkdata <= 1'b0;
				data <= 1'b0;
			end
		else
		   begin
			   if (c_data<30)
				   c_data <= c_data + 5'd1;
				else
				   c_data <= 5'd0;
				if (c_data==5'd0)
					//外部原始数据在clk_data的上升沿采样输入
					//下降沿时刻取数据，保证取数据时稳定可靠
					begin
				      data <= din;
						clkdata <= 1'b0;
					end
				else
			  	   if (c_data==5'd15)
				      clkdata <= 1'b1;
			end
			
	assign clk_data = clkdata;
	
	
   //对数据进行扩频处理，并扩展为双极性码
   reg signed [1:0] data_pn;
	wire pn;
   always @(posedge clk or posedge rst)
      if (rst)
	      data_pn <= 2'd0;
		else
		   //扩频（异或），并扩展为2比特的双极性码
	      begin
		      if (data==pn)
			      data_pn <= 2'b01;
				else
			      data_pn <= 2'b11;
			end	

   //调用伪码产生模块产生PN码
	PnCode u1 (
	   .rst (rst),
		.clk (clk_pn),
		.pn (pn));	
		
	//调用FIR滤波器核，对扩频数据进行插值及成形滤波
	wire ast_sink_valid,ast_source_ready,reset_n;
	wire [1:0] ast_sink_error;
	assign reset_n = ~rst;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	wire sink_ready,source_valid;
	wire [1:0] source_error;
	wire signed [14:0] fir_data;	
   shape_fir u2(
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data (data_pn),
		.ast_sink_valid (ast_sink_valid),
		.ast_source_ready (ast_source_ready),
		.ast_sink_error (ast_sink_error),
		.ast_source_data (fir_data),
		.ast_sink_ready (sink_ready),
		.ast_source_valid (source_valid),
		.ast_source_error (source_error));	
		

	//调用NCO核，产生8 MHz的载波信号
	//实例化NCO核所需的接口信号
	wire out_valid,clken;
	wire [31:0] carrier;
	wire signed [9:0] sin;
	assign clken = 1'b1;
	assign carrier=32'd692736661;//8MHz
	
	//实例化NCO核
   //Quartus提供的NCO核输出数据最小位宽为10比特，根据环路设计需求，只取高8比特参与后续运算	
	nco8m	u3 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.fsin_o (sin),
		.out_valid (out_valid));

	
   //调用乘法器IP核，实现载波调制
	mult8_8	u4 (
		.clock (clk),
		.dataa (sin[9:2]),
		.datab (fir_data[14:7]),
		.result (dout));

		
endmodule
