
module source_data(
    input clk,rst_n,
    output signed [6:0] out_data

);
//采用内部ROM数据仿真
    wire [7:0] rom_address;			
	 wire [6:0] rom_data;
	 reg [6:0] save_data;
	 reg [31:0] truefre;
	 
//设定频率
initial
begin
    truefre=32'd858993;										//10000HZ
end	 

assign out_data=rom_data;

addr_ctrl addr_ctrl_inst(
    .clk_50M(clk),
    .rst_n(rst_n),
    .addr(rom_address),
    .freqctrl(truefre[31:0])
);	

sin sin_inst(
    .clock(clk),
    .address(rom_address),
    .q(rom_data)

);

endmodule
