//这是FskDemod.v文件的程序清单
module FskDemod (
	input    rst_n,              //复位信号，高电平有效
	input		clk,   				//数据采样时钟:32MHz
	input	[9:0] data_in,
	output adc_clk,
	

	output dout
	
	
	);
	



	wire [9:0] data_temp;
	wire rst;
	assign rst=~rst_n;
	assign adc_clk=clk;
	
	wire clk_1M, clk_10k;
	
	


		
	
	reg [8:0] count1;
	reg clk_temp;
	always @(posedge clk_1M or posedge rst)
		if (rst)
			begin
				count1 <= 9'd0;
				clk_temp <= 1'b0;
			end
		else if(count1 == 9'd49)
			begin
				count1 <= 9'd0;
				clk_temp <= ~clk_temp;
			end
		else 
			count1 <= count1+9'd1;	
	
	assign clk_10k=clk_temp;
	
	
	

	//声明滤波器输入接口信号
	wire ast_sink_valid,reset_n;
	wire [1:0] ast_sink_error;

	//设置滤波器输入接口信号的值
	assign ast_sink_valid=1'b1;
	assign ast_sink_error=2'd0;
	assign reset_n = !rst;
	
	//声明bpf1滤波器输出接口信号
	wire source_valid_bpf1;
	wire [1:0] source_error_bpf1;
	wire signed [23:0]  data_bpf1;
	
	
	


	firip	firip_inst(		
	
		.clk              (clk_10k),              //                     clk.clk
		.reset_n          (reset_n),          //                     rst.reset_n
		.ast_sink_data    (data_temp),    //   avalon_streaming_sink.data
		.ast_sink_valid   (ast_sink_valid),   //                        .valid
		.ast_sink_error   (ast_sink_error),   //                        .error
		.ast_source_data  (data_bpf1),  // avalon_streaming_source.data
		.ast_source_valid (source_valid_bpf1), //                        .valid
		.ast_source_error (source_error_bpf1)  //                        .error
		
		);
		
	//对带通滤波后的数据求绝对值（全波整流）
	reg signed [9:0] abs_bpf1;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   abs_bpf1 <= 10'd0;
		   end
		else
		   begin
				if (data_bpf1[23])
					abs_bpf1 <= -data_bpf1[23:14];
				else
					abs_bpf1 <= data_bpf1[23:14];
			end
			
	//声明bpf2滤波器输出接口信号
	wire source_valid_bpf2;
	wire [1:0] source_error_bpf2;
	wire signed [23:0]  data_bpf2;			
			

	firipx	firipx_inst(		
	
		.clk              (clk_10k),              //                     clk.clk
		.reset_n          (reset_n),          //                     rst.reset_n
		.ast_sink_data    (abs_bpf1),    //   avalon_streaming_sink.data
		.ast_sink_valid   (ast_sink_valid),   //                        .valid
		.ast_sink_error   (ast_sink_error),   //                        .error
		.ast_source_data  (data_bpf2),  // avalon_streaming_source.data
		.ast_source_valid (source_valid_bpf2), //                        .valid
		.ast_source_error (source_error_bpf2)  //                        .error
		
		);

		
	//整型
	reg signed [23:0] abs_bpf2;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   abs_bpf2 <= 24'd0;
		   end
		else
		   begin
				if (data_bpf2[23])
					abs_bpf2 <= -data_bpf2;
				else
					abs_bpf2 <= data_bpf2;
			end
			
	
	reg baund;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   baund <= 1'b0;
		   end
		else
		   begin
				if (abs_bpf2>=24'd10000)
					baund <= 1'b1;
				else
					baund <= 1'b0;
			end
				
	
	
adc10065 adc10065_inst(

    .clk(clk_1M),
    .rst_n(rst_n),
	 .data_in(data_in),
	 .dout(data_temp)
);


pll_1M pll_1M_inst(
	.inclk0(clk),
	.c0(clk_1M)
);
			
			
	
		

	assign dout = baund;

	


		
endmodule
