
module AM_MODE(
    input clk,rst_n,
	 
	 //modelsim
//	 output signed [8:0] add1,
//	 output signed [5:0] mul1,
//	 output signed [8:0] mul2,
	
	 output dac_clk,
	 output adc_clk,
	 
//	 output [13:0] am_s,
	 output [13:0] am

);


	wire rst;
	wire clk_200M;
	
	
	wire [14:0] out;
	
	
	wire [7:0] add1_temp;//加法数据
	wire [8:0] add1_s;
	wire [13:0] carrier_signal;//载波信号	
	wire signed[8:0] depth;//调制深度
	wire [8:0] add_out;//加法器输出
	wire [8:0] mult_in;//乘法器输入
	wire [5:0] mult_in_a;//乘法器载波输入
	
	reg [13:0] out_data;
	

	
	
	assign 	rst = ~rst_n;
	
	assign 	depth=9'd180;
	assign	mult_in=add_out;
	assign	mult_in_a=carrier_signal[13:8];
	assign	dac_clk=clk_200M;
	assign   adc_clk=clk;
				
	always @(*)
				out_data <= out[14:1];			
				


	
	//数字信号产生
	reg [31:0] timer;
	reg binary_data;
	always@(posedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0) 
			begin
				timer <= 32'd0;
				binary_data <= 1'b1;
			end
		else if (timer == 32'd249_999) 
			begin
				timer <= 32'd0;	
				binary_data <= ~binary_data;
			end
		else 
			timer <= timer+1'b1;
	end		
	
	
	
	//有符号转无符号
	reg [13:0] am_u;
	always @(*)
		begin
			if(out_data[13]==0)
				begin
					am_u <= {{~out_data[13]},out_data[12:0]};				
				end

			else
				begin
					am_u <= {{~out_data[13]},out_data[12:0]}-14'd1;	
				end
		end


	//增益调节
//	reg [13:0] amp_am;
//	reg [13:0] amp_temp;
	
//	always @(*)
//		begin
//			if(am_u >= 14'd8192)
//				amp_temp <= am_u-14'd8192;
//			else
//				amp_temp <= 14'd8192-am_u;
//		end
//	
//	always @(*)
//		begin
//			amp_am <= {amp_temp[12:0],1'b0} + 14'd8192;
//		end
	
	assign am=am_u;    //定义增益	
	
	//无符号转有符号
	reg [7:0] add_s;//有符号数调制信号	
	always @(*)
		begin
			if(add1_temp[7]==1)
				begin
					add_s <= {{~add1_temp[7]},add1_temp[6:0]};				
				end

			else
				begin
					add_s <= {{~add1_temp[7]},add1_temp[6:0]}+8'd1;	
				end
		end
	assign	add1_s={add_s[7],add_s};
	
	
	//test
//	reg [8:0] add1_x;
//	reg [5:0] mul1_x;
//	reg [8:0] mul2_x;
//	always @(*)
//		begin
//				add1_x <= add1_temp;	
//				
//				mul1_x <= mult_in_a;
//				mul2_x <= mult_in;
//		end
//		
//	assign add1=add1_x;
//	assign mul1=mul1_x;
//	assign mul2=mul2_x;
//	
//	assign am_s=out_data;
	

add add_inst(
	.dataa(add1_s),
	.datab(depth),
	.result(add_out)
);
	
mult mult_inst(
	.dataa(mult_in_a),
	.datab(mult_in),
	.result(out)

);


adda_out adda_out_inst(

    .clk(clk),
    .rst_n(rst_n),
	 .dacdata(add1_temp)
);



//fsk
FskMod FskMod_inst(
	.rst(rst),
	.clk(clk),
	.din(binary_data),
	.dout(carrier_signal),
	.dac_clk(clk_200M)

);


endmodule

