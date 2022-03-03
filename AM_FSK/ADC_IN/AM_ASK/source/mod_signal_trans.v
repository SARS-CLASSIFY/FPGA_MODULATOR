module mod_signal_trans (
	rst_n,clk,
	dout);
	
	input    rst_n;            
	input		clk;   				
	output signed [8:0] dout;
	
	wire [6:0] rom_data;
	reg [6:0] mod_signal;
	
	
//	//无符号转有符号
//	reg [6:0] mod_sig_s_x;//有符号数调制信号	
//	always @(*)
//		begin
//			if(mod_signal[6]==1)
//				begin
//					mod_sig_s_x <= {{~mod_signal[6]},mod_signal[5:0]};				
//				end
//
//			else
//				begin
//					mod_sig_s_x <= {{~mod_signal[6]},mod_signal[5:0]}+7'd1;	
//				end
//		end
//	assign dout={{2{mod_sig_s_x[6]}},{mod_sig_s_x[6:0]}};//有符号数转换
	
	
	always @(posedge clk)
	begin
		 begin
			  mod_signal<=rom_data;
		 end
	end
	
	assign dout={2'b00,mod_signal};
	
	source_data source_data_inst(
    .clk(clk),
    .rst_n(rst_n),
    .out_data(rom_data)

	);
	
	
endmodule
