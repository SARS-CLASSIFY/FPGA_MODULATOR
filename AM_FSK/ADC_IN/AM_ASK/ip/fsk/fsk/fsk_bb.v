
module fsk (
	clk,
	clken,
	phi_inc_i,
	freq_mod_i,
	fsin_o,
	out_valid,
	reset_n);	

	input		clk;
	input		clken;
	input	[31:0]	phi_inc_i;
	input	[24:0]	freq_mod_i;
	output	[13:0]	fsin_o;
	output		out_valid;
	input		reset_n;
endmodule
