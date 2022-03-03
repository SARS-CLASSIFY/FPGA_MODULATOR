


module AM_MODE(
    input clk,rst_n,
	 
//	 output signed [8:0] add1,
//	 output signed [8:0] addout,
//	 output din,
//	 output signed [5:0] mul1,
//	 output signed [8:0] mul2
	
	 output dac_clk,
	 output signed [13:0] am_signed,
	 output [13:0] am

);


	wire rst;
	wire clk_125M;
	wire clk_200M;
	
	wire [13:0] out;
	
	
	wire [6:0] mod_signal;//调制信号
	wire [8:0] add1_temp;//加法数据
	wire [13:0] carrier_signal;//载波信号	
	wire signed[8:0] depth;//调制深度
	wire [8:0] add_out;//加法器输出
	wire [8:0] mult_in;//乘法器输入
	wire [5:0] mult_in_a;//乘法器载波输入
	
	reg [13:0] out_data;
	

	
	
	assign 	rst = ~rst_n;
	assign 	depth=9'd170;
	assign	add1_temp={{2{mod_signal[6]}},{mod_signal[6:0]}};//有符号数转换
	assign	mult_in=add_out;
	assign	mult_in_a=carrier_signal[13:8];
	assign	dac_clk=clk_200M;
				
	always @(*)
				out_data <= out;			
				
	assign am_signed = out_data;
		
	
	
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
		else if (timer == 32'd49_999) 
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
			if(out[13]==0)
				begin
					am_u <= {{~out[13]},out[12:0]};				
				end

			else
				begin
					am_u <= {{~out[13]},out[12:0]}-14'd1;	
				end
		end
	assign am=am_u;
	
	
	
	
	//test
//	reg [8:0] add1_x;
//	reg [8:0] add_out_x;
//	reg din_x;
//	reg [5:0] mul1_x;
//	reg [8:0] mul2_x;
	
//	always @(*)
//		begin
//				add1_x <= add1_temp;	
//				add_out_x <= add_out;
//				din_x <= binary_data;
//				
//				mul1_x <= mult_in_a;
//				mul2_x <= mult_in;
//		end
//	assign add1=add1_x;
//	assign din=din_x;
//	assign addout=add_out;
//	assign mul1=mul1_x;
//	assign mul2=mul2_x;
	

	

add add_inst(
	.dataa(add1_temp),
	.datab(depth),
	.result(add_out)
);
	
mult mult_inst(
	.dataa(mult_in_a),
	.datab(mult_in),
	.result(out)

);


source_data source_data_inst(
    .clk(clk),
    .rst_n(rst_n),
    .out_data(mod_signal)

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

