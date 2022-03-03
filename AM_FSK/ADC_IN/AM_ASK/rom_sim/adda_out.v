/* ------------------------------------------------------------------ 
* brief	: DDS GENERATE HIGE PRECISION WAVE
* data 	: 2021.3.25
* author : SARS_CLASSIFY
* ------------------------------------------------------------------- */ 

module adda_out(
    input clk,
    output wire [7:0] dacdata,

    input    rst_n									//KEY IN PORT

);


    wire [7:0] rom_address;			


		

/* ------------------------------------------------------------------ 
* WAVE RELATED
* ------------------------------------------------------------------- */ 
wire [7:0] rom_data;
reg [7:0] save_data;				//choose the generated wave
assign dacdata =  {1'b0,save_data[7:1]};	//get rom data


always @(posedge clk)
begin
    begin
        save_data<=rom_data;
    end
end
/* ------------------------------------------------------------------ 
* FREQUENCE CTRL MODULE:USING USATR PART
* COMPUTING FORMULA: fre=2^32*F(the fre you hope to get)*TCLK(T of clk source :20ns)
* ------------------------------------------------------------------- */ 


wire [59:0] truefre;

assign truefre=60'd858993;  //10k

/* ------------------------------------------------------------------ 
* INSTANTIATION PROCESS
* ------------------------------------------------------------------- */ 

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