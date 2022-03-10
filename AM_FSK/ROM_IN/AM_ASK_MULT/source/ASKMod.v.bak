//这是ASKMod.v文件的程序清单
module ASKMod (
	rst,clk,din,
	dout);
	
	input    rst;              //复位信号，高电平有效
	input		clk;   				//FPGA系统时钟:8MHz
	input	  [1:0]	din;        //基带输入数据
	output signed [13:0]	dout; //ASK输出数据
	
	//实例化NCO/DDS核
	wire reset_n,out_valid,clken;
	wire signed [31:0] carrier;
	wire signed [13:0]sine ;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=32'd1073741824;//2MHz
	dds	u0 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.fsin_o (sine),
		.out_valid (out_valid));
   
	reg [13:0] ask;
	always @(*)
		case(din)
			2'd0:
			   ask  <= 14'd0;
			2'd1:
			   //0.3281＝1/4+1/16+1/32
				ask <= {{2{sine[13]}},sine[13:2]}+ {{4{sine[13]}},sine[13:4]} + {{5{sine[13]}},sine[13:5]};
			2'd2:
			   //0.6563＝1/2+1/8+1/16
				ask <= {{{sine[13]}},sine[13:1]}+ {{3{sine[13]}},sine[13:3]} + {{4{sine[13]}},sine[13:4]};
			3'd3:
				ask <= sine;
		endcase
		
	assign dout = ask;
	
	
endmodule
