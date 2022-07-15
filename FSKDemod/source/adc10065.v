module adc10065 (
	rst_n,clk,data_in,
	dout);
	
	
	input    rst_n;            
	input		clk;   	
	input   [9:0] data_in;
	output  [9:0] dout;
	
	reg [9:0] ADC_Data;
	
	
	wire clk_1M;
	assign clk_1M=clk;
	
	
	
	
	always@(posedge clk_1M or negedge rst_n)
		begin
			if(!rst_n) 
				begin
					ADC_Data <= 10'd0;
				end
			else
				begin
					ADC_Data <= data_in;
				end
		
		end
		
	assign dout=ADC_Data;
		
	
	
	
	
endmodule

		