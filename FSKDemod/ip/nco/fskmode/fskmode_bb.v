
module fskmode (
	clk,
	reset_n,
	clken,
	phi_inc_i,
	freq_mod_i,
	fsin_o,
	out_valid);	

	input		clk;
	input		reset_n;
	input		clken;
	input	[24:0]	phi_inc_i;
	input	[24:0]	freq_mod_i;
	output	[9:0]	fsin_o;
	output		out_valid;
endmodule
