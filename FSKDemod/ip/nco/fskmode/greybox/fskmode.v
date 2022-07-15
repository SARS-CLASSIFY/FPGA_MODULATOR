// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

// DATE "03/08/2022 14:01:43"

// 
// Device: Altera EP4CE6F17C8 Package FBGA256
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module fskmode (
	clk,
	clken,
	phi_inc_i,
	freq_mod_i,
	fsin_o,
	out_valid,
	reset_n)/* synthesis synthesis_greybox=1 */;
input 	clk;
input 	clken;
input 	[24:0] phi_inc_i;
input 	[24:0] freq_mod_i;
output 	[9:0] fsin_o;
output 	out_valid;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \nco_ii_0|ux710isdr|data_ready~q ;
wire \nco_ii_0|ux122|data_out[0]~q ;
wire \nco_ii_0|ux122|data_out[1]~q ;
wire \nco_ii_0|ux122|data_out[2]~q ;
wire \nco_ii_0|ux122|data_out[3]~q ;
wire \nco_ii_0|ux122|data_out[4]~q ;
wire \nco_ii_0|ux122|data_out[5]~q ;
wire \nco_ii_0|ux122|data_out[6]~q ;
wire \nco_ii_0|ux122|data_out[7]~q ;
wire \nco_ii_0|ux122|data_out[8]~q ;
wire \nco_ii_0|ux122|data_out[9]~q ;
wire \~GND~combout ;
wire \reset_n~input_o ;
wire \clk~input_o ;
wire \clken~input_o ;
wire \freq_mod_i[10]~input_o ;
wire \phi_inc_i[10]~input_o ;
wire \freq_mod_i[9]~input_o ;
wire \phi_inc_i[9]~input_o ;
wire \freq_mod_i[8]~input_o ;
wire \phi_inc_i[8]~input_o ;
wire \freq_mod_i[7]~input_o ;
wire \phi_inc_i[7]~input_o ;
wire \freq_mod_i[6]~input_o ;
wire \phi_inc_i[6]~input_o ;
wire \freq_mod_i[5]~input_o ;
wire \phi_inc_i[5]~input_o ;
wire \freq_mod_i[4]~input_o ;
wire \phi_inc_i[4]~input_o ;
wire \freq_mod_i[3]~input_o ;
wire \phi_inc_i[3]~input_o ;
wire \freq_mod_i[2]~input_o ;
wire \phi_inc_i[2]~input_o ;
wire \freq_mod_i[1]~input_o ;
wire \phi_inc_i[1]~input_o ;
wire \freq_mod_i[0]~input_o ;
wire \phi_inc_i[0]~input_o ;
wire \freq_mod_i[22]~input_o ;
wire \phi_inc_i[22]~input_o ;
wire \freq_mod_i[21]~input_o ;
wire \phi_inc_i[21]~input_o ;
wire \freq_mod_i[20]~input_o ;
wire \phi_inc_i[20]~input_o ;
wire \freq_mod_i[19]~input_o ;
wire \phi_inc_i[19]~input_o ;
wire \freq_mod_i[18]~input_o ;
wire \phi_inc_i[18]~input_o ;
wire \freq_mod_i[17]~input_o ;
wire \phi_inc_i[17]~input_o ;
wire \freq_mod_i[16]~input_o ;
wire \phi_inc_i[16]~input_o ;
wire \freq_mod_i[15]~input_o ;
wire \phi_inc_i[15]~input_o ;
wire \freq_mod_i[14]~input_o ;
wire \phi_inc_i[14]~input_o ;
wire \freq_mod_i[13]~input_o ;
wire \phi_inc_i[13]~input_o ;
wire \freq_mod_i[12]~input_o ;
wire \phi_inc_i[12]~input_o ;
wire \freq_mod_i[11]~input_o ;
wire \phi_inc_i[11]~input_o ;
wire \freq_mod_i[24]~input_o ;
wire \phi_inc_i[24]~input_o ;
wire \freq_mod_i[23]~input_o ;
wire \phi_inc_i[23]~input_o ;


fskmode_fskmode_nco_ii_0 nco_ii_0(
	.data_ready(\nco_ii_0|ux710isdr|data_ready~q ),
	.data_out_0(\nco_ii_0|ux122|data_out[0]~q ),
	.data_out_1(\nco_ii_0|ux122|data_out[1]~q ),
	.data_out_2(\nco_ii_0|ux122|data_out[2]~q ),
	.data_out_3(\nco_ii_0|ux122|data_out[3]~q ),
	.data_out_4(\nco_ii_0|ux122|data_out[4]~q ),
	.data_out_5(\nco_ii_0|ux122|data_out[5]~q ),
	.data_out_6(\nco_ii_0|ux122|data_out[6]~q ),
	.data_out_7(\nco_ii_0|ux122|data_out[7]~q ),
	.data_out_8(\nco_ii_0|ux122|data_out[8]~q ),
	.data_out_9(\nco_ii_0|ux122|data_out[9]~q ),
	.GND_port(\~GND~combout ),
	.reset_n(\reset_n~input_o ),
	.clk(\clk~input_o ),
	.clken(\clken~input_o ),
	.freq_mod_i_10(\freq_mod_i[10]~input_o ),
	.phi_inc_i_10(\phi_inc_i[10]~input_o ),
	.freq_mod_i_9(\freq_mod_i[9]~input_o ),
	.phi_inc_i_9(\phi_inc_i[9]~input_o ),
	.freq_mod_i_8(\freq_mod_i[8]~input_o ),
	.phi_inc_i_8(\phi_inc_i[8]~input_o ),
	.freq_mod_i_7(\freq_mod_i[7]~input_o ),
	.phi_inc_i_7(\phi_inc_i[7]~input_o ),
	.freq_mod_i_6(\freq_mod_i[6]~input_o ),
	.phi_inc_i_6(\phi_inc_i[6]~input_o ),
	.freq_mod_i_5(\freq_mod_i[5]~input_o ),
	.phi_inc_i_5(\phi_inc_i[5]~input_o ),
	.freq_mod_i_4(\freq_mod_i[4]~input_o ),
	.phi_inc_i_4(\phi_inc_i[4]~input_o ),
	.freq_mod_i_3(\freq_mod_i[3]~input_o ),
	.phi_inc_i_3(\phi_inc_i[3]~input_o ),
	.freq_mod_i_2(\freq_mod_i[2]~input_o ),
	.phi_inc_i_2(\phi_inc_i[2]~input_o ),
	.freq_mod_i_1(\freq_mod_i[1]~input_o ),
	.phi_inc_i_1(\phi_inc_i[1]~input_o ),
	.freq_mod_i_0(\freq_mod_i[0]~input_o ),
	.phi_inc_i_0(\phi_inc_i[0]~input_o ),
	.freq_mod_i_22(\freq_mod_i[22]~input_o ),
	.phi_inc_i_22(\phi_inc_i[22]~input_o ),
	.freq_mod_i_21(\freq_mod_i[21]~input_o ),
	.phi_inc_i_21(\phi_inc_i[21]~input_o ),
	.freq_mod_i_20(\freq_mod_i[20]~input_o ),
	.phi_inc_i_20(\phi_inc_i[20]~input_o ),
	.freq_mod_i_19(\freq_mod_i[19]~input_o ),
	.phi_inc_i_19(\phi_inc_i[19]~input_o ),
	.freq_mod_i_18(\freq_mod_i[18]~input_o ),
	.phi_inc_i_18(\phi_inc_i[18]~input_o ),
	.freq_mod_i_17(\freq_mod_i[17]~input_o ),
	.phi_inc_i_17(\phi_inc_i[17]~input_o ),
	.freq_mod_i_16(\freq_mod_i[16]~input_o ),
	.phi_inc_i_16(\phi_inc_i[16]~input_o ),
	.freq_mod_i_15(\freq_mod_i[15]~input_o ),
	.phi_inc_i_15(\phi_inc_i[15]~input_o ),
	.freq_mod_i_14(\freq_mod_i[14]~input_o ),
	.phi_inc_i_14(\phi_inc_i[14]~input_o ),
	.freq_mod_i_13(\freq_mod_i[13]~input_o ),
	.phi_inc_i_13(\phi_inc_i[13]~input_o ),
	.freq_mod_i_12(\freq_mod_i[12]~input_o ),
	.phi_inc_i_12(\phi_inc_i[12]~input_o ),
	.freq_mod_i_11(\freq_mod_i[11]~input_o ),
	.phi_inc_i_11(\phi_inc_i[11]~input_o ),
	.freq_mod_i_24(\freq_mod_i[24]~input_o ),
	.phi_inc_i_24(\phi_inc_i[24]~input_o ),
	.freq_mod_i_23(\freq_mod_i[23]~input_o ),
	.phi_inc_i_23(\phi_inc_i[23]~input_o ));

cycloneive_lcell_comb \~GND (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";

assign \reset_n~input_o  = reset_n;

assign \clk~input_o  = clk;

assign \clken~input_o  = clken;

assign \freq_mod_i[10]~input_o  = freq_mod_i[10];

assign \phi_inc_i[10]~input_o  = phi_inc_i[10];

assign \freq_mod_i[9]~input_o  = freq_mod_i[9];

assign \phi_inc_i[9]~input_o  = phi_inc_i[9];

assign \freq_mod_i[8]~input_o  = freq_mod_i[8];

assign \phi_inc_i[8]~input_o  = phi_inc_i[8];

assign \freq_mod_i[7]~input_o  = freq_mod_i[7];

assign \phi_inc_i[7]~input_o  = phi_inc_i[7];

assign \freq_mod_i[6]~input_o  = freq_mod_i[6];

assign \phi_inc_i[6]~input_o  = phi_inc_i[6];

assign \freq_mod_i[5]~input_o  = freq_mod_i[5];

assign \phi_inc_i[5]~input_o  = phi_inc_i[5];

assign \freq_mod_i[4]~input_o  = freq_mod_i[4];

assign \phi_inc_i[4]~input_o  = phi_inc_i[4];

assign \freq_mod_i[3]~input_o  = freq_mod_i[3];

assign \phi_inc_i[3]~input_o  = phi_inc_i[3];

assign \freq_mod_i[2]~input_o  = freq_mod_i[2];

assign \phi_inc_i[2]~input_o  = phi_inc_i[2];

assign \freq_mod_i[1]~input_o  = freq_mod_i[1];

assign \phi_inc_i[1]~input_o  = phi_inc_i[1];

assign \freq_mod_i[0]~input_o  = freq_mod_i[0];

assign \phi_inc_i[0]~input_o  = phi_inc_i[0];

assign \freq_mod_i[22]~input_o  = freq_mod_i[22];

assign \phi_inc_i[22]~input_o  = phi_inc_i[22];

assign \freq_mod_i[21]~input_o  = freq_mod_i[21];

assign \phi_inc_i[21]~input_o  = phi_inc_i[21];

assign \freq_mod_i[20]~input_o  = freq_mod_i[20];

assign \phi_inc_i[20]~input_o  = phi_inc_i[20];

assign \freq_mod_i[19]~input_o  = freq_mod_i[19];

assign \phi_inc_i[19]~input_o  = phi_inc_i[19];

assign \freq_mod_i[18]~input_o  = freq_mod_i[18];

assign \phi_inc_i[18]~input_o  = phi_inc_i[18];

assign \freq_mod_i[17]~input_o  = freq_mod_i[17];

assign \phi_inc_i[17]~input_o  = phi_inc_i[17];

assign \freq_mod_i[16]~input_o  = freq_mod_i[16];

assign \phi_inc_i[16]~input_o  = phi_inc_i[16];

assign \freq_mod_i[15]~input_o  = freq_mod_i[15];

assign \phi_inc_i[15]~input_o  = phi_inc_i[15];

assign \freq_mod_i[14]~input_o  = freq_mod_i[14];

assign \phi_inc_i[14]~input_o  = phi_inc_i[14];

assign \freq_mod_i[13]~input_o  = freq_mod_i[13];

assign \phi_inc_i[13]~input_o  = phi_inc_i[13];

assign \freq_mod_i[12]~input_o  = freq_mod_i[12];

assign \phi_inc_i[12]~input_o  = phi_inc_i[12];

assign \freq_mod_i[11]~input_o  = freq_mod_i[11];

assign \phi_inc_i[11]~input_o  = phi_inc_i[11];

assign \freq_mod_i[24]~input_o  = freq_mod_i[24];

assign \phi_inc_i[24]~input_o  = phi_inc_i[24];

assign \freq_mod_i[23]~input_o  = freq_mod_i[23];

assign \phi_inc_i[23]~input_o  = phi_inc_i[23];

assign fsin_o[0] = \nco_ii_0|ux122|data_out[0]~q ;

assign fsin_o[1] = \nco_ii_0|ux122|data_out[1]~q ;

assign fsin_o[2] = \nco_ii_0|ux122|data_out[2]~q ;

assign fsin_o[3] = \nco_ii_0|ux122|data_out[3]~q ;

assign fsin_o[4] = \nco_ii_0|ux122|data_out[4]~q ;

assign fsin_o[5] = \nco_ii_0|ux122|data_out[5]~q ;

assign fsin_o[6] = \nco_ii_0|ux122|data_out[6]~q ;

assign fsin_o[7] = \nco_ii_0|ux122|data_out[7]~q ;

assign fsin_o[8] = \nco_ii_0|ux122|data_out[8]~q ;

assign fsin_o[9] = \nco_ii_0|ux122|data_out[9]~q ;

assign out_valid = \nco_ii_0|ux710isdr|data_ready~q ;

endmodule

module fskmode_fskmode_nco_ii_0 (
	data_ready,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	GND_port,
	reset_n,
	clk,
	clken,
	freq_mod_i_10,
	phi_inc_i_10,
	freq_mod_i_9,
	phi_inc_i_9,
	freq_mod_i_8,
	phi_inc_i_8,
	freq_mod_i_7,
	phi_inc_i_7,
	freq_mod_i_6,
	phi_inc_i_6,
	freq_mod_i_5,
	phi_inc_i_5,
	freq_mod_i_4,
	phi_inc_i_4,
	freq_mod_i_3,
	phi_inc_i_3,
	freq_mod_i_2,
	phi_inc_i_2,
	freq_mod_i_1,
	phi_inc_i_1,
	freq_mod_i_0,
	phi_inc_i_0,
	freq_mod_i_22,
	phi_inc_i_22,
	freq_mod_i_21,
	phi_inc_i_21,
	freq_mod_i_20,
	phi_inc_i_20,
	freq_mod_i_19,
	phi_inc_i_19,
	freq_mod_i_18,
	phi_inc_i_18,
	freq_mod_i_17,
	phi_inc_i_17,
	freq_mod_i_16,
	phi_inc_i_16,
	freq_mod_i_15,
	phi_inc_i_15,
	freq_mod_i_14,
	phi_inc_i_14,
	freq_mod_i_13,
	phi_inc_i_13,
	freq_mod_i_12,
	phi_inc_i_12,
	freq_mod_i_11,
	phi_inc_i_11,
	freq_mod_i_24,
	phi_inc_i_24,
	freq_mod_i_23,
	phi_inc_i_23)/* synthesis synthesis_greybox=1 */;
output 	data_ready;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
input 	GND_port;
input 	reset_n;
input 	clk;
input 	clken;
input 	freq_mod_i_10;
input 	phi_inc_i_10;
input 	freq_mod_i_9;
input 	phi_inc_i_9;
input 	freq_mod_i_8;
input 	phi_inc_i_8;
input 	freq_mod_i_7;
input 	phi_inc_i_7;
input 	freq_mod_i_6;
input 	phi_inc_i_6;
input 	freq_mod_i_5;
input 	phi_inc_i_5;
input 	freq_mod_i_4;
input 	phi_inc_i_4;
input 	freq_mod_i_3;
input 	phi_inc_i_3;
input 	freq_mod_i_2;
input 	phi_inc_i_2;
input 	freq_mod_i_1;
input 	phi_inc_i_1;
input 	freq_mod_i_0;
input 	phi_inc_i_0;
input 	freq_mod_i_22;
input 	phi_inc_i_22;
input 	freq_mod_i_21;
input 	phi_inc_i_21;
input 	freq_mod_i_20;
input 	phi_inc_i_20;
input 	freq_mod_i_19;
input 	phi_inc_i_19;
input 	freq_mod_i_18;
input 	phi_inc_i_18;
input 	freq_mod_i_17;
input 	phi_inc_i_17;
input 	freq_mod_i_16;
input 	phi_inc_i_16;
input 	freq_mod_i_15;
input 	phi_inc_i_15;
input 	freq_mod_i_14;
input 	phi_inc_i_14;
input 	freq_mod_i_13;
input 	phi_inc_i_13;
input 	freq_mod_i_12;
input 	phi_inc_i_12;
input 	freq_mod_i_11;
input 	phi_inc_i_11;
input 	freq_mod_i_24;
input 	phi_inc_i_24;
input 	freq_mod_i_23;
input 	phi_inc_i_23;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \rot|sin_o[0]~q ;
wire \rot|sin_o[1]~q ;
wire \rot|sin_o[2]~q ;
wire \rot|sin_o[3]~q ;
wire \rot|sin_o[4]~q ;
wire \rot|sin_o[5]~q ;
wire \rot|sin_o[6]~q ;
wire \rot|sin_o[7]~q ;
wire \rot|sin_o[8]~q ;
wire \rot|sin_o[9]~q ;
wire \sid2c|sin_rom_2c[0]~q ;
wire \sid2c|cos_rom_2c[0]~q ;
wire \sid2c|sin_rom_2c[1]~q ;
wire \sid2c|cos_rom_2c[1]~q ;
wire \sid2c|sin_rom_2c[2]~q ;
wire \sid2c|cos_rom_2c[2]~q ;
wire \sid2c|sin_rom_2c[3]~q ;
wire \sid2c|cos_rom_2c[3]~q ;
wire \sid2c|sin_rom_2c[4]~q ;
wire \sid2c|cos_rom_2c[4]~q ;
wire \sid2c|sin_rom_2c[5]~q ;
wire \sid2c|cos_rom_2c[5]~q ;
wire \sid2c|sin_rom_2c[6]~q ;
wire \sid2c|cos_rom_2c[6]~q ;
wire \sid2c|sin_rom_2c[7]~q ;
wire \sid2c|cos_rom_2c[7]~q ;
wire \sid2c|sin_rom_2c[8]~q ;
wire \sid2c|cos_rom_2c[8]~q ;
wire \sid2c|cos_rom_2c[9]~q ;
wire \sid2c|sin_rom_2c[9]~q ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux007|rom_add[0]~q ;
wire \ux007|rom_add[1]~q ;
wire \ux007|rom_add[2]~q ;
wire \ux007|rom_add[3]~q ;
wire \ux007|rom_add[4]~q ;
wire \ux007|rom_add[5]~q ;
wire \ux007|rom_add[6]~q ;
wire \ux007|rom_add[7]~q ;
wire \ux007|rom_add[8]~q ;
wire \ux007|rom_add[9]~q ;
wire \ux007|rom_add[10]~q ;
wire \ux007|rom_add[11]~q ;
wire \ux001|dxxrv[3]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[10]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[9]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[8]~q ;
wire \ux001|dxxrv[2]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[7]~q ;
wire \ux001|dxxrv[1]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[6]~q ;
wire \ux001|dxxrv[0]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[5]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[22]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[21]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[20]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[19]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[18]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[17]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[16]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[15]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[14]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[13]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[12]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[11]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[24]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[23]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[10]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[9]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[8]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[7]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[6]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[5]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[4]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[3]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[2]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[1]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[0]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[22]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[21]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[20]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[19]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[18]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[17]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[16]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[15]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[14]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[13]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[12]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[11]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[24]~q ;
wire \ux003|acc|auto_generated|pipeline_dffe[23]~q ;
wire \ux122|data_out[0]~1_combout ;
wire \tdl|seg_rot[2]~q ;
wire \sid2c|cos_rom_d[0]~q ;
wire \tdl|seg_rot[1]~q ;
wire \tdl|seg_rot[0]~q ;
wire \sid2c|sin_rom_d[0]~q ;
wire \sid2c|cos_rom_d[1]~q ;
wire \sid2c|sin_rom_d[1]~q ;
wire \sid2c|cos_rom_d[2]~q ;
wire \sid2c|sin_rom_d[2]~q ;
wire \sid2c|cos_rom_d[3]~q ;
wire \sid2c|sin_rom_d[3]~q ;
wire \sid2c|cos_rom_d[4]~q ;
wire \sid2c|sin_rom_d[4]~q ;
wire \sid2c|cos_rom_d[5]~q ;
wire \sid2c|sin_rom_d[5]~q ;
wire \sid2c|cos_rom_d[6]~q ;
wire \sid2c|sin_rom_d[6]~q ;
wire \sid2c|cos_rom_d[7]~q ;
wire \sid2c|sin_rom_d[7]~q ;
wire \sid2c|cos_rom_d[8]~q ;
wire \sid2c|sin_rom_d[8]~q ;
wire \ux002|dxxpdo[5]~q ;
wire \ux002|dxxpdo[17]~q ;
wire \ux002|dxxpdo[6]~q ;
wire \ux002|dxxpdo[7]~q ;
wire \ux002|dxxpdo[8]~q ;
wire \ux002|dxxpdo[9]~q ;
wire \ux002|dxxpdo[10]~q ;
wire \ux002|dxxpdo[11]~q ;
wire \ux002|dxxpdo[12]~q ;
wire \ux002|dxxpdo[13]~q ;
wire \ux002|dxxpdo[14]~q ;
wire \ux002|dxxpdo[15]~q ;
wire \ux002|dxxpdo[16]~q ;
wire \ux002|dxxpdo[19]~q ;
wire \ux002|dxxpdo[18]~q ;


fskmode_asj_altqmcpipe ux000(
	.pipeline_dffe_10(\ux000|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_9(\ux000|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_8(\ux000|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_7(\ux000|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_6(\ux000|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_5(\ux000|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_12(\ux000|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_11(\ux000|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_24(\ux000|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~q ),
	.pipeline_dffe_101(\ux003|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_91(\ux003|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_81(\ux003|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_71(\ux003|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_61(\ux003|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_51(\ux003|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_4(\ux003|acc|auto_generated|pipeline_dffe[4]~q ),
	.pipeline_dffe_3(\ux003|acc|auto_generated|pipeline_dffe[3]~q ),
	.pipeline_dffe_2(\ux003|acc|auto_generated|pipeline_dffe[2]~q ),
	.pipeline_dffe_1(\ux003|acc|auto_generated|pipeline_dffe[1]~q ),
	.pipeline_dffe_0(\ux003|acc|auto_generated|pipeline_dffe[0]~q ),
	.pipeline_dffe_221(\ux003|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_211(\ux003|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_201(\ux003|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_191(\ux003|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_181(\ux003|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_171(\ux003|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_161(\ux003|acc|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_151(\ux003|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_141(\ux003|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_131(\ux003|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_121(\ux003|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_111(\ux003|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_241(\ux003|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_231(\ux003|acc|auto_generated|pipeline_dffe[23]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

fskmode_asj_nco_fxx ux003(
	.pipeline_dffe_10(\ux003|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_9(\ux003|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_8(\ux003|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_7(\ux003|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_6(\ux003|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_5(\ux003|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_4(\ux003|acc|auto_generated|pipeline_dffe[4]~q ),
	.pipeline_dffe_3(\ux003|acc|auto_generated|pipeline_dffe[3]~q ),
	.pipeline_dffe_2(\ux003|acc|auto_generated|pipeline_dffe[2]~q ),
	.pipeline_dffe_1(\ux003|acc|auto_generated|pipeline_dffe[1]~q ),
	.pipeline_dffe_0(\ux003|acc|auto_generated|pipeline_dffe[0]~q ),
	.pipeline_dffe_22(\ux003|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_21(\ux003|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_20(\ux003|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_19(\ux003|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_18(\ux003|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux003|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_16(\ux003|acc|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_15(\ux003|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux003|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_13(\ux003|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_12(\ux003|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_11(\ux003|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_24(\ux003|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_23(\ux003|acc|auto_generated|pipeline_dffe[23]~q ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken),
	.freq_mod_i_10(freq_mod_i_10),
	.phi_inc_i_10(phi_inc_i_10),
	.freq_mod_i_9(freq_mod_i_9),
	.phi_inc_i_9(phi_inc_i_9),
	.freq_mod_i_8(freq_mod_i_8),
	.phi_inc_i_8(phi_inc_i_8),
	.freq_mod_i_7(freq_mod_i_7),
	.phi_inc_i_7(phi_inc_i_7),
	.freq_mod_i_6(freq_mod_i_6),
	.phi_inc_i_6(phi_inc_i_6),
	.freq_mod_i_5(freq_mod_i_5),
	.phi_inc_i_5(phi_inc_i_5),
	.freq_mod_i_4(freq_mod_i_4),
	.phi_inc_i_4(phi_inc_i_4),
	.freq_mod_i_3(freq_mod_i_3),
	.phi_inc_i_3(phi_inc_i_3),
	.freq_mod_i_2(freq_mod_i_2),
	.phi_inc_i_2(phi_inc_i_2),
	.freq_mod_i_1(freq_mod_i_1),
	.phi_inc_i_1(phi_inc_i_1),
	.freq_mod_i_0(freq_mod_i_0),
	.phi_inc_i_0(phi_inc_i_0),
	.freq_mod_i_22(freq_mod_i_22),
	.phi_inc_i_22(phi_inc_i_22),
	.freq_mod_i_21(freq_mod_i_21),
	.phi_inc_i_21(phi_inc_i_21),
	.freq_mod_i_20(freq_mod_i_20),
	.phi_inc_i_20(phi_inc_i_20),
	.freq_mod_i_19(freq_mod_i_19),
	.phi_inc_i_19(phi_inc_i_19),
	.freq_mod_i_18(freq_mod_i_18),
	.phi_inc_i_18(phi_inc_i_18),
	.freq_mod_i_17(freq_mod_i_17),
	.phi_inc_i_17(phi_inc_i_17),
	.freq_mod_i_16(freq_mod_i_16),
	.phi_inc_i_16(phi_inc_i_16),
	.freq_mod_i_15(freq_mod_i_15),
	.phi_inc_i_15(phi_inc_i_15),
	.freq_mod_i_14(freq_mod_i_14),
	.phi_inc_i_14(phi_inc_i_14),
	.freq_mod_i_13(freq_mod_i_13),
	.phi_inc_i_13(phi_inc_i_13),
	.freq_mod_i_12(freq_mod_i_12),
	.phi_inc_i_12(phi_inc_i_12),
	.freq_mod_i_11(freq_mod_i_11),
	.phi_inc_i_11(phi_inc_i_11),
	.freq_mod_i_24(freq_mod_i_24),
	.phi_inc_i_24(phi_inc_i_24),
	.freq_mod_i_23(freq_mod_i_23),
	.phi_inc_i_23(phi_inc_i_23));

fskmode_segment_arr_tdl tdl(
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.seg_rot_2(\tdl|seg_rot[2]~q ),
	.seg_rot_1(\tdl|seg_rot[1]~q ),
	.seg_rot_0(\tdl|seg_rot[0]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.dxxpdo_19(\ux002|dxxpdo[19]~q ),
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.reset_n(reset_n),
	.clk(clk));

fskmode_asj_gar ux007(
	.rom_add_0(\ux007|rom_add[0]~q ),
	.rom_add_1(\ux007|rom_add[1]~q ),
	.rom_add_2(\ux007|rom_add[2]~q ),
	.rom_add_3(\ux007|rom_add[3]~q ),
	.rom_add_4(\ux007|rom_add[4]~q ),
	.rom_add_5(\ux007|rom_add[5]~q ),
	.rom_add_6(\ux007|rom_add[6]~q ),
	.rom_add_7(\ux007|rom_add[7]~q ),
	.rom_add_8(\ux007|rom_add[8]~q ),
	.rom_add_9(\ux007|rom_add[9]~q ),
	.rom_add_10(\ux007|rom_add[10]~q ),
	.rom_add_11(\ux007|rom_add[11]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.dxxpdo_6(\ux002|dxxpdo[6]~q ),
	.dxxpdo_7(\ux002|dxxpdo[7]~q ),
	.dxxpdo_8(\ux002|dxxpdo[8]~q ),
	.dxxpdo_9(\ux002|dxxpdo[9]~q ),
	.dxxpdo_10(\ux002|dxxpdo[10]~q ),
	.dxxpdo_11(\ux002|dxxpdo[11]~q ),
	.dxxpdo_12(\ux002|dxxpdo[12]~q ),
	.dxxpdo_13(\ux002|dxxpdo[13]~q ),
	.dxxpdo_14(\ux002|dxxpdo[14]~q ),
	.dxxpdo_15(\ux002|dxxpdo[15]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.reset_n(reset_n),
	.clk(clk));

fskmode_asj_dxx ux002(
	.dxxrv_3(\ux001|dxxrv[3]~q ),
	.pipeline_dffe_10(\ux000|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_9(\ux000|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_8(\ux000|acc|auto_generated|pipeline_dffe[8]~q ),
	.dxxrv_2(\ux001|dxxrv[2]~q ),
	.pipeline_dffe_7(\ux000|acc|auto_generated|pipeline_dffe[7]~q ),
	.dxxrv_1(\ux001|dxxrv[1]~q ),
	.pipeline_dffe_6(\ux000|acc|auto_generated|pipeline_dffe[6]~q ),
	.dxxrv_0(\ux001|dxxrv[0]~q ),
	.pipeline_dffe_5(\ux000|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_12(\ux000|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_11(\ux000|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_24(\ux000|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.dxxpdo_6(\ux002|dxxpdo[6]~q ),
	.dxxpdo_7(\ux002|dxxpdo[7]~q ),
	.dxxpdo_8(\ux002|dxxpdo[8]~q ),
	.dxxpdo_9(\ux002|dxxpdo[9]~q ),
	.dxxpdo_10(\ux002|dxxpdo[10]~q ),
	.dxxpdo_11(\ux002|dxxpdo[11]~q ),
	.dxxpdo_12(\ux002|dxxpdo[12]~q ),
	.dxxpdo_13(\ux002|dxxpdo[13]~q ),
	.dxxpdo_14(\ux002|dxxpdo[14]~q ),
	.dxxpdo_15(\ux002|dxxpdo[15]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.dxxpdo_19(\ux002|dxxpdo[19]~q ),
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.reset_n(reset_n),
	.clk(clk));

fskmode_asj_dxx_g ux001(
	.dxxrv_3(\ux001|dxxrv[3]~q ),
	.dxxrv_2(\ux001|dxxrv[2]~q ),
	.dxxrv_1(\ux001|dxxrv[1]~q ),
	.dxxrv_0(\ux001|dxxrv[0]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk));

fskmode_asj_nco_as_m_cen_1 ux0121(
	.q_a_0(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.rom_add_0(\ux007|rom_add[0]~q ),
	.rom_add_1(\ux007|rom_add[1]~q ),
	.rom_add_2(\ux007|rom_add[2]~q ),
	.rom_add_3(\ux007|rom_add[3]~q ),
	.rom_add_4(\ux007|rom_add[4]~q ),
	.rom_add_5(\ux007|rom_add[5]~q ),
	.rom_add_6(\ux007|rom_add[6]~q ),
	.rom_add_7(\ux007|rom_add[7]~q ),
	.rom_add_8(\ux007|rom_add[8]~q ),
	.rom_add_9(\ux007|rom_add[9]~q ),
	.rom_add_10(\ux007|rom_add[10]~q ),
	.rom_add_11(\ux007|rom_add[11]~q ),
	.clk(clk),
	.clken(clken));

fskmode_asj_nco_as_m_cen ux0120(
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.rom_add_0(\ux007|rom_add[0]~q ),
	.rom_add_1(\ux007|rom_add[1]~q ),
	.rom_add_2(\ux007|rom_add[2]~q ),
	.rom_add_3(\ux007|rom_add[3]~q ),
	.rom_add_4(\ux007|rom_add[4]~q ),
	.rom_add_5(\ux007|rom_add[5]~q ),
	.rom_add_6(\ux007|rom_add[6]~q ),
	.rom_add_7(\ux007|rom_add[7]~q ),
	.rom_add_8(\ux007|rom_add[8]~q ),
	.rom_add_9(\ux007|rom_add[9]~q ),
	.rom_add_10(\ux007|rom_add[10]~q ),
	.rom_add_11(\ux007|rom_add[11]~q ),
	.clk(clk),
	.clken(clken));

fskmode_sid_2c_1p sid2c(
	.sin_rom_2c_0(\sid2c|sin_rom_2c[0]~q ),
	.cos_rom_2c_0(\sid2c|cos_rom_2c[0]~q ),
	.sin_rom_2c_1(\sid2c|sin_rom_2c[1]~q ),
	.cos_rom_2c_1(\sid2c|cos_rom_2c[1]~q ),
	.sin_rom_2c_2(\sid2c|sin_rom_2c[2]~q ),
	.cos_rom_2c_2(\sid2c|cos_rom_2c[2]~q ),
	.sin_rom_2c_3(\sid2c|sin_rom_2c[3]~q ),
	.cos_rom_2c_3(\sid2c|cos_rom_2c[3]~q ),
	.sin_rom_2c_4(\sid2c|sin_rom_2c[4]~q ),
	.cos_rom_2c_4(\sid2c|cos_rom_2c[4]~q ),
	.sin_rom_2c_5(\sid2c|sin_rom_2c[5]~q ),
	.cos_rom_2c_5(\sid2c|cos_rom_2c[5]~q ),
	.sin_rom_2c_6(\sid2c|sin_rom_2c[6]~q ),
	.cos_rom_2c_6(\sid2c|cos_rom_2c[6]~q ),
	.sin_rom_2c_7(\sid2c|sin_rom_2c[7]~q ),
	.cos_rom_2c_7(\sid2c|cos_rom_2c[7]~q ),
	.sin_rom_2c_8(\sid2c|sin_rom_2c[8]~q ),
	.cos_rom_2c_8(\sid2c|cos_rom_2c[8]~q ),
	.cos_rom_2c_9(\sid2c|cos_rom_2c[9]~q ),
	.sin_rom_2c_9(\sid2c|sin_rom_2c[9]~q ),
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_01(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_11(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_21(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_31(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_41(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_51(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_61(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_71(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_81(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.cos_rom_d_0(\sid2c|cos_rom_d[0]~q ),
	.sin_rom_d_0(\sid2c|sin_rom_d[0]~q ),
	.cos_rom_d_1(\sid2c|cos_rom_d[1]~q ),
	.sin_rom_d_1(\sid2c|sin_rom_d[1]~q ),
	.cos_rom_d_2(\sid2c|cos_rom_d[2]~q ),
	.sin_rom_d_2(\sid2c|sin_rom_d[2]~q ),
	.cos_rom_d_3(\sid2c|cos_rom_d[3]~q ),
	.sin_rom_d_3(\sid2c|sin_rom_d[3]~q ),
	.cos_rom_d_4(\sid2c|cos_rom_d[4]~q ),
	.sin_rom_d_4(\sid2c|sin_rom_d[4]~q ),
	.cos_rom_d_5(\sid2c|cos_rom_d[5]~q ),
	.sin_rom_d_5(\sid2c|sin_rom_d[5]~q ),
	.cos_rom_d_6(\sid2c|cos_rom_d[6]~q ),
	.sin_rom_d_6(\sid2c|sin_rom_d[6]~q ),
	.cos_rom_d_7(\sid2c|cos_rom_d[7]~q ),
	.sin_rom_d_7(\sid2c|sin_rom_d[7]~q ),
	.cos_rom_d_8(\sid2c|cos_rom_d[8]~q ),
	.sin_rom_d_8(\sid2c|sin_rom_d[8]~q ),
	.reset_n(reset_n),
	.clk(clk));

fskmode_asj_nco_isdr ux710isdr(
	.data_ready1(data_ready),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

fskmode_asj_nco_mob_rw ux122(
	.sin_o_0(\rot|sin_o[0]~q ),
	.sin_o_1(\rot|sin_o[1]~q ),
	.sin_o_2(\rot|sin_o[2]~q ),
	.sin_o_3(\rot|sin_o[3]~q ),
	.sin_o_4(\rot|sin_o[4]~q ),
	.sin_o_5(\rot|sin_o[5]~q ),
	.sin_o_6(\rot|sin_o[6]~q ),
	.sin_o_7(\rot|sin_o[7]~q ),
	.sin_o_8(\rot|sin_o[8]~q ),
	.sin_o_9(\rot|sin_o[9]~q ),
	.data_out_0(data_out_0),
	.data_out_1(data_out_1),
	.data_out_2(data_out_2),
	.data_out_3(data_out_3),
	.data_out_4(data_out_4),
	.data_out_5(data_out_5),
	.data_out_6(data_out_6),
	.data_out_7(data_out_7),
	.data_out_8(data_out_8),
	.data_out_9(data_out_9),
	.data_out_01(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

fskmode_segment_sel rot(
	.sin_o_0(\rot|sin_o[0]~q ),
	.sin_o_1(\rot|sin_o[1]~q ),
	.sin_o_2(\rot|sin_o[2]~q ),
	.sin_o_3(\rot|sin_o[3]~q ),
	.sin_o_4(\rot|sin_o[4]~q ),
	.sin_o_5(\rot|sin_o[5]~q ),
	.sin_o_6(\rot|sin_o[6]~q ),
	.sin_o_7(\rot|sin_o[7]~q ),
	.sin_o_8(\rot|sin_o[8]~q ),
	.sin_o_9(\rot|sin_o[9]~q ),
	.sin_rom_2c_0(\sid2c|sin_rom_2c[0]~q ),
	.cos_rom_2c_0(\sid2c|cos_rom_2c[0]~q ),
	.sin_rom_2c_1(\sid2c|sin_rom_2c[1]~q ),
	.cos_rom_2c_1(\sid2c|cos_rom_2c[1]~q ),
	.sin_rom_2c_2(\sid2c|sin_rom_2c[2]~q ),
	.cos_rom_2c_2(\sid2c|cos_rom_2c[2]~q ),
	.sin_rom_2c_3(\sid2c|sin_rom_2c[3]~q ),
	.cos_rom_2c_3(\sid2c|cos_rom_2c[3]~q ),
	.sin_rom_2c_4(\sid2c|sin_rom_2c[4]~q ),
	.cos_rom_2c_4(\sid2c|cos_rom_2c[4]~q ),
	.sin_rom_2c_5(\sid2c|sin_rom_2c[5]~q ),
	.cos_rom_2c_5(\sid2c|cos_rom_2c[5]~q ),
	.sin_rom_2c_6(\sid2c|sin_rom_2c[6]~q ),
	.cos_rom_2c_6(\sid2c|cos_rom_2c[6]~q ),
	.sin_rom_2c_7(\sid2c|sin_rom_2c[7]~q ),
	.cos_rom_2c_7(\sid2c|cos_rom_2c[7]~q ),
	.sin_rom_2c_8(\sid2c|sin_rom_2c[8]~q ),
	.cos_rom_2c_8(\sid2c|cos_rom_2c[8]~q ),
	.cos_rom_2c_9(\sid2c|cos_rom_2c[9]~q ),
	.sin_rom_2c_9(\sid2c|sin_rom_2c[9]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.seg_rot_2(\tdl|seg_rot[2]~q ),
	.cos_rom_d_0(\sid2c|cos_rom_d[0]~q ),
	.seg_rot_1(\tdl|seg_rot[1]~q ),
	.seg_rot_0(\tdl|seg_rot[0]~q ),
	.sin_rom_d_0(\sid2c|sin_rom_d[0]~q ),
	.cos_rom_d_1(\sid2c|cos_rom_d[1]~q ),
	.sin_rom_d_1(\sid2c|sin_rom_d[1]~q ),
	.cos_rom_d_2(\sid2c|cos_rom_d[2]~q ),
	.sin_rom_d_2(\sid2c|sin_rom_d[2]~q ),
	.cos_rom_d_3(\sid2c|cos_rom_d[3]~q ),
	.sin_rom_d_3(\sid2c|sin_rom_d[3]~q ),
	.cos_rom_d_4(\sid2c|cos_rom_d[4]~q ),
	.sin_rom_d_4(\sid2c|sin_rom_d[4]~q ),
	.cos_rom_d_5(\sid2c|cos_rom_d[5]~q ),
	.sin_rom_d_5(\sid2c|sin_rom_d[5]~q ),
	.cos_rom_d_6(\sid2c|cos_rom_d[6]~q ),
	.sin_rom_d_6(\sid2c|sin_rom_d[6]~q ),
	.cos_rom_d_7(\sid2c|cos_rom_d[7]~q ),
	.sin_rom_d_7(\sid2c|sin_rom_d[7]~q ),
	.cos_rom_d_8(\sid2c|cos_rom_d[8]~q ),
	.sin_rom_d_8(\sid2c|sin_rom_d[8]~q ),
	.reset_n(reset_n),
	.clk(clk));

endmodule

module fskmode_asj_altqmcpipe (
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	pipeline_dffe_101,
	pipeline_dffe_91,
	pipeline_dffe_81,
	pipeline_dffe_71,
	pipeline_dffe_61,
	pipeline_dffe_51,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_0,
	pipeline_dffe_221,
	pipeline_dffe_211,
	pipeline_dffe_201,
	pipeline_dffe_191,
	pipeline_dffe_181,
	pipeline_dffe_171,
	pipeline_dffe_161,
	pipeline_dffe_151,
	pipeline_dffe_141,
	pipeline_dffe_131,
	pipeline_dffe_121,
	pipeline_dffe_111,
	pipeline_dffe_241,
	pipeline_dffe_231,
	data_out_0,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
input 	pipeline_dffe_101;
input 	pipeline_dffe_91;
input 	pipeline_dffe_81;
input 	pipeline_dffe_71;
input 	pipeline_dffe_61;
input 	pipeline_dffe_51;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_2;
input 	pipeline_dffe_1;
input 	pipeline_dffe_0;
input 	pipeline_dffe_221;
input 	pipeline_dffe_211;
input 	pipeline_dffe_201;
input 	pipeline_dffe_191;
input 	pipeline_dffe_181;
input 	pipeline_dffe_171;
input 	pipeline_dffe_161;
input 	pipeline_dffe_151;
input 	pipeline_dffe_141;
input 	pipeline_dffe_131;
input 	pipeline_dffe_121;
input 	pipeline_dffe_111;
input 	pipeline_dffe_241;
input 	pipeline_dffe_231;
input 	data_out_0;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_int_arr_reg[10]~q ;
wire \phi_int_arr_reg[9]~q ;
wire \phi_int_arr_reg[8]~q ;
wire \phi_int_arr_reg[7]~q ;
wire \phi_int_arr_reg[6]~q ;
wire \phi_int_arr_reg[5]~q ;
wire \phi_int_arr_reg[4]~q ;
wire \phi_int_arr_reg[3]~q ;
wire \phi_int_arr_reg[2]~q ;
wire \phi_int_arr_reg[1]~q ;
wire \phi_int_arr_reg[0]~q ;
wire \phi_int_arr_reg[22]~q ;
wire \phi_int_arr_reg[21]~q ;
wire \phi_int_arr_reg[20]~q ;
wire \phi_int_arr_reg[19]~q ;
wire \phi_int_arr_reg[18]~q ;
wire \phi_int_arr_reg[17]~q ;
wire \phi_int_arr_reg[16]~q ;
wire \phi_int_arr_reg[15]~q ;
wire \phi_int_arr_reg[14]~q ;
wire \phi_int_arr_reg[13]~q ;
wire \phi_int_arr_reg[12]~q ;
wire \phi_int_arr_reg[11]~q ;
wire \phi_int_arr_reg~0_combout ;
wire \phi_int_arr_reg~1_combout ;
wire \phi_int_arr_reg~2_combout ;
wire \phi_int_arr_reg~3_combout ;
wire \phi_int_arr_reg~4_combout ;
wire \phi_int_arr_reg~5_combout ;
wire \phi_int_arr_reg~6_combout ;
wire \phi_int_arr_reg~7_combout ;
wire \phi_int_arr_reg~8_combout ;
wire \phi_int_arr_reg~9_combout ;
wire \phi_int_arr_reg~10_combout ;
wire \phi_int_arr_reg~11_combout ;
wire \phi_int_arr_reg~12_combout ;
wire \phi_int_arr_reg~13_combout ;
wire \phi_int_arr_reg~14_combout ;
wire \phi_int_arr_reg~15_combout ;
wire \phi_int_arr_reg~16_combout ;
wire \phi_int_arr_reg~17_combout ;
wire \phi_int_arr_reg~18_combout ;
wire \phi_int_arr_reg~19_combout ;
wire \phi_int_arr_reg~20_combout ;
wire \phi_int_arr_reg~21_combout ;
wire \phi_int_arr_reg~22_combout ;
wire \phi_int_arr_reg[24]~q ;
wire \phi_int_arr_reg[23]~q ;
wire \phi_int_arr_reg~23_combout ;
wire \phi_int_arr_reg~24_combout ;


fskmode_lpm_add_sub_1 acc(
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_23(pipeline_dffe_23),
	.phi_int_arr_reg_10(\phi_int_arr_reg[10]~q ),
	.phi_int_arr_reg_9(\phi_int_arr_reg[9]~q ),
	.phi_int_arr_reg_8(\phi_int_arr_reg[8]~q ),
	.phi_int_arr_reg_7(\phi_int_arr_reg[7]~q ),
	.phi_int_arr_reg_6(\phi_int_arr_reg[6]~q ),
	.phi_int_arr_reg_5(\phi_int_arr_reg[5]~q ),
	.phi_int_arr_reg_4(\phi_int_arr_reg[4]~q ),
	.phi_int_arr_reg_3(\phi_int_arr_reg[3]~q ),
	.phi_int_arr_reg_2(\phi_int_arr_reg[2]~q ),
	.phi_int_arr_reg_1(\phi_int_arr_reg[1]~q ),
	.phi_int_arr_reg_0(\phi_int_arr_reg[0]~q ),
	.phi_int_arr_reg_22(\phi_int_arr_reg[22]~q ),
	.phi_int_arr_reg_21(\phi_int_arr_reg[21]~q ),
	.phi_int_arr_reg_20(\phi_int_arr_reg[20]~q ),
	.phi_int_arr_reg_19(\phi_int_arr_reg[19]~q ),
	.phi_int_arr_reg_18(\phi_int_arr_reg[18]~q ),
	.phi_int_arr_reg_17(\phi_int_arr_reg[17]~q ),
	.phi_int_arr_reg_16(\phi_int_arr_reg[16]~q ),
	.phi_int_arr_reg_15(\phi_int_arr_reg[15]~q ),
	.phi_int_arr_reg_14(\phi_int_arr_reg[14]~q ),
	.phi_int_arr_reg_13(\phi_int_arr_reg[13]~q ),
	.phi_int_arr_reg_12(\phi_int_arr_reg[12]~q ),
	.phi_int_arr_reg_11(\phi_int_arr_reg[11]~q ),
	.phi_int_arr_reg_24(\phi_int_arr_reg[24]~q ),
	.phi_int_arr_reg_23(\phi_int_arr_reg[23]~q ),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas \phi_int_arr_reg[10] (
	.clk(clk),
	.d(\phi_int_arr_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[10]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[10] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[10] .power_up = "low";

dffeas \phi_int_arr_reg[9] (
	.clk(clk),
	.d(\phi_int_arr_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[9]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[9] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[9] .power_up = "low";

dffeas \phi_int_arr_reg[8] (
	.clk(clk),
	.d(\phi_int_arr_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[8]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[8] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[8] .power_up = "low";

dffeas \phi_int_arr_reg[7] (
	.clk(clk),
	.d(\phi_int_arr_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[7]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[7] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[7] .power_up = "low";

dffeas \phi_int_arr_reg[6] (
	.clk(clk),
	.d(\phi_int_arr_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[6]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[6] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[6] .power_up = "low";

dffeas \phi_int_arr_reg[5] (
	.clk(clk),
	.d(\phi_int_arr_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[5]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[5] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[5] .power_up = "low";

dffeas \phi_int_arr_reg[4] (
	.clk(clk),
	.d(\phi_int_arr_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[4]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[4] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[4] .power_up = "low";

dffeas \phi_int_arr_reg[3] (
	.clk(clk),
	.d(\phi_int_arr_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[3]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[3] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[3] .power_up = "low";

dffeas \phi_int_arr_reg[2] (
	.clk(clk),
	.d(\phi_int_arr_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[2]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[2] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[2] .power_up = "low";

dffeas \phi_int_arr_reg[1] (
	.clk(clk),
	.d(\phi_int_arr_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[1]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[1] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[1] .power_up = "low";

dffeas \phi_int_arr_reg[0] (
	.clk(clk),
	.d(\phi_int_arr_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[0]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[0] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[0] .power_up = "low";

dffeas \phi_int_arr_reg[22] (
	.clk(clk),
	.d(\phi_int_arr_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[22]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[22] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[22] .power_up = "low";

dffeas \phi_int_arr_reg[21] (
	.clk(clk),
	.d(\phi_int_arr_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[21]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[21] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[21] .power_up = "low";

dffeas \phi_int_arr_reg[20] (
	.clk(clk),
	.d(\phi_int_arr_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[20]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[20] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[20] .power_up = "low";

dffeas \phi_int_arr_reg[19] (
	.clk(clk),
	.d(\phi_int_arr_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[19]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[19] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[19] .power_up = "low";

dffeas \phi_int_arr_reg[18] (
	.clk(clk),
	.d(\phi_int_arr_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[18]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[18] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[18] .power_up = "low";

dffeas \phi_int_arr_reg[17] (
	.clk(clk),
	.d(\phi_int_arr_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[17]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[17] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[17] .power_up = "low";

dffeas \phi_int_arr_reg[16] (
	.clk(clk),
	.d(\phi_int_arr_reg~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[16]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[16] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[16] .power_up = "low";

dffeas \phi_int_arr_reg[15] (
	.clk(clk),
	.d(\phi_int_arr_reg~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[15]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[15] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[15] .power_up = "low";

dffeas \phi_int_arr_reg[14] (
	.clk(clk),
	.d(\phi_int_arr_reg~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[14]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[14] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[14] .power_up = "low";

dffeas \phi_int_arr_reg[13] (
	.clk(clk),
	.d(\phi_int_arr_reg~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[13]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[13] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[13] .power_up = "low";

dffeas \phi_int_arr_reg[12] (
	.clk(clk),
	.d(\phi_int_arr_reg~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[12]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[12] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[12] .power_up = "low";

dffeas \phi_int_arr_reg[11] (
	.clk(clk),
	.d(\phi_int_arr_reg~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[11]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[11] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[11] .power_up = "low";

cycloneive_lcell_comb \phi_int_arr_reg~0 (
	.dataa(reset_n),
	.datab(pipeline_dffe_101),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~0_combout ),
	.cout());
defparam \phi_int_arr_reg~0 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~1 (
	.dataa(reset_n),
	.datab(pipeline_dffe_91),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~1_combout ),
	.cout());
defparam \phi_int_arr_reg~1 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~2 (
	.dataa(reset_n),
	.datab(pipeline_dffe_81),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~2_combout ),
	.cout());
defparam \phi_int_arr_reg~2 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~3 (
	.dataa(reset_n),
	.datab(pipeline_dffe_71),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~3_combout ),
	.cout());
defparam \phi_int_arr_reg~3 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~4 (
	.dataa(reset_n),
	.datab(pipeline_dffe_61),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~4_combout ),
	.cout());
defparam \phi_int_arr_reg~4 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~5 (
	.dataa(reset_n),
	.datab(pipeline_dffe_51),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~5_combout ),
	.cout());
defparam \phi_int_arr_reg~5 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~6 (
	.dataa(reset_n),
	.datab(pipeline_dffe_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~6_combout ),
	.cout());
defparam \phi_int_arr_reg~6 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~7 (
	.dataa(reset_n),
	.datab(pipeline_dffe_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~7_combout ),
	.cout());
defparam \phi_int_arr_reg~7 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~8 (
	.dataa(reset_n),
	.datab(pipeline_dffe_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~8_combout ),
	.cout());
defparam \phi_int_arr_reg~8 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~9 (
	.dataa(reset_n),
	.datab(pipeline_dffe_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~9_combout ),
	.cout());
defparam \phi_int_arr_reg~9 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~10 (
	.dataa(reset_n),
	.datab(pipeline_dffe_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~10_combout ),
	.cout());
defparam \phi_int_arr_reg~10 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~11 (
	.dataa(reset_n),
	.datab(pipeline_dffe_221),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~11_combout ),
	.cout());
defparam \phi_int_arr_reg~11 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~12 (
	.dataa(reset_n),
	.datab(pipeline_dffe_211),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~12_combout ),
	.cout());
defparam \phi_int_arr_reg~12 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~13 (
	.dataa(reset_n),
	.datab(pipeline_dffe_201),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~13_combout ),
	.cout());
defparam \phi_int_arr_reg~13 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~14 (
	.dataa(reset_n),
	.datab(pipeline_dffe_191),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~14_combout ),
	.cout());
defparam \phi_int_arr_reg~14 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~15 (
	.dataa(reset_n),
	.datab(pipeline_dffe_181),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~15_combout ),
	.cout());
defparam \phi_int_arr_reg~15 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~16 (
	.dataa(reset_n),
	.datab(pipeline_dffe_171),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~16_combout ),
	.cout());
defparam \phi_int_arr_reg~16 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~17 (
	.dataa(reset_n),
	.datab(pipeline_dffe_161),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~17_combout ),
	.cout());
defparam \phi_int_arr_reg~17 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~18 (
	.dataa(reset_n),
	.datab(pipeline_dffe_151),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~18_combout ),
	.cout());
defparam \phi_int_arr_reg~18 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~18 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~19 (
	.dataa(reset_n),
	.datab(pipeline_dffe_141),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~19_combout ),
	.cout());
defparam \phi_int_arr_reg~19 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~19 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~20 (
	.dataa(reset_n),
	.datab(pipeline_dffe_131),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~20_combout ),
	.cout());
defparam \phi_int_arr_reg~20 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~20 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~21 (
	.dataa(reset_n),
	.datab(pipeline_dffe_121),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~21_combout ),
	.cout());
defparam \phi_int_arr_reg~21 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~21 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~22 (
	.dataa(reset_n),
	.datab(pipeline_dffe_111),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~22_combout ),
	.cout());
defparam \phi_int_arr_reg~22 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~22 .sum_lutc_input = "datac";

dffeas \phi_int_arr_reg[24] (
	.clk(clk),
	.d(\phi_int_arr_reg~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[24]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[24] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[24] .power_up = "low";

dffeas \phi_int_arr_reg[23] (
	.clk(clk),
	.d(\phi_int_arr_reg~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[23]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[23] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[23] .power_up = "low";

cycloneive_lcell_comb \phi_int_arr_reg~23 (
	.dataa(reset_n),
	.datab(pipeline_dffe_241),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~23_combout ),
	.cout());
defparam \phi_int_arr_reg~23 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~23 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~24 (
	.dataa(reset_n),
	.datab(pipeline_dffe_231),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~24_combout ),
	.cout());
defparam \phi_int_arr_reg~24 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~24 .sum_lutc_input = "datac";

endmodule

module fskmode_lpm_add_sub_1 (
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_0,
	phi_int_arr_reg_22,
	phi_int_arr_reg_21,
	phi_int_arr_reg_20,
	phi_int_arr_reg_19,
	phi_int_arr_reg_18,
	phi_int_arr_reg_17,
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_24,
	phi_int_arr_reg_23,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_24;
input 	phi_int_arr_reg_23;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_add_sub_15i auto_generated(
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_23(pipeline_dffe_23),
	.phi_int_arr_reg_10(phi_int_arr_reg_10),
	.phi_int_arr_reg_9(phi_int_arr_reg_9),
	.phi_int_arr_reg_8(phi_int_arr_reg_8),
	.phi_int_arr_reg_7(phi_int_arr_reg_7),
	.phi_int_arr_reg_6(phi_int_arr_reg_6),
	.phi_int_arr_reg_5(phi_int_arr_reg_5),
	.phi_int_arr_reg_4(phi_int_arr_reg_4),
	.phi_int_arr_reg_3(phi_int_arr_reg_3),
	.phi_int_arr_reg_2(phi_int_arr_reg_2),
	.phi_int_arr_reg_1(phi_int_arr_reg_1),
	.phi_int_arr_reg_0(phi_int_arr_reg_0),
	.phi_int_arr_reg_22(phi_int_arr_reg_22),
	.phi_int_arr_reg_21(phi_int_arr_reg_21),
	.phi_int_arr_reg_20(phi_int_arr_reg_20),
	.phi_int_arr_reg_19(phi_int_arr_reg_19),
	.phi_int_arr_reg_18(phi_int_arr_reg_18),
	.phi_int_arr_reg_17(phi_int_arr_reg_17),
	.phi_int_arr_reg_16(phi_int_arr_reg_16),
	.phi_int_arr_reg_15(phi_int_arr_reg_15),
	.phi_int_arr_reg_14(phi_int_arr_reg_14),
	.phi_int_arr_reg_13(phi_int_arr_reg_13),
	.phi_int_arr_reg_12(phi_int_arr_reg_12),
	.phi_int_arr_reg_11(phi_int_arr_reg_11),
	.phi_int_arr_reg_24(phi_int_arr_reg_24),
	.phi_int_arr_reg_23(phi_int_arr_reg_23),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module fskmode_add_sub_15i (
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_0,
	phi_int_arr_reg_22,
	phi_int_arr_reg_21,
	phi_int_arr_reg_20,
	phi_int_arr_reg_19,
	phi_int_arr_reg_18,
	phi_int_arr_reg_17,
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_24,
	phi_int_arr_reg_23,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_24;
input 	phi_int_arr_reg_23;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pipeline_dffe[0]~25_combout ;
wire \pipeline_dffe[0]~q ;
wire \pipeline_dffe[0]~26 ;
wire \pipeline_dffe[1]~27_combout ;
wire \pipeline_dffe[1]~q ;
wire \pipeline_dffe[1]~28 ;
wire \pipeline_dffe[2]~29_combout ;
wire \pipeline_dffe[2]~q ;
wire \pipeline_dffe[2]~30 ;
wire \pipeline_dffe[3]~31_combout ;
wire \pipeline_dffe[3]~q ;
wire \pipeline_dffe[3]~32 ;
wire \pipeline_dffe[4]~33_combout ;
wire \pipeline_dffe[4]~q ;
wire \pipeline_dffe[4]~34 ;
wire \pipeline_dffe[5]~36 ;
wire \pipeline_dffe[6]~38 ;
wire \pipeline_dffe[7]~40 ;
wire \pipeline_dffe[8]~42 ;
wire \pipeline_dffe[9]~44 ;
wire \pipeline_dffe[10]~45_combout ;
wire \pipeline_dffe[9]~43_combout ;
wire \pipeline_dffe[8]~41_combout ;
wire \pipeline_dffe[7]~39_combout ;
wire \pipeline_dffe[6]~37_combout ;
wire \pipeline_dffe[5]~35_combout ;
wire \pipeline_dffe[10]~46 ;
wire \pipeline_dffe[11]~48 ;
wire \pipeline_dffe[12]~50 ;
wire \pipeline_dffe[13]~52 ;
wire \pipeline_dffe[14]~54 ;
wire \pipeline_dffe[15]~56 ;
wire \pipeline_dffe[16]~58 ;
wire \pipeline_dffe[17]~60 ;
wire \pipeline_dffe[18]~62 ;
wire \pipeline_dffe[19]~64 ;
wire \pipeline_dffe[20]~66 ;
wire \pipeline_dffe[21]~68 ;
wire \pipeline_dffe[22]~69_combout ;
wire \pipeline_dffe[21]~67_combout ;
wire \pipeline_dffe[20]~65_combout ;
wire \pipeline_dffe[19]~63_combout ;
wire \pipeline_dffe[18]~61_combout ;
wire \pipeline_dffe[17]~59_combout ;
wire \pipeline_dffe[16]~57_combout ;
wire \pipeline_dffe[15]~55_combout ;
wire \pipeline_dffe[14]~53_combout ;
wire \pipeline_dffe[13]~51_combout ;
wire \pipeline_dffe[12]~49_combout ;
wire \pipeline_dffe[11]~47_combout ;
wire \pipeline_dffe[22]~70 ;
wire \pipeline_dffe[23]~72 ;
wire \pipeline_dffe[24]~73_combout ;
wire \pipeline_dffe[23]~71_combout ;


dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~45_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_10),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~43_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_9),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~41_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_8),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~39_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_7),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~37_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_6),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~35_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_5),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

dffeas \pipeline_dffe[22] (
	.clk(clock),
	.d(\pipeline_dffe[22]~69_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_22),
	.prn(vcc));
defparam \pipeline_dffe[22] .is_wysiwyg = "true";
defparam \pipeline_dffe[22] .power_up = "low";

dffeas \pipeline_dffe[21] (
	.clk(clock),
	.d(\pipeline_dffe[21]~67_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_21),
	.prn(vcc));
defparam \pipeline_dffe[21] .is_wysiwyg = "true";
defparam \pipeline_dffe[21] .power_up = "low";

dffeas \pipeline_dffe[20] (
	.clk(clock),
	.d(\pipeline_dffe[20]~65_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_20),
	.prn(vcc));
defparam \pipeline_dffe[20] .is_wysiwyg = "true";
defparam \pipeline_dffe[20] .power_up = "low";

dffeas \pipeline_dffe[19] (
	.clk(clock),
	.d(\pipeline_dffe[19]~63_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_19),
	.prn(vcc));
defparam \pipeline_dffe[19] .is_wysiwyg = "true";
defparam \pipeline_dffe[19] .power_up = "low";

dffeas \pipeline_dffe[18] (
	.clk(clock),
	.d(\pipeline_dffe[18]~61_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_18),
	.prn(vcc));
defparam \pipeline_dffe[18] .is_wysiwyg = "true";
defparam \pipeline_dffe[18] .power_up = "low";

dffeas \pipeline_dffe[17] (
	.clk(clock),
	.d(\pipeline_dffe[17]~59_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_17),
	.prn(vcc));
defparam \pipeline_dffe[17] .is_wysiwyg = "true";
defparam \pipeline_dffe[17] .power_up = "low";

dffeas \pipeline_dffe[16] (
	.clk(clock),
	.d(\pipeline_dffe[16]~57_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_16),
	.prn(vcc));
defparam \pipeline_dffe[16] .is_wysiwyg = "true";
defparam \pipeline_dffe[16] .power_up = "low";

dffeas \pipeline_dffe[15] (
	.clk(clock),
	.d(\pipeline_dffe[15]~55_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_15),
	.prn(vcc));
defparam \pipeline_dffe[15] .is_wysiwyg = "true";
defparam \pipeline_dffe[15] .power_up = "low";

dffeas \pipeline_dffe[14] (
	.clk(clock),
	.d(\pipeline_dffe[14]~53_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_14),
	.prn(vcc));
defparam \pipeline_dffe[14] .is_wysiwyg = "true";
defparam \pipeline_dffe[14] .power_up = "low";

dffeas \pipeline_dffe[13] (
	.clk(clock),
	.d(\pipeline_dffe[13]~51_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_13),
	.prn(vcc));
defparam \pipeline_dffe[13] .is_wysiwyg = "true";
defparam \pipeline_dffe[13] .power_up = "low";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~49_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_12),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~47_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_11),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

dffeas \pipeline_dffe[24] (
	.clk(clock),
	.d(\pipeline_dffe[24]~73_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_24),
	.prn(vcc));
defparam \pipeline_dffe[24] .is_wysiwyg = "true";
defparam \pipeline_dffe[24] .power_up = "low";

dffeas \pipeline_dffe[23] (
	.clk(clock),
	.d(\pipeline_dffe[23]~71_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_23),
	.prn(vcc));
defparam \pipeline_dffe[23] .is_wysiwyg = "true";
defparam \pipeline_dffe[23] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[0]~25 (
	.dataa(\pipeline_dffe[0]~q ),
	.datab(phi_int_arr_reg_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\pipeline_dffe[0]~25_combout ),
	.cout(\pipeline_dffe[0]~26 ));
defparam \pipeline_dffe[0]~25 .lut_mask = 16'h66EE;
defparam \pipeline_dffe[0]~25 .sum_lutc_input = "datac";

dffeas \pipeline_dffe[0] (
	.clk(clock),
	.d(\pipeline_dffe[0]~25_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[0]~q ),
	.prn(vcc));
defparam \pipeline_dffe[0] .is_wysiwyg = "true";
defparam \pipeline_dffe[0] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[1]~27 (
	.dataa(\pipeline_dffe[1]~q ),
	.datab(phi_int_arr_reg_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[0]~26 ),
	.combout(\pipeline_dffe[1]~27_combout ),
	.cout(\pipeline_dffe[1]~28 ));
defparam \pipeline_dffe[1]~27 .lut_mask = 16'h967F;
defparam \pipeline_dffe[1]~27 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[1] (
	.clk(clock),
	.d(\pipeline_dffe[1]~27_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[1]~q ),
	.prn(vcc));
defparam \pipeline_dffe[1] .is_wysiwyg = "true";
defparam \pipeline_dffe[1] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[2]~29 (
	.dataa(\pipeline_dffe[2]~q ),
	.datab(phi_int_arr_reg_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~28 ),
	.combout(\pipeline_dffe[2]~29_combout ),
	.cout(\pipeline_dffe[2]~30 ));
defparam \pipeline_dffe[2]~29 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[2]~29 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[2] (
	.clk(clock),
	.d(\pipeline_dffe[2]~29_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[2]~q ),
	.prn(vcc));
defparam \pipeline_dffe[2] .is_wysiwyg = "true";
defparam \pipeline_dffe[2] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[3]~31 (
	.dataa(\pipeline_dffe[3]~q ),
	.datab(phi_int_arr_reg_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[2]~30 ),
	.combout(\pipeline_dffe[3]~31_combout ),
	.cout(\pipeline_dffe[3]~32 ));
defparam \pipeline_dffe[3]~31 .lut_mask = 16'h967F;
defparam \pipeline_dffe[3]~31 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[3] (
	.clk(clock),
	.d(\pipeline_dffe[3]~31_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[3]~q ),
	.prn(vcc));
defparam \pipeline_dffe[3] .is_wysiwyg = "true";
defparam \pipeline_dffe[3] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[4]~33 (
	.dataa(\pipeline_dffe[4]~q ),
	.datab(phi_int_arr_reg_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[3]~32 ),
	.combout(\pipeline_dffe[4]~33_combout ),
	.cout(\pipeline_dffe[4]~34 ));
defparam \pipeline_dffe[4]~33 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[4]~33 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[4] (
	.clk(clock),
	.d(\pipeline_dffe[4]~33_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[4]~q ),
	.prn(vcc));
defparam \pipeline_dffe[4] .is_wysiwyg = "true";
defparam \pipeline_dffe[4] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[5]~35 (
	.dataa(pipeline_dffe_5),
	.datab(phi_int_arr_reg_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[4]~34 ),
	.combout(\pipeline_dffe[5]~35_combout ),
	.cout(\pipeline_dffe[5]~36 ));
defparam \pipeline_dffe[5]~35 .lut_mask = 16'h967F;
defparam \pipeline_dffe[5]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[6]~37 (
	.dataa(pipeline_dffe_6),
	.datab(phi_int_arr_reg_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~36 ),
	.combout(\pipeline_dffe[6]~37_combout ),
	.cout(\pipeline_dffe[6]~38 ));
defparam \pipeline_dffe[6]~37 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[6]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[7]~39 (
	.dataa(pipeline_dffe_7),
	.datab(phi_int_arr_reg_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~38 ),
	.combout(\pipeline_dffe[7]~39_combout ),
	.cout(\pipeline_dffe[7]~40 ));
defparam \pipeline_dffe[7]~39 .lut_mask = 16'h967F;
defparam \pipeline_dffe[7]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[8]~41 (
	.dataa(pipeline_dffe_8),
	.datab(phi_int_arr_reg_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~40 ),
	.combout(\pipeline_dffe[8]~41_combout ),
	.cout(\pipeline_dffe[8]~42 ));
defparam \pipeline_dffe[8]~41 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[8]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[9]~43 (
	.dataa(pipeline_dffe_9),
	.datab(phi_int_arr_reg_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~42 ),
	.combout(\pipeline_dffe[9]~43_combout ),
	.cout(\pipeline_dffe[9]~44 ));
defparam \pipeline_dffe[9]~43 .lut_mask = 16'h967F;
defparam \pipeline_dffe[9]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[10]~45 (
	.dataa(pipeline_dffe_10),
	.datab(phi_int_arr_reg_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~44 ),
	.combout(\pipeline_dffe[10]~45_combout ),
	.cout(\pipeline_dffe[10]~46 ));
defparam \pipeline_dffe[10]~45 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[10]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[11]~47 (
	.dataa(pipeline_dffe_11),
	.datab(phi_int_arr_reg_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~46 ),
	.combout(\pipeline_dffe[11]~47_combout ),
	.cout(\pipeline_dffe[11]~48 ));
defparam \pipeline_dffe[11]~47 .lut_mask = 16'h967F;
defparam \pipeline_dffe[11]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[12]~49 (
	.dataa(pipeline_dffe_12),
	.datab(phi_int_arr_reg_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~48 ),
	.combout(\pipeline_dffe[12]~49_combout ),
	.cout(\pipeline_dffe[12]~50 ));
defparam \pipeline_dffe[12]~49 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[12]~49 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[13]~51 (
	.dataa(pipeline_dffe_13),
	.datab(phi_int_arr_reg_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[12]~50 ),
	.combout(\pipeline_dffe[13]~51_combout ),
	.cout(\pipeline_dffe[13]~52 ));
defparam \pipeline_dffe[13]~51 .lut_mask = 16'h967F;
defparam \pipeline_dffe[13]~51 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[14]~53 (
	.dataa(pipeline_dffe_14),
	.datab(phi_int_arr_reg_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[13]~52 ),
	.combout(\pipeline_dffe[14]~53_combout ),
	.cout(\pipeline_dffe[14]~54 ));
defparam \pipeline_dffe[14]~53 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[14]~53 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[15]~55 (
	.dataa(pipeline_dffe_15),
	.datab(phi_int_arr_reg_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[14]~54 ),
	.combout(\pipeline_dffe[15]~55_combout ),
	.cout(\pipeline_dffe[15]~56 ));
defparam \pipeline_dffe[15]~55 .lut_mask = 16'h967F;
defparam \pipeline_dffe[15]~55 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[16]~57 (
	.dataa(pipeline_dffe_16),
	.datab(phi_int_arr_reg_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[15]~56 ),
	.combout(\pipeline_dffe[16]~57_combout ),
	.cout(\pipeline_dffe[16]~58 ));
defparam \pipeline_dffe[16]~57 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[16]~57 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[17]~59 (
	.dataa(pipeline_dffe_17),
	.datab(phi_int_arr_reg_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[16]~58 ),
	.combout(\pipeline_dffe[17]~59_combout ),
	.cout(\pipeline_dffe[17]~60 ));
defparam \pipeline_dffe[17]~59 .lut_mask = 16'h967F;
defparam \pipeline_dffe[17]~59 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[18]~61 (
	.dataa(pipeline_dffe_18),
	.datab(phi_int_arr_reg_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[17]~60 ),
	.combout(\pipeline_dffe[18]~61_combout ),
	.cout(\pipeline_dffe[18]~62 ));
defparam \pipeline_dffe[18]~61 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[18]~61 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[19]~63 (
	.dataa(pipeline_dffe_19),
	.datab(phi_int_arr_reg_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[18]~62 ),
	.combout(\pipeline_dffe[19]~63_combout ),
	.cout(\pipeline_dffe[19]~64 ));
defparam \pipeline_dffe[19]~63 .lut_mask = 16'h967F;
defparam \pipeline_dffe[19]~63 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[20]~65 (
	.dataa(pipeline_dffe_20),
	.datab(phi_int_arr_reg_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[19]~64 ),
	.combout(\pipeline_dffe[20]~65_combout ),
	.cout(\pipeline_dffe[20]~66 ));
defparam \pipeline_dffe[20]~65 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[20]~65 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[21]~67 (
	.dataa(pipeline_dffe_21),
	.datab(phi_int_arr_reg_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[20]~66 ),
	.combout(\pipeline_dffe[21]~67_combout ),
	.cout(\pipeline_dffe[21]~68 ));
defparam \pipeline_dffe[21]~67 .lut_mask = 16'h967F;
defparam \pipeline_dffe[21]~67 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[22]~69 (
	.dataa(pipeline_dffe_22),
	.datab(phi_int_arr_reg_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[21]~68 ),
	.combout(\pipeline_dffe[22]~69_combout ),
	.cout(\pipeline_dffe[22]~70 ));
defparam \pipeline_dffe[22]~69 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[22]~69 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[23]~71 (
	.dataa(pipeline_dffe_23),
	.datab(phi_int_arr_reg_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[22]~70 ),
	.combout(\pipeline_dffe[23]~71_combout ),
	.cout(\pipeline_dffe[23]~72 ));
defparam \pipeline_dffe[23]~71 .lut_mask = 16'h967F;
defparam \pipeline_dffe[23]~71 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[24]~73 (
	.dataa(pipeline_dffe_24),
	.datab(phi_int_arr_reg_24),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[23]~72 ),
	.combout(\pipeline_dffe[24]~73_combout ),
	.cout());
defparam \pipeline_dffe[24]~73 .lut_mask = 16'h9696;
defparam \pipeline_dffe[24]~73 .sum_lutc_input = "cin";

endmodule

module fskmode_asj_dxx (
	dxxrv_3,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	dxxrv_2,
	pipeline_dffe_7,
	dxxrv_1,
	pipeline_dffe_6,
	dxxrv_0,
	pipeline_dffe_5,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	data_out_0,
	dxxpdo_5,
	dxxpdo_17,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_19,
	dxxpdo_18,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	dxxrv_3;
input 	pipeline_dffe_10;
input 	pipeline_dffe_9;
input 	pipeline_dffe_8;
input 	dxxrv_2;
input 	pipeline_dffe_7;
input 	dxxrv_1;
input 	pipeline_dffe_6;
input 	dxxrv_0;
input 	pipeline_dffe_5;
input 	pipeline_dffe_22;
input 	pipeline_dffe_21;
input 	pipeline_dffe_20;
input 	pipeline_dffe_19;
input 	pipeline_dffe_18;
input 	pipeline_dffe_17;
input 	pipeline_dffe_16;
input 	pipeline_dffe_15;
input 	pipeline_dffe_14;
input 	pipeline_dffe_13;
input 	pipeline_dffe_12;
input 	pipeline_dffe_11;
input 	pipeline_dffe_24;
input 	pipeline_dffe_23;
input 	data_out_0;
output 	dxxpdo_5;
output 	dxxpdo_17;
output 	dxxpdo_6;
output 	dxxpdo_7;
output 	dxxpdo_8;
output 	dxxpdo_9;
output 	dxxpdo_10;
output 	dxxpdo_11;
output 	dxxpdo_12;
output 	dxxpdo_13;
output 	dxxpdo_14;
output 	dxxpdo_15;
output 	dxxpdo_16;
output 	dxxpdo_19;
output 	dxxpdo_18;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_dither_out_w[5]~16_cout ;
wire \phi_dither_out_w[5]~18_cout ;
wire \phi_dither_out_w[5]~20_cout ;
wire \phi_dither_out_w[5]~22_cout ;
wire \phi_dither_out_w[5]~24_cout ;
wire \phi_dither_out_w[5]~25_combout ;
wire \phi_dither_out_w[5]~q ;
wire \dxxpdo~0_combout ;
wire \phi_dither_out_w[5]~26 ;
wire \phi_dither_out_w[6]~28 ;
wire \phi_dither_out_w[7]~30 ;
wire \phi_dither_out_w[8]~32 ;
wire \phi_dither_out_w[9]~34 ;
wire \phi_dither_out_w[10]~36 ;
wire \phi_dither_out_w[11]~38 ;
wire \phi_dither_out_w[12]~40 ;
wire \phi_dither_out_w[13]~42 ;
wire \phi_dither_out_w[14]~44 ;
wire \phi_dither_out_w[15]~46 ;
wire \phi_dither_out_w[16]~48 ;
wire \phi_dither_out_w[17]~49_combout ;
wire \phi_dither_out_w[17]~q ;
wire \dxxpdo~1_combout ;
wire \phi_dither_out_w[6]~27_combout ;
wire \phi_dither_out_w[6]~q ;
wire \dxxpdo~2_combout ;
wire \phi_dither_out_w[7]~29_combout ;
wire \phi_dither_out_w[7]~q ;
wire \dxxpdo~3_combout ;
wire \phi_dither_out_w[8]~31_combout ;
wire \phi_dither_out_w[8]~q ;
wire \dxxpdo~4_combout ;
wire \phi_dither_out_w[9]~33_combout ;
wire \phi_dither_out_w[9]~q ;
wire \dxxpdo~5_combout ;
wire \phi_dither_out_w[10]~35_combout ;
wire \phi_dither_out_w[10]~q ;
wire \dxxpdo~6_combout ;
wire \phi_dither_out_w[11]~37_combout ;
wire \phi_dither_out_w[11]~q ;
wire \dxxpdo~7_combout ;
wire \phi_dither_out_w[12]~39_combout ;
wire \phi_dither_out_w[12]~q ;
wire \dxxpdo~8_combout ;
wire \phi_dither_out_w[13]~41_combout ;
wire \phi_dither_out_w[13]~q ;
wire \dxxpdo~9_combout ;
wire \phi_dither_out_w[14]~43_combout ;
wire \phi_dither_out_w[14]~q ;
wire \dxxpdo~10_combout ;
wire \phi_dither_out_w[15]~45_combout ;
wire \phi_dither_out_w[15]~q ;
wire \dxxpdo~11_combout ;
wire \phi_dither_out_w[16]~47_combout ;
wire \phi_dither_out_w[16]~q ;
wire \dxxpdo~12_combout ;
wire \phi_dither_out_w[17]~50 ;
wire \phi_dither_out_w[18]~52 ;
wire \phi_dither_out_w[19]~53_combout ;
wire \phi_dither_out_w[19]~q ;
wire \dxxpdo~13_combout ;
wire \phi_dither_out_w[18]~51_combout ;
wire \phi_dither_out_w[18]~q ;
wire \dxxpdo~14_combout ;


dffeas \dxxpdo[5] (
	.clk(clk),
	.d(\dxxpdo~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_5),
	.prn(vcc));
defparam \dxxpdo[5] .is_wysiwyg = "true";
defparam \dxxpdo[5] .power_up = "low";

dffeas \dxxpdo[17] (
	.clk(clk),
	.d(\dxxpdo~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_17),
	.prn(vcc));
defparam \dxxpdo[17] .is_wysiwyg = "true";
defparam \dxxpdo[17] .power_up = "low";

dffeas \dxxpdo[6] (
	.clk(clk),
	.d(\dxxpdo~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_6),
	.prn(vcc));
defparam \dxxpdo[6] .is_wysiwyg = "true";
defparam \dxxpdo[6] .power_up = "low";

dffeas \dxxpdo[7] (
	.clk(clk),
	.d(\dxxpdo~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_7),
	.prn(vcc));
defparam \dxxpdo[7] .is_wysiwyg = "true";
defparam \dxxpdo[7] .power_up = "low";

dffeas \dxxpdo[8] (
	.clk(clk),
	.d(\dxxpdo~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_8),
	.prn(vcc));
defparam \dxxpdo[8] .is_wysiwyg = "true";
defparam \dxxpdo[8] .power_up = "low";

dffeas \dxxpdo[9] (
	.clk(clk),
	.d(\dxxpdo~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_9),
	.prn(vcc));
defparam \dxxpdo[9] .is_wysiwyg = "true";
defparam \dxxpdo[9] .power_up = "low";

dffeas \dxxpdo[10] (
	.clk(clk),
	.d(\dxxpdo~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_10),
	.prn(vcc));
defparam \dxxpdo[10] .is_wysiwyg = "true";
defparam \dxxpdo[10] .power_up = "low";

dffeas \dxxpdo[11] (
	.clk(clk),
	.d(\dxxpdo~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_11),
	.prn(vcc));
defparam \dxxpdo[11] .is_wysiwyg = "true";
defparam \dxxpdo[11] .power_up = "low";

dffeas \dxxpdo[12] (
	.clk(clk),
	.d(\dxxpdo~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_12),
	.prn(vcc));
defparam \dxxpdo[12] .is_wysiwyg = "true";
defparam \dxxpdo[12] .power_up = "low";

dffeas \dxxpdo[13] (
	.clk(clk),
	.d(\dxxpdo~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_13),
	.prn(vcc));
defparam \dxxpdo[13] .is_wysiwyg = "true";
defparam \dxxpdo[13] .power_up = "low";

dffeas \dxxpdo[14] (
	.clk(clk),
	.d(\dxxpdo~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_14),
	.prn(vcc));
defparam \dxxpdo[14] .is_wysiwyg = "true";
defparam \dxxpdo[14] .power_up = "low";

dffeas \dxxpdo[15] (
	.clk(clk),
	.d(\dxxpdo~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_15),
	.prn(vcc));
defparam \dxxpdo[15] .is_wysiwyg = "true";
defparam \dxxpdo[15] .power_up = "low";

dffeas \dxxpdo[16] (
	.clk(clk),
	.d(\dxxpdo~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_16),
	.prn(vcc));
defparam \dxxpdo[16] .is_wysiwyg = "true";
defparam \dxxpdo[16] .power_up = "low";

dffeas \dxxpdo[19] (
	.clk(clk),
	.d(\dxxpdo~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_19),
	.prn(vcc));
defparam \dxxpdo[19] .is_wysiwyg = "true";
defparam \dxxpdo[19] .power_up = "low";

dffeas \dxxpdo[18] (
	.clk(clk),
	.d(\dxxpdo~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_18),
	.prn(vcc));
defparam \dxxpdo[18] .is_wysiwyg = "true";
defparam \dxxpdo[18] .power_up = "low";

cycloneive_lcell_comb \phi_dither_out_w[5]~16 (
	.dataa(dxxrv_0),
	.datab(pipeline_dffe_5),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\phi_dither_out_w[5]~16_cout ));
defparam \phi_dither_out_w[5]~16 .lut_mask = 16'h00EE;
defparam \phi_dither_out_w[5]~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_dither_out_w[5]~18 (
	.dataa(dxxrv_1),
	.datab(pipeline_dffe_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~16_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~18_cout ));
defparam \phi_dither_out_w[5]~18 .lut_mask = 16'h007F;
defparam \phi_dither_out_w[5]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~20 (
	.dataa(dxxrv_2),
	.datab(pipeline_dffe_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~18_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~20_cout ));
defparam \phi_dither_out_w[5]~20 .lut_mask = 16'h00EF;
defparam \phi_dither_out_w[5]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~22 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~20_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~22_cout ));
defparam \phi_dither_out_w[5]~22 .lut_mask = 16'h007F;
defparam \phi_dither_out_w[5]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~24 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~22_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~24_cout ));
defparam \phi_dither_out_w[5]~24 .lut_mask = 16'h00EF;
defparam \phi_dither_out_w[5]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~25 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~24_cout ),
	.combout(\phi_dither_out_w[5]~25_combout ),
	.cout(\phi_dither_out_w[5]~26 ));
defparam \phi_dither_out_w[5]~25 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[5]~25 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[5] (
	.clk(clk),
	.d(\phi_dither_out_w[5]~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[5]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[5] .is_wysiwyg = "true";
defparam \phi_dither_out_w[5] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~0 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~0_combout ),
	.cout());
defparam \dxxpdo~0 .lut_mask = 16'hEEEE;
defparam \dxxpdo~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_dither_out_w[6]~27 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~26 ),
	.combout(\phi_dither_out_w[6]~27_combout ),
	.cout(\phi_dither_out_w[6]~28 ));
defparam \phi_dither_out_w[6]~27 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[6]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[7]~29 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[6]~28 ),
	.combout(\phi_dither_out_w[7]~29_combout ),
	.cout(\phi_dither_out_w[7]~30 ));
defparam \phi_dither_out_w[7]~29 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[7]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[8]~31 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[7]~30 ),
	.combout(\phi_dither_out_w[8]~31_combout ),
	.cout(\phi_dither_out_w[8]~32 ));
defparam \phi_dither_out_w[8]~31 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[8]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[9]~33 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[8]~32 ),
	.combout(\phi_dither_out_w[9]~33_combout ),
	.cout(\phi_dither_out_w[9]~34 ));
defparam \phi_dither_out_w[9]~33 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[9]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[10]~35 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[9]~34 ),
	.combout(\phi_dither_out_w[10]~35_combout ),
	.cout(\phi_dither_out_w[10]~36 ));
defparam \phi_dither_out_w[10]~35 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[10]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[11]~37 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[10]~36 ),
	.combout(\phi_dither_out_w[11]~37_combout ),
	.cout(\phi_dither_out_w[11]~38 ));
defparam \phi_dither_out_w[11]~37 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[11]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[12]~39 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[11]~38 ),
	.combout(\phi_dither_out_w[12]~39_combout ),
	.cout(\phi_dither_out_w[12]~40 ));
defparam \phi_dither_out_w[12]~39 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[12]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[13]~41 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[12]~40 ),
	.combout(\phi_dither_out_w[13]~41_combout ),
	.cout(\phi_dither_out_w[13]~42 ));
defparam \phi_dither_out_w[13]~41 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[13]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[14]~43 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[13]~42 ),
	.combout(\phi_dither_out_w[14]~43_combout ),
	.cout(\phi_dither_out_w[14]~44 ));
defparam \phi_dither_out_w[14]~43 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[14]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[15]~45 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[14]~44 ),
	.combout(\phi_dither_out_w[15]~45_combout ),
	.cout(\phi_dither_out_w[15]~46 ));
defparam \phi_dither_out_w[15]~45 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[15]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[16]~47 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[15]~46 ),
	.combout(\phi_dither_out_w[16]~47_combout ),
	.cout(\phi_dither_out_w[16]~48 ));
defparam \phi_dither_out_w[16]~47 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[16]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[17]~49 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[16]~48 ),
	.combout(\phi_dither_out_w[17]~49_combout ),
	.cout(\phi_dither_out_w[17]~50 ));
defparam \phi_dither_out_w[17]~49 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[17]~49 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[17] (
	.clk(clk),
	.d(\phi_dither_out_w[17]~49_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[17]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[17] .is_wysiwyg = "true";
defparam \phi_dither_out_w[17] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~1 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[17]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~1_combout ),
	.cout());
defparam \dxxpdo~1 .lut_mask = 16'hEEEE;
defparam \dxxpdo~1 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[6] (
	.clk(clk),
	.d(\phi_dither_out_w[6]~27_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[6]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[6] .is_wysiwyg = "true";
defparam \phi_dither_out_w[6] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~2 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~2_combout ),
	.cout());
defparam \dxxpdo~2 .lut_mask = 16'hEEEE;
defparam \dxxpdo~2 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[7] (
	.clk(clk),
	.d(\phi_dither_out_w[7]~29_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[7]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[7] .is_wysiwyg = "true";
defparam \phi_dither_out_w[7] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~3 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~3_combout ),
	.cout());
defparam \dxxpdo~3 .lut_mask = 16'hEEEE;
defparam \dxxpdo~3 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[8] (
	.clk(clk),
	.d(\phi_dither_out_w[8]~31_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[8]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[8] .is_wysiwyg = "true";
defparam \phi_dither_out_w[8] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~4 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~4_combout ),
	.cout());
defparam \dxxpdo~4 .lut_mask = 16'hEEEE;
defparam \dxxpdo~4 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[9] (
	.clk(clk),
	.d(\phi_dither_out_w[9]~33_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[9]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[9] .is_wysiwyg = "true";
defparam \phi_dither_out_w[9] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~5 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~5_combout ),
	.cout());
defparam \dxxpdo~5 .lut_mask = 16'hEEEE;
defparam \dxxpdo~5 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[10] (
	.clk(clk),
	.d(\phi_dither_out_w[10]~35_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[10]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[10] .is_wysiwyg = "true";
defparam \phi_dither_out_w[10] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~6 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~6_combout ),
	.cout());
defparam \dxxpdo~6 .lut_mask = 16'hEEEE;
defparam \dxxpdo~6 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[11] (
	.clk(clk),
	.d(\phi_dither_out_w[11]~37_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[11]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[11] .is_wysiwyg = "true";
defparam \phi_dither_out_w[11] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~7 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~7_combout ),
	.cout());
defparam \dxxpdo~7 .lut_mask = 16'hEEEE;
defparam \dxxpdo~7 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[12] (
	.clk(clk),
	.d(\phi_dither_out_w[12]~39_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[12]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[12] .is_wysiwyg = "true";
defparam \phi_dither_out_w[12] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~8 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~8_combout ),
	.cout());
defparam \dxxpdo~8 .lut_mask = 16'hEEEE;
defparam \dxxpdo~8 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[13] (
	.clk(clk),
	.d(\phi_dither_out_w[13]~41_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[13]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[13] .is_wysiwyg = "true";
defparam \phi_dither_out_w[13] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~9 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~9_combout ),
	.cout());
defparam \dxxpdo~9 .lut_mask = 16'hEEEE;
defparam \dxxpdo~9 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[14] (
	.clk(clk),
	.d(\phi_dither_out_w[14]~43_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[14]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[14] .is_wysiwyg = "true";
defparam \phi_dither_out_w[14] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~10 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[14]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~10_combout ),
	.cout());
defparam \dxxpdo~10 .lut_mask = 16'hEEEE;
defparam \dxxpdo~10 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[15] (
	.clk(clk),
	.d(\phi_dither_out_w[15]~45_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[15]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[15] .is_wysiwyg = "true";
defparam \phi_dither_out_w[15] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~11 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[15]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~11_combout ),
	.cout());
defparam \dxxpdo~11 .lut_mask = 16'hEEEE;
defparam \dxxpdo~11 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[16] (
	.clk(clk),
	.d(\phi_dither_out_w[16]~47_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[16]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[16] .is_wysiwyg = "true";
defparam \phi_dither_out_w[16] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~12 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[16]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~12_combout ),
	.cout());
defparam \dxxpdo~12 .lut_mask = 16'hEEEE;
defparam \dxxpdo~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_dither_out_w[18]~51 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[17]~50 ),
	.combout(\phi_dither_out_w[18]~51_combout ),
	.cout(\phi_dither_out_w[18]~52 ));
defparam \phi_dither_out_w[18]~51 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[18]~51 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[19]~53 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_24),
	.datac(gnd),
	.datad(gnd),
	.cin(\phi_dither_out_w[18]~52 ),
	.combout(\phi_dither_out_w[19]~53_combout ),
	.cout());
defparam \phi_dither_out_w[19]~53 .lut_mask = 16'h9696;
defparam \phi_dither_out_w[19]~53 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[19] (
	.clk(clk),
	.d(\phi_dither_out_w[19]~53_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[19]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[19] .is_wysiwyg = "true";
defparam \phi_dither_out_w[19] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~13 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[19]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~13_combout ),
	.cout());
defparam \dxxpdo~13 .lut_mask = 16'hEEEE;
defparam \dxxpdo~13 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[18] (
	.clk(clk),
	.d(\phi_dither_out_w[18]~51_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[18]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[18] .is_wysiwyg = "true";
defparam \phi_dither_out_w[18] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~14 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[18]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~14_combout ),
	.cout());
defparam \dxxpdo~14 .lut_mask = 16'hEEEE;
defparam \dxxpdo~14 .sum_lutc_input = "datac";

endmodule

module fskmode_asj_dxx_g (
	dxxrv_3,
	dxxrv_2,
	dxxrv_1,
	dxxrv_0,
	data_out_0,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	dxxrv_3;
output 	dxxrv_2;
output 	dxxrv_1;
output 	dxxrv_0;
input 	data_out_0;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lsfr_reg~16_combout ;
wire \lsfr_reg[0]~q ;
wire \lsfr_reg~15_combout ;
wire \lsfr_reg[1]~q ;
wire \lsfr_reg~14_combout ;
wire \lsfr_reg[2]~q ;
wire \lsfr_reg~13_combout ;
wire \lsfr_reg[3]~q ;
wire \lsfr_reg~12_combout ;
wire \lsfr_reg[4]~q ;
wire \lsfr_reg~11_combout ;
wire \lsfr_reg[5]~q ;
wire \lsfr_reg~10_combout ;
wire \lsfr_reg[6]~q ;
wire \lsfr_reg~9_combout ;
wire \lsfr_reg[7]~q ;
wire \lsfr_reg~8_combout ;
wire \lsfr_reg[8]~q ;
wire \lsfr_reg~7_combout ;
wire \lsfr_reg[9]~q ;
wire \lsfr_reg~6_combout ;
wire \lsfr_reg[10]~q ;
wire \lsfr_reg~5_combout ;
wire \lsfr_reg[11]~q ;
wire \lsfr_reg~4_combout ;
wire \lsfr_reg[12]~q ;
wire \lsfr_reg~3_combout ;
wire \lsfr_reg[13]~q ;
wire \lsfr_reg~2_combout ;
wire \lsfr_reg[14]~q ;
wire \lsfr_reg~1_combout ;
wire \lsfr_reg[15]~q ;
wire \Add0~0_combout ;
wire \Add0~1_combout ;
wire \Add0~2_combout ;
wire \lsfr_reg~0_combout ;


dffeas \dxxrv[3] (
	.clk(clk),
	.d(\Add0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_3),
	.prn(vcc));
defparam \dxxrv[3] .is_wysiwyg = "true";
defparam \dxxrv[3] .power_up = "low";

dffeas \dxxrv[2] (
	.clk(clk),
	.d(\Add0~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_2),
	.prn(vcc));
defparam \dxxrv[2] .is_wysiwyg = "true";
defparam \dxxrv[2] .power_up = "low";

dffeas \dxxrv[1] (
	.clk(clk),
	.d(\Add0~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_1),
	.prn(vcc));
defparam \dxxrv[1] .is_wysiwyg = "true";
defparam \dxxrv[1] .power_up = "low";

dffeas \dxxrv[0] (
	.clk(clk),
	.d(\lsfr_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_0),
	.prn(vcc));
defparam \dxxrv[0] .is_wysiwyg = "true";
defparam \dxxrv[0] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~16 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(\lsfr_reg[14]~q ),
	.datac(\lsfr_reg[12]~q ),
	.datad(\lsfr_reg[3]~q ),
	.cin(gnd),
	.combout(\lsfr_reg~16_combout ),
	.cout());
defparam \lsfr_reg~16 .lut_mask = 16'h6996;
defparam \lsfr_reg~16 .sum_lutc_input = "datac";

dffeas \lsfr_reg[0] (
	.clk(clk),
	.d(\lsfr_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(data_out_0),
	.q(\lsfr_reg[0]~q ),
	.prn(vcc));
defparam \lsfr_reg[0] .is_wysiwyg = "true";
defparam \lsfr_reg[0] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~15 (
	.dataa(reset_n),
	.datab(\lsfr_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~15_combout ),
	.cout());
defparam \lsfr_reg~15 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~15 .sum_lutc_input = "datac";

dffeas \lsfr_reg[1] (
	.clk(clk),
	.d(\lsfr_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[1]~q ),
	.prn(vcc));
defparam \lsfr_reg[1] .is_wysiwyg = "true";
defparam \lsfr_reg[1] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~14 (
	.dataa(\lsfr_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~14_combout ),
	.cout());
defparam \lsfr_reg~14 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~14 .sum_lutc_input = "datac";

dffeas \lsfr_reg[2] (
	.clk(clk),
	.d(\lsfr_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[2]~q ),
	.prn(vcc));
defparam \lsfr_reg[2] .is_wysiwyg = "true";
defparam \lsfr_reg[2] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~13 (
	.dataa(\lsfr_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~13_combout ),
	.cout());
defparam \lsfr_reg~13 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~13 .sum_lutc_input = "datac";

dffeas \lsfr_reg[3] (
	.clk(clk),
	.d(\lsfr_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[3]~q ),
	.prn(vcc));
defparam \lsfr_reg[3] .is_wysiwyg = "true";
defparam \lsfr_reg[3] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~12 (
	.dataa(\lsfr_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~12_combout ),
	.cout());
defparam \lsfr_reg~12 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~12 .sum_lutc_input = "datac";

dffeas \lsfr_reg[4] (
	.clk(clk),
	.d(\lsfr_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[4]~q ),
	.prn(vcc));
defparam \lsfr_reg[4] .is_wysiwyg = "true";
defparam \lsfr_reg[4] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~11 (
	.dataa(reset_n),
	.datab(\lsfr_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~11_combout ),
	.cout());
defparam \lsfr_reg~11 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~11 .sum_lutc_input = "datac";

dffeas \lsfr_reg[5] (
	.clk(clk),
	.d(\lsfr_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[5]~q ),
	.prn(vcc));
defparam \lsfr_reg[5] .is_wysiwyg = "true";
defparam \lsfr_reg[5] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~10 (
	.dataa(\lsfr_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~10_combout ),
	.cout());
defparam \lsfr_reg~10 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~10 .sum_lutc_input = "datac";

dffeas \lsfr_reg[6] (
	.clk(clk),
	.d(\lsfr_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[6]~q ),
	.prn(vcc));
defparam \lsfr_reg[6] .is_wysiwyg = "true";
defparam \lsfr_reg[6] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~9 (
	.dataa(\lsfr_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~9_combout ),
	.cout());
defparam \lsfr_reg~9 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~9 .sum_lutc_input = "datac";

dffeas \lsfr_reg[7] (
	.clk(clk),
	.d(\lsfr_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[7]~q ),
	.prn(vcc));
defparam \lsfr_reg[7] .is_wysiwyg = "true";
defparam \lsfr_reg[7] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~8 (
	.dataa(reset_n),
	.datab(\lsfr_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~8_combout ),
	.cout());
defparam \lsfr_reg~8 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~8 .sum_lutc_input = "datac";

dffeas \lsfr_reg[8] (
	.clk(clk),
	.d(\lsfr_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[8]~q ),
	.prn(vcc));
defparam \lsfr_reg[8] .is_wysiwyg = "true";
defparam \lsfr_reg[8] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~7 (
	.dataa(\lsfr_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~7_combout ),
	.cout());
defparam \lsfr_reg~7 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~7 .sum_lutc_input = "datac";

dffeas \lsfr_reg[9] (
	.clk(clk),
	.d(\lsfr_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[9]~q ),
	.prn(vcc));
defparam \lsfr_reg[9] .is_wysiwyg = "true";
defparam \lsfr_reg[9] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~6 (
	.dataa(reset_n),
	.datab(\lsfr_reg[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~6_combout ),
	.cout());
defparam \lsfr_reg~6 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~6 .sum_lutc_input = "datac";

dffeas \lsfr_reg[10] (
	.clk(clk),
	.d(\lsfr_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[10]~q ),
	.prn(vcc));
defparam \lsfr_reg[10] .is_wysiwyg = "true";
defparam \lsfr_reg[10] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~5 (
	.dataa(\lsfr_reg[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~5_combout ),
	.cout());
defparam \lsfr_reg~5 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~5 .sum_lutc_input = "datac";

dffeas \lsfr_reg[11] (
	.clk(clk),
	.d(\lsfr_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[11]~q ),
	.prn(vcc));
defparam \lsfr_reg[11] .is_wysiwyg = "true";
defparam \lsfr_reg[11] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~4 (
	.dataa(\lsfr_reg[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~4_combout ),
	.cout());
defparam \lsfr_reg~4 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~4 .sum_lutc_input = "datac";

dffeas \lsfr_reg[12] (
	.clk(clk),
	.d(\lsfr_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[12]~q ),
	.prn(vcc));
defparam \lsfr_reg[12] .is_wysiwyg = "true";
defparam \lsfr_reg[12] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~3 (
	.dataa(reset_n),
	.datab(\lsfr_reg[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~3_combout ),
	.cout());
defparam \lsfr_reg~3 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~3 .sum_lutc_input = "datac";

dffeas \lsfr_reg[13] (
	.clk(clk),
	.d(\lsfr_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[13]~q ),
	.prn(vcc));
defparam \lsfr_reg[13] .is_wysiwyg = "true";
defparam \lsfr_reg[13] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~2 (
	.dataa(reset_n),
	.datab(\lsfr_reg[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~2_combout ),
	.cout());
defparam \lsfr_reg~2 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~2 .sum_lutc_input = "datac";

dffeas \lsfr_reg[14] (
	.clk(clk),
	.d(\lsfr_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[14]~q ),
	.prn(vcc));
defparam \lsfr_reg[14] .is_wysiwyg = "true";
defparam \lsfr_reg[14] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~1 (
	.dataa(\lsfr_reg[14]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~1_combout ),
	.cout());
defparam \lsfr_reg~1 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~1 .sum_lutc_input = "datac";

dffeas \lsfr_reg[15] (
	.clk(clk),
	.d(\lsfr_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[15]~q ),
	.prn(vcc));
defparam \lsfr_reg[15] .is_wysiwyg = "true";
defparam \lsfr_reg[15] .power_up = "low";

cycloneive_lcell_comb \Add0~0 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(\lsfr_reg[14]~q ),
	.datac(\lsfr_reg[13]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout());
defparam \Add0~0 .lut_mask = 16'hBFFF;
defparam \Add0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add0~1 (
	.dataa(\lsfr_reg[14]~q ),
	.datab(\lsfr_reg[15]~q ),
	.datac(\lsfr_reg[13]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\Add0~1_combout ),
	.cout());
defparam \Add0~1 .lut_mask = 16'h6996;
defparam \Add0~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add0~2 (
	.dataa(gnd),
	.datab(\lsfr_reg[13]~q ),
	.datac(\lsfr_reg[15]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\Add0~2_combout ),
	.cout());
defparam \Add0~2 .lut_mask = 16'hC33C;
defparam \Add0~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \lsfr_reg~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\lsfr_reg[15]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\lsfr_reg~0_combout ),
	.cout());
defparam \lsfr_reg~0 .lut_mask = 16'h0FF0;
defparam \lsfr_reg~0 .sum_lutc_input = "datac";

endmodule

module fskmode_asj_gar (
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	data_out_0,
	dxxpdo_5,
	dxxpdo_17,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	rom_add_0;
output 	rom_add_1;
output 	rom_add_2;
output 	rom_add_3;
output 	rom_add_4;
output 	rom_add_5;
output 	rom_add_6;
output 	rom_add_7;
output 	rom_add_8;
output 	rom_add_9;
output 	rom_add_10;
output 	rom_add_11;
input 	data_out_0;
input 	dxxpdo_5;
input 	dxxpdo_17;
input 	dxxpdo_6;
input 	dxxpdo_7;
input 	dxxpdo_8;
input 	dxxpdo_9;
input 	dxxpdo_10;
input 	dxxpdo_11;
input 	dxxpdo_12;
input 	dxxpdo_13;
input 	dxxpdo_14;
input 	dxxpdo_15;
input 	dxxpdo_16;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \rom_add~0_combout ;
wire \rom_add~1_combout ;
wire \rom_add~2_combout ;
wire \rom_add~3_combout ;
wire \rom_add~4_combout ;
wire \rom_add~5_combout ;
wire \rom_add~6_combout ;
wire \rom_add~7_combout ;
wire \rom_add~8_combout ;
wire \rom_add~9_combout ;
wire \rom_add~10_combout ;
wire \rom_add~11_combout ;


dffeas \rom_add[0] (
	.clk(clk),
	.d(\rom_add~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_0),
	.prn(vcc));
defparam \rom_add[0] .is_wysiwyg = "true";
defparam \rom_add[0] .power_up = "low";

dffeas \rom_add[1] (
	.clk(clk),
	.d(\rom_add~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_1),
	.prn(vcc));
defparam \rom_add[1] .is_wysiwyg = "true";
defparam \rom_add[1] .power_up = "low";

dffeas \rom_add[2] (
	.clk(clk),
	.d(\rom_add~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_2),
	.prn(vcc));
defparam \rom_add[2] .is_wysiwyg = "true";
defparam \rom_add[2] .power_up = "low";

dffeas \rom_add[3] (
	.clk(clk),
	.d(\rom_add~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_3),
	.prn(vcc));
defparam \rom_add[3] .is_wysiwyg = "true";
defparam \rom_add[3] .power_up = "low";

dffeas \rom_add[4] (
	.clk(clk),
	.d(\rom_add~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_4),
	.prn(vcc));
defparam \rom_add[4] .is_wysiwyg = "true";
defparam \rom_add[4] .power_up = "low";

dffeas \rom_add[5] (
	.clk(clk),
	.d(\rom_add~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_5),
	.prn(vcc));
defparam \rom_add[5] .is_wysiwyg = "true";
defparam \rom_add[5] .power_up = "low";

dffeas \rom_add[6] (
	.clk(clk),
	.d(\rom_add~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_6),
	.prn(vcc));
defparam \rom_add[6] .is_wysiwyg = "true";
defparam \rom_add[6] .power_up = "low";

dffeas \rom_add[7] (
	.clk(clk),
	.d(\rom_add~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_7),
	.prn(vcc));
defparam \rom_add[7] .is_wysiwyg = "true";
defparam \rom_add[7] .power_up = "low";

dffeas \rom_add[8] (
	.clk(clk),
	.d(\rom_add~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_8),
	.prn(vcc));
defparam \rom_add[8] .is_wysiwyg = "true";
defparam \rom_add[8] .power_up = "low";

dffeas \rom_add[9] (
	.clk(clk),
	.d(\rom_add~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_9),
	.prn(vcc));
defparam \rom_add[9] .is_wysiwyg = "true";
defparam \rom_add[9] .power_up = "low";

dffeas \rom_add[10] (
	.clk(clk),
	.d(\rom_add~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_10),
	.prn(vcc));
defparam \rom_add[10] .is_wysiwyg = "true";
defparam \rom_add[10] .power_up = "low";

dffeas \rom_add[11] (
	.clk(clk),
	.d(\rom_add~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_11),
	.prn(vcc));
defparam \rom_add[11] .is_wysiwyg = "true";
defparam \rom_add[11] .power_up = "low";

cycloneive_lcell_comb \rom_add~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_5),
	.datad(dxxpdo_17),
	.cin(gnd),
	.combout(\rom_add~0_combout ),
	.cout());
defparam \rom_add~0 .lut_mask = 16'h0FF0;
defparam \rom_add~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_6),
	.cin(gnd),
	.combout(\rom_add~1_combout ),
	.cout());
defparam \rom_add~1 .lut_mask = 16'h0FF0;
defparam \rom_add~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_7),
	.cin(gnd),
	.combout(\rom_add~2_combout ),
	.cout());
defparam \rom_add~2 .lut_mask = 16'h0FF0;
defparam \rom_add~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_8),
	.cin(gnd),
	.combout(\rom_add~3_combout ),
	.cout());
defparam \rom_add~3 .lut_mask = 16'h0FF0;
defparam \rom_add~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_9),
	.cin(gnd),
	.combout(\rom_add~4_combout ),
	.cout());
defparam \rom_add~4 .lut_mask = 16'h0FF0;
defparam \rom_add~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_10),
	.cin(gnd),
	.combout(\rom_add~5_combout ),
	.cout());
defparam \rom_add~5 .lut_mask = 16'h0FF0;
defparam \rom_add~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_11),
	.cin(gnd),
	.combout(\rom_add~6_combout ),
	.cout());
defparam \rom_add~6 .lut_mask = 16'h0FF0;
defparam \rom_add~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_12),
	.cin(gnd),
	.combout(\rom_add~7_combout ),
	.cout());
defparam \rom_add~7 .lut_mask = 16'h0FF0;
defparam \rom_add~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_13),
	.cin(gnd),
	.combout(\rom_add~8_combout ),
	.cout());
defparam \rom_add~8 .lut_mask = 16'h0FF0;
defparam \rom_add~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_14),
	.cin(gnd),
	.combout(\rom_add~9_combout ),
	.cout());
defparam \rom_add~9 .lut_mask = 16'h0FF0;
defparam \rom_add~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_15),
	.cin(gnd),
	.combout(\rom_add~10_combout ),
	.cout());
defparam \rom_add~10 .lut_mask = 16'h0FF0;
defparam \rom_add~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_17),
	.datad(dxxpdo_16),
	.cin(gnd),
	.combout(\rom_add~11_combout ),
	.cout());
defparam \rom_add~11 .lut_mask = 16'h0FF0;
defparam \rom_add~11 .sum_lutc_input = "datac";

endmodule

module fskmode_asj_nco_as_m_cen (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
input 	rom_add_0;
input 	rom_add_1;
input 	rom_add_2;
input 	rom_add_3;
input 	rom_add_4;
input 	rom_add_5;
input 	rom_add_6;
input 	rom_add_7;
input 	rom_add_8;
input 	rom_add_9;
input 	rom_add_10;
input 	rom_add_11;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_altsyncram_1 altsyncram_component0(
	.q_a({q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_11,rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module fskmode_altsyncram_1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[11:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_altsyncram_f4a1 auto_generated(
	.q_a({q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module fskmode_altsyncram_f4a1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[11:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

cycloneive_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk0_input_clock_enable = "ena0";
defparam ram_block1a0.clk0_output_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 12;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 4095;
defparam ram_block1a0.port_a_logical_ram_depth = 4096;
defparam ram_block1a0.port_a_logical_ram_width = 9;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init1 = 2048'hFFE0003FFF0001FFF8001FFF8001FFF8000FFFC000FFFC001FFF8001FFF8001FFF8003FFF0003FFE0007FFE000FFFC001FFF8003FFE0007FFC001FFF8003FFE000FFFC001FFF0007FFC001FFF0007FFC001FFF0007FFC003FFE000FFF8003FFC001FFF000FFF8003FFC001FFE000FFF0007FF8003FFC003FFE001FFE000FFF000FFF8007FF8007FF8003FFC003FFC003FFC003FFC003FFC003FFC003FFC003FFC003FFC003FF8007FF8007FF800FFF000FFF001FFE001FFC003FFC007FF800FFF001FFE001FFC003FF8007FF000FFE003FFC007FF800FFE001FFC007FF800FFE001FFC007FF000FFE003FF800FFF001FFC007FF001FFE003FF800FFE003FF800;
defparam ram_block1a0.mem_init0 = 2048'hFFE003FF800FFE003FF800FFE003FF800FFE003FF800FFE007FF001FFC007FF001FF800FFE003FF801FFC007FF001FF800FFE007FF001FFC00FFE003FF001FFC00FFE003FF001FFC00FFE007FF001FF800FFC007FF003FF801FFC00FFE007FF003FF801FFC007FE007FF003FF801FFC00FFE007FF003FF801FF800FFC007FE007FF003FF801FF800FFC007FE007FF003FF001FF801FFC00FFC007FE007FF003FF001FF801FFC00FFC007FE007FE003FF003FF801FF801FFC00FFC00FFE007FE003FF003FF001FF801FF801FFC00FFC00FFE007FE007FF003FF003FF001FF801FF800FFC00FFC00FFE007FE007FE003FF003FF001FF801FF801FFC00FFC00FFC0;

cycloneive_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk0_input_clock_enable = "ena0";
defparam ram_block1a1.clk0_output_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 12;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 4095;
defparam ram_block1a1.port_a_logical_ram_depth = 4096;
defparam ram_block1a1.port_a_logical_ram_width = 9;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init1 = 2048'h0000003FFFFFFE0000001FFFFFFE0000000FFFFFFF0000001FFFFFFE0000001FFFFFFC0000003FFFFFF8000000FFFFFFE0000003FFFFFF8000001FFFFFFC000000FFFFFFE0000007FFFFFE0000007FFFFFE0000007FFFFFC000000FFFFFFC000001FFFFFF0000003FFFFFE000000FFFFFF8000003FFFFFC000001FFFFFF000000FFFFFF8000007FFFFFC000003FFFFFC000003FFFFFC000003FFFFFC000003FFFFFC000003FFFFF8000007FFFFF000000FFFFFE000001FFFFFC000007FFFFF000001FFFFFE000003FFFFF800000FFFFFC000007FFFFF000001FFFFF800000FFFFFE000007FFFFF000003FFFFF000001FFFFF800001FFFFFC00000FFFFFC00000;
defparam ram_block1a1.mem_init0 = 2048'hFFFFFC00000FFFFFC00000FFFFFC00000FFFFFC00000FFFFF800001FFFFF800001FFFFF000003FFFFE000007FFFFE00000FFFFF800001FFFFF000003FFFFE00000FFFFFC00001FFFFF000007FFFFE00000FFFFF800003FFFFE00000FFFFF800003FFFFE000007FFFF800003FFFFE00000FFFFF800003FFFFE00000FFFFF800007FFFFC00001FFFFF000007FFFF800003FFFFE00001FFFFF000007FFFF800003FFFFE00001FFFFF000007FFFF800003FFFFC00001FFFFE00000FFFFF000007FFFFC00003FFFFE00001FFFFE00000FFFFF000007FFFF800003FFFFC00001FFFFE00000FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFE00000FFFFF0000;

cycloneive_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk0_input_clock_enable = "ena0";
defparam ram_block1a2.clk0_output_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 12;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 4095;
defparam ram_block1a2.port_a_logical_ram_depth = 4096;
defparam ram_block1a2.port_a_logical_ram_width = 9;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init1 = 2048'h0000003FFFFFFFFFFFFFE00000000000000FFFFFFFFFFFFFE00000000000001FFFFFFFFFFFFFC0000000000000FFFFFFFFFFFFFC0000000000001FFFFFFFFFFFFF00000000000007FFFFFFFFFFFF80000000000007FFFFFFFFFFFF0000000000001FFFFFFFFFFFFC000000000000FFFFFFFFFFFFC000000000001FFFFFFFFFFFF0000000000007FFFFFFFFFFFC000000000003FFFFFFFFFFFC000000000003FFFFFFFFFFFC000000000007FFFFFFFFFFF000000000001FFFFFFFFFFF800000000001FFFFFFFFFFFC00000000000FFFFFFFFFFF800000000001FFFFFFFFFFF000000000007FFFFFFFFFFC00000000001FFFFFFFFFFE00000000000FFFFFFFFFFF;
defparam ram_block1a2.mem_init0 = 2048'h00000000000FFFFFFFFFFF00000000000FFFFFFFFFFF00000000001FFFFFFFFFFE00000000003FFFFFFFFFF80000000000FFFFFFFFFFE00000000003FFFFFFFFFF00000000001FFFFFFFFFF80000000000FFFFFFFFFFC0000000000FFFFFFFFFFC00000000007FFFFFFFFFC0000000000FFFFFFFFFFC0000000000FFFFFFFFFF80000000001FFFFFFFFFF80000000003FFFFFFFFFE00000000007FFFFFFFFFC0000000001FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFF000000000;

cycloneive_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk0_input_clock_enable = "ena0";
defparam ram_block1a3.clk0_output_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 12;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 4095;
defparam ram_block1a3.port_a_logical_ram_depth = 4096;
defparam ram_block1a3.port_a_logical_ram_width = 9;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init1 = 2048'hFFFFFFC0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFFFFFFF00000000000000000000001FFFFFFFFFFFFFFFFFFFFFF80000000000000000000001FFFFFFFFFFFFFFFFFFFFFF00000000000;
defparam ram_block1a3.mem_init0 = 2048'h00000000000FFFFFFFFFFFFFFFFFFFFFF0000000000000000000001FFFFFFFFFFFFFFFFFFFFFC000000000000000000000FFFFFFFFFFFFFFFFFFFFFC000000000000000000001FFFFFFFFFFFFFFFFFFFFF000000000000000000000FFFFFFFFFFFFFFFFFFFFF800000000000000000000FFFFFFFFFFFFFFFFFFFFF000000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000003FFFFFFFFFFFFFFFFFFFF000000000000000000003FFFFFFFFFFFFFFFFFFFF000000000000000000003FFFFFFFFFFFFFFFFFFFF000000000000000000007FFFFFFFFFFFFFFFFFFFE0000000000000000000;

cycloneive_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk0_input_clock_enable = "ena0";
defparam ram_block1a4.clk0_output_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 12;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 4095;
defparam ram_block1a4.port_a_logical_ram_depth = 4096;
defparam ram_block1a4.port_a_logical_ram_width = 9;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init1 = 2048'h00000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000;
defparam ram_block1a4.mem_init0 = 2048'h00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk0_input_clock_enable = "ena0";
defparam ram_block1a5.clk0_output_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 12;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 4095;
defparam ram_block1a5.port_a_logical_ram_depth = 4096;
defparam ram_block1a5.port_a_logical_ram_width = 9;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a5.mem_init0 = 2048'h00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk0_input_clock_enable = "ena0";
defparam ram_block1a6.clk0_output_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 12;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 4095;
defparam ram_block1a6.port_a_logical_ram_depth = 4096;
defparam ram_block1a6.port_a_logical_ram_width = 9;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init0 = 2048'hFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk0_input_clock_enable = "ena0";
defparam ram_block1a7.clk0_output_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 12;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 4095;
defparam ram_block1a7.port_a_logical_ram_depth = 4096;
defparam ram_block1a7.port_a_logical_ram_width = 9;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init1 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk0_input_clock_enable = "ena0";
defparam ram_block1a8.clk0_output_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "fskmode_nco_ii_0_sin.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_f4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 12;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 4095;
defparam ram_block1a8.port_a_logical_ram_depth = 4096;
defparam ram_block1a8.port_a_logical_ram_width = 9;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a8.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

endmodule

module fskmode_asj_nco_as_m_cen_1 (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
input 	rom_add_0;
input 	rom_add_1;
input 	rom_add_2;
input 	rom_add_3;
input 	rom_add_4;
input 	rom_add_5;
input 	rom_add_6;
input 	rom_add_7;
input 	rom_add_8;
input 	rom_add_9;
input 	rom_add_10;
input 	rom_add_11;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_altsyncram_2 altsyncram_component0(
	.q_a({q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_11,rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module fskmode_altsyncram_2 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[11:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_altsyncram_a4a1 auto_generated(
	.q_a({q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module fskmode_altsyncram_a4a1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[11:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

cycloneive_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk0_input_clock_enable = "ena0";
defparam ram_block1a0.clk0_output_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 12;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 4095;
defparam ram_block1a0.port_a_logical_ram_depth = 4096;
defparam ram_block1a0.port_a_logical_ram_width = 9;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init1 = 2048'hC000FFFE0007FFF0001FFF8000FFFE0003FFF0001FFFC0007FFF0001FFFC0003FFF8000FFFE0001FFFC0003FFF80007FFF0000FFFF0000FFFE0001FFFE0001FFFE0000FFFF0000FFFF00007FFF80003FFFC0001FFFF00007FFF80003FFFE00007FFFC0001FFFF00003FFFE00007FFFC0000FFFFC0000FFFFC0000FFFFC00007FFFE00007FFFF00001FFFF80000FFFFE00003FFFFC00007FFFF00000FFFFF00001FFFFE00001FFFFF00000FFFFF800007FFFFC00001FFFFF000007FFFFC00000FFFFFC00000FFFFFC00000FFFFFC000007FFFFF000001FFFFFC000007FFFFF8000007FFFFF8000007FFFFFC000001FFFFFF0000007FFFFFE0000007FFFFFE0000;
defparam ram_block1a0.mem_init0 = 2048'h003FFFFFF8000000FFFFFFF0000000FFFFFFF80000007FFFFFFE00000007FFFFFFE00000003FFFFFFF800000007FFFFFFF800000003FFFFFFFF000000003FFFFFFFF8000000007FFFFFFFFC000000000FFFFFFFFFE0000000001FFFFFFFFFF00000000003FFFFFFFFFFC00000000000FFFFFFFFFFFE000000000000FFFFFFFFFFFFF00000000000001FFFFFFFFFFFFFF8000000000000001FFFFFFFFFFFFFFFFC000000000000000001FFFFFFFFFFFFFFFFFFFF800000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk0_input_clock_enable = "ena0";
defparam ram_block1a1.clk0_output_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 12;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 4095;
defparam ram_block1a1.port_a_logical_ram_depth = 4096;
defparam ram_block1a1.port_a_logical_ram_width = 9;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init1 = 2048'h3FFFFFFE0000000FFFFFFF80000001FFFFFFF00000003FFFFFFF00000003FFFFFFF80000001FFFFFFFC00000007FFFFFFF00000000FFFFFFFE00000001FFFFFFFE00000000FFFFFFFF000000007FFFFFFFC00000000FFFFFFFF800000001FFFFFFFFC00000000FFFFFFFFE000000003FFFFFFFFC000000003FFFFFFFFC000000001FFFFFFFFF0000000007FFFFFFFFE0000000003FFFFFFFFF0000000000FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFF00000000003FFFFFFFFFFC00000000003FFFFFFFFFFC00000000000FFFFFFFFFFFC000000000007FFFFFFFFFFF8000000000003FFFFFFFFFFFF0000000000001FFFFFFFFFFFFE0000;
defparam ram_block1a1.mem_init0 = 2048'h0000000007FFFFFFFFFFFFF000000000000007FFFFFFFFFFFFFE000000000000001FFFFFFFFFFFFFFF80000000000000007FFFFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFFFFFFFC0000000000000000001FFFFFFFFFFFFFFFFFFFF0000000000000000000003FFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk0_input_clock_enable = "ena0";
defparam ram_block1a2.clk0_output_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 12;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 4095;
defparam ram_block1a2.port_a_logical_ram_depth = 4096;
defparam ram_block1a2.port_a_logical_ram_width = 9;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init1 = 2048'h00000001FFFFFFFFFFFFFF800000000000000FFFFFFFFFFFFFFF0000000000000007FFFFFFFFFFFFFFC000000000000000FFFFFFFFFFFFFFFE0000000000000001FFFFFFFFFFFFFFFF00000000000000003FFFFFFFFFFFFFFFF800000000000000003FFFFFFFFFFFFFFFFE000000000000000003FFFFFFFFFFFFFFFFFC000000000000000000FFFFFFFFFFFFFFFFFFE0000000000000000000FFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFFF0000000000000000000003FFFFFFFFFFFFFFFFFFFFFC00000000000000000000003FFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFE0000;
defparam ram_block1a2.mem_init0 = 2048'h00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk0_input_clock_enable = "ena0";
defparam ram_block1a3.clk0_output_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 12;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 4095;
defparam ram_block1a3.port_a_logical_ram_depth = 4096;
defparam ram_block1a3.port_a_logical_ram_width = 9;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000001FFFF;
defparam ram_block1a3.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk0_input_clock_enable = "ena0";
defparam ram_block1a4.clk0_output_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 12;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 4095;
defparam ram_block1a4.port_a_logical_ram_depth = 4096;
defparam ram_block1a4.port_a_logical_ram_width = 9;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init1 = 2048'h00000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a4.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk0_input_clock_enable = "ena0";
defparam ram_block1a5.clk0_output_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 12;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 4095;
defparam ram_block1a5.port_a_logical_ram_depth = 4096;
defparam ram_block1a5.port_a_logical_ram_width = 9;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a5.mem_init0 = 2048'h0000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk0_input_clock_enable = "ena0";
defparam ram_block1a6.clk0_output_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 12;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 4095;
defparam ram_block1a6.port_a_logical_ram_depth = 4096;
defparam ram_block1a6.port_a_logical_ram_width = 9;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk0_input_clock_enable = "ena0";
defparam ram_block1a7.clk0_output_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 12;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 4095;
defparam ram_block1a7.port_a_logical_ram_depth = 4096;
defparam ram_block1a7.port_a_logical_ram_width = 9;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk0_input_clock_enable = "ena0";
defparam ram_block1a8.clk0_output_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "fskmode_nco_ii_0_cos.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "fskmode_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_a4a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 12;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 4095;
defparam ram_block1a8.port_a_logical_ram_depth = 4096;
defparam ram_block1a8.port_a_logical_ram_width = 9;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a8.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

endmodule

module fskmode_asj_nco_fxx (
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_0,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	reset_n,
	clk,
	clken,
	freq_mod_i_10,
	phi_inc_i_10,
	freq_mod_i_9,
	phi_inc_i_9,
	freq_mod_i_8,
	phi_inc_i_8,
	freq_mod_i_7,
	phi_inc_i_7,
	freq_mod_i_6,
	phi_inc_i_6,
	freq_mod_i_5,
	phi_inc_i_5,
	freq_mod_i_4,
	phi_inc_i_4,
	freq_mod_i_3,
	phi_inc_i_3,
	freq_mod_i_2,
	phi_inc_i_2,
	freq_mod_i_1,
	phi_inc_i_1,
	freq_mod_i_0,
	phi_inc_i_0,
	freq_mod_i_22,
	phi_inc_i_22,
	freq_mod_i_21,
	phi_inc_i_21,
	freq_mod_i_20,
	phi_inc_i_20,
	freq_mod_i_19,
	phi_inc_i_19,
	freq_mod_i_18,
	phi_inc_i_18,
	freq_mod_i_17,
	phi_inc_i_17,
	freq_mod_i_16,
	phi_inc_i_16,
	freq_mod_i_15,
	phi_inc_i_15,
	freq_mod_i_14,
	phi_inc_i_14,
	freq_mod_i_13,
	phi_inc_i_13,
	freq_mod_i_12,
	phi_inc_i_12,
	freq_mod_i_11,
	phi_inc_i_11,
	freq_mod_i_24,
	phi_inc_i_24,
	freq_mod_i_23,
	phi_inc_i_23)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_2;
output 	pipeline_dffe_1;
output 	pipeline_dffe_0;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
input 	reset_n;
input 	clk;
input 	clken;
input 	freq_mod_i_10;
input 	phi_inc_i_10;
input 	freq_mod_i_9;
input 	phi_inc_i_9;
input 	freq_mod_i_8;
input 	phi_inc_i_8;
input 	freq_mod_i_7;
input 	phi_inc_i_7;
input 	freq_mod_i_6;
input 	phi_inc_i_6;
input 	freq_mod_i_5;
input 	phi_inc_i_5;
input 	freq_mod_i_4;
input 	phi_inc_i_4;
input 	freq_mod_i_3;
input 	phi_inc_i_3;
input 	freq_mod_i_2;
input 	phi_inc_i_2;
input 	freq_mod_i_1;
input 	phi_inc_i_1;
input 	freq_mod_i_0;
input 	phi_inc_i_0;
input 	freq_mod_i_22;
input 	phi_inc_i_22;
input 	freq_mod_i_21;
input 	phi_inc_i_21;
input 	freq_mod_i_20;
input 	phi_inc_i_20;
input 	freq_mod_i_19;
input 	phi_inc_i_19;
input 	freq_mod_i_18;
input 	phi_inc_i_18;
input 	freq_mod_i_17;
input 	phi_inc_i_17;
input 	freq_mod_i_16;
input 	phi_inc_i_16;
input 	freq_mod_i_15;
input 	phi_inc_i_15;
input 	freq_mod_i_14;
input 	phi_inc_i_14;
input 	freq_mod_i_13;
input 	phi_inc_i_13;
input 	freq_mod_i_12;
input 	phi_inc_i_12;
input 	freq_mod_i_11;
input 	phi_inc_i_11;
input 	freq_mod_i_24;
input 	phi_inc_i_24;
input 	freq_mod_i_23;
input 	phi_inc_i_23;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_lpm_add_sub_2 acc(
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_23(pipeline_dffe_23),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken),
	.freq_mod_i_10(freq_mod_i_10),
	.phi_inc_i_10(phi_inc_i_10),
	.freq_mod_i_9(freq_mod_i_9),
	.phi_inc_i_9(phi_inc_i_9),
	.freq_mod_i_8(freq_mod_i_8),
	.phi_inc_i_8(phi_inc_i_8),
	.freq_mod_i_7(freq_mod_i_7),
	.phi_inc_i_7(phi_inc_i_7),
	.freq_mod_i_6(freq_mod_i_6),
	.phi_inc_i_6(phi_inc_i_6),
	.freq_mod_i_5(freq_mod_i_5),
	.phi_inc_i_5(phi_inc_i_5),
	.freq_mod_i_4(freq_mod_i_4),
	.phi_inc_i_4(phi_inc_i_4),
	.freq_mod_i_3(freq_mod_i_3),
	.phi_inc_i_3(phi_inc_i_3),
	.freq_mod_i_2(freq_mod_i_2),
	.phi_inc_i_2(phi_inc_i_2),
	.freq_mod_i_1(freq_mod_i_1),
	.phi_inc_i_1(phi_inc_i_1),
	.freq_mod_i_0(freq_mod_i_0),
	.phi_inc_i_0(phi_inc_i_0),
	.freq_mod_i_22(freq_mod_i_22),
	.phi_inc_i_22(phi_inc_i_22),
	.freq_mod_i_21(freq_mod_i_21),
	.phi_inc_i_21(phi_inc_i_21),
	.freq_mod_i_20(freq_mod_i_20),
	.phi_inc_i_20(phi_inc_i_20),
	.freq_mod_i_19(freq_mod_i_19),
	.phi_inc_i_19(phi_inc_i_19),
	.freq_mod_i_18(freq_mod_i_18),
	.phi_inc_i_18(phi_inc_i_18),
	.freq_mod_i_17(freq_mod_i_17),
	.phi_inc_i_17(phi_inc_i_17),
	.freq_mod_i_16(freq_mod_i_16),
	.phi_inc_i_16(phi_inc_i_16),
	.freq_mod_i_15(freq_mod_i_15),
	.phi_inc_i_15(phi_inc_i_15),
	.freq_mod_i_14(freq_mod_i_14),
	.phi_inc_i_14(phi_inc_i_14),
	.freq_mod_i_13(freq_mod_i_13),
	.phi_inc_i_13(phi_inc_i_13),
	.freq_mod_i_12(freq_mod_i_12),
	.phi_inc_i_12(phi_inc_i_12),
	.freq_mod_i_11(freq_mod_i_11),
	.phi_inc_i_11(phi_inc_i_11),
	.freq_mod_i_24(freq_mod_i_24),
	.phi_inc_i_24(phi_inc_i_24),
	.freq_mod_i_23(freq_mod_i_23),
	.phi_inc_i_23(phi_inc_i_23));

endmodule

module fskmode_lpm_add_sub_2 (
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_0,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	reset_n,
	clock,
	clken,
	freq_mod_i_10,
	phi_inc_i_10,
	freq_mod_i_9,
	phi_inc_i_9,
	freq_mod_i_8,
	phi_inc_i_8,
	freq_mod_i_7,
	phi_inc_i_7,
	freq_mod_i_6,
	phi_inc_i_6,
	freq_mod_i_5,
	phi_inc_i_5,
	freq_mod_i_4,
	phi_inc_i_4,
	freq_mod_i_3,
	phi_inc_i_3,
	freq_mod_i_2,
	phi_inc_i_2,
	freq_mod_i_1,
	phi_inc_i_1,
	freq_mod_i_0,
	phi_inc_i_0,
	freq_mod_i_22,
	phi_inc_i_22,
	freq_mod_i_21,
	phi_inc_i_21,
	freq_mod_i_20,
	phi_inc_i_20,
	freq_mod_i_19,
	phi_inc_i_19,
	freq_mod_i_18,
	phi_inc_i_18,
	freq_mod_i_17,
	phi_inc_i_17,
	freq_mod_i_16,
	phi_inc_i_16,
	freq_mod_i_15,
	phi_inc_i_15,
	freq_mod_i_14,
	phi_inc_i_14,
	freq_mod_i_13,
	phi_inc_i_13,
	freq_mod_i_12,
	phi_inc_i_12,
	freq_mod_i_11,
	phi_inc_i_11,
	freq_mod_i_24,
	phi_inc_i_24,
	freq_mod_i_23,
	phi_inc_i_23)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_2;
output 	pipeline_dffe_1;
output 	pipeline_dffe_0;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
input 	reset_n;
input 	clock;
input 	clken;
input 	freq_mod_i_10;
input 	phi_inc_i_10;
input 	freq_mod_i_9;
input 	phi_inc_i_9;
input 	freq_mod_i_8;
input 	phi_inc_i_8;
input 	freq_mod_i_7;
input 	phi_inc_i_7;
input 	freq_mod_i_6;
input 	phi_inc_i_6;
input 	freq_mod_i_5;
input 	phi_inc_i_5;
input 	freq_mod_i_4;
input 	phi_inc_i_4;
input 	freq_mod_i_3;
input 	phi_inc_i_3;
input 	freq_mod_i_2;
input 	phi_inc_i_2;
input 	freq_mod_i_1;
input 	phi_inc_i_1;
input 	freq_mod_i_0;
input 	phi_inc_i_0;
input 	freq_mod_i_22;
input 	phi_inc_i_22;
input 	freq_mod_i_21;
input 	phi_inc_i_21;
input 	freq_mod_i_20;
input 	phi_inc_i_20;
input 	freq_mod_i_19;
input 	phi_inc_i_19;
input 	freq_mod_i_18;
input 	phi_inc_i_18;
input 	freq_mod_i_17;
input 	phi_inc_i_17;
input 	freq_mod_i_16;
input 	phi_inc_i_16;
input 	freq_mod_i_15;
input 	phi_inc_i_15;
input 	freq_mod_i_14;
input 	phi_inc_i_14;
input 	freq_mod_i_13;
input 	phi_inc_i_13;
input 	freq_mod_i_12;
input 	phi_inc_i_12;
input 	freq_mod_i_11;
input 	phi_inc_i_11;
input 	freq_mod_i_24;
input 	phi_inc_i_24;
input 	freq_mod_i_23;
input 	phi_inc_i_23;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_add_sub_a8h auto_generated(
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_23(pipeline_dffe_23),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken),
	.freq_mod_i_10(freq_mod_i_10),
	.phi_inc_i_10(phi_inc_i_10),
	.freq_mod_i_9(freq_mod_i_9),
	.phi_inc_i_9(phi_inc_i_9),
	.freq_mod_i_8(freq_mod_i_8),
	.phi_inc_i_8(phi_inc_i_8),
	.freq_mod_i_7(freq_mod_i_7),
	.phi_inc_i_7(phi_inc_i_7),
	.freq_mod_i_6(freq_mod_i_6),
	.phi_inc_i_6(phi_inc_i_6),
	.freq_mod_i_5(freq_mod_i_5),
	.phi_inc_i_5(phi_inc_i_5),
	.freq_mod_i_4(freq_mod_i_4),
	.phi_inc_i_4(phi_inc_i_4),
	.freq_mod_i_3(freq_mod_i_3),
	.phi_inc_i_3(phi_inc_i_3),
	.freq_mod_i_2(freq_mod_i_2),
	.phi_inc_i_2(phi_inc_i_2),
	.freq_mod_i_1(freq_mod_i_1),
	.phi_inc_i_1(phi_inc_i_1),
	.freq_mod_i_0(freq_mod_i_0),
	.phi_inc_i_0(phi_inc_i_0),
	.freq_mod_i_22(freq_mod_i_22),
	.phi_inc_i_22(phi_inc_i_22),
	.freq_mod_i_21(freq_mod_i_21),
	.phi_inc_i_21(phi_inc_i_21),
	.freq_mod_i_20(freq_mod_i_20),
	.phi_inc_i_20(phi_inc_i_20),
	.freq_mod_i_19(freq_mod_i_19),
	.phi_inc_i_19(phi_inc_i_19),
	.freq_mod_i_18(freq_mod_i_18),
	.phi_inc_i_18(phi_inc_i_18),
	.freq_mod_i_17(freq_mod_i_17),
	.phi_inc_i_17(phi_inc_i_17),
	.freq_mod_i_16(freq_mod_i_16),
	.phi_inc_i_16(phi_inc_i_16),
	.freq_mod_i_15(freq_mod_i_15),
	.phi_inc_i_15(phi_inc_i_15),
	.freq_mod_i_14(freq_mod_i_14),
	.phi_inc_i_14(phi_inc_i_14),
	.freq_mod_i_13(freq_mod_i_13),
	.phi_inc_i_13(phi_inc_i_13),
	.freq_mod_i_12(freq_mod_i_12),
	.phi_inc_i_12(phi_inc_i_12),
	.freq_mod_i_11(freq_mod_i_11),
	.phi_inc_i_11(phi_inc_i_11),
	.freq_mod_i_24(freq_mod_i_24),
	.phi_inc_i_24(phi_inc_i_24),
	.freq_mod_i_23(freq_mod_i_23),
	.phi_inc_i_23(phi_inc_i_23));

endmodule

module fskmode_add_sub_a8h (
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_0,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_24,
	pipeline_dffe_23,
	reset_n,
	clock,
	clken,
	freq_mod_i_10,
	phi_inc_i_10,
	freq_mod_i_9,
	phi_inc_i_9,
	freq_mod_i_8,
	phi_inc_i_8,
	freq_mod_i_7,
	phi_inc_i_7,
	freq_mod_i_6,
	phi_inc_i_6,
	freq_mod_i_5,
	phi_inc_i_5,
	freq_mod_i_4,
	phi_inc_i_4,
	freq_mod_i_3,
	phi_inc_i_3,
	freq_mod_i_2,
	phi_inc_i_2,
	freq_mod_i_1,
	phi_inc_i_1,
	freq_mod_i_0,
	phi_inc_i_0,
	freq_mod_i_22,
	phi_inc_i_22,
	freq_mod_i_21,
	phi_inc_i_21,
	freq_mod_i_20,
	phi_inc_i_20,
	freq_mod_i_19,
	phi_inc_i_19,
	freq_mod_i_18,
	phi_inc_i_18,
	freq_mod_i_17,
	phi_inc_i_17,
	freq_mod_i_16,
	phi_inc_i_16,
	freq_mod_i_15,
	phi_inc_i_15,
	freq_mod_i_14,
	phi_inc_i_14,
	freq_mod_i_13,
	phi_inc_i_13,
	freq_mod_i_12,
	phi_inc_i_12,
	freq_mod_i_11,
	phi_inc_i_11,
	freq_mod_i_24,
	phi_inc_i_24,
	freq_mod_i_23,
	phi_inc_i_23)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_2;
output 	pipeline_dffe_1;
output 	pipeline_dffe_0;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
input 	reset_n;
input 	clock;
input 	clken;
input 	freq_mod_i_10;
input 	phi_inc_i_10;
input 	freq_mod_i_9;
input 	phi_inc_i_9;
input 	freq_mod_i_8;
input 	phi_inc_i_8;
input 	freq_mod_i_7;
input 	phi_inc_i_7;
input 	freq_mod_i_6;
input 	phi_inc_i_6;
input 	freq_mod_i_5;
input 	phi_inc_i_5;
input 	freq_mod_i_4;
input 	phi_inc_i_4;
input 	freq_mod_i_3;
input 	phi_inc_i_3;
input 	freq_mod_i_2;
input 	phi_inc_i_2;
input 	freq_mod_i_1;
input 	phi_inc_i_1;
input 	freq_mod_i_0;
input 	phi_inc_i_0;
input 	freq_mod_i_22;
input 	phi_inc_i_22;
input 	freq_mod_i_21;
input 	phi_inc_i_21;
input 	freq_mod_i_20;
input 	phi_inc_i_20;
input 	freq_mod_i_19;
input 	phi_inc_i_19;
input 	freq_mod_i_18;
input 	phi_inc_i_18;
input 	freq_mod_i_17;
input 	phi_inc_i_17;
input 	freq_mod_i_16;
input 	phi_inc_i_16;
input 	freq_mod_i_15;
input 	phi_inc_i_15;
input 	freq_mod_i_14;
input 	phi_inc_i_14;
input 	freq_mod_i_13;
input 	phi_inc_i_13;
input 	freq_mod_i_12;
input 	phi_inc_i_12;
input 	freq_mod_i_11;
input 	phi_inc_i_11;
input 	freq_mod_i_24;
input 	phi_inc_i_24;
input 	freq_mod_i_23;
input 	phi_inc_i_23;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pipeline_dffe[0]~26 ;
wire \pipeline_dffe[1]~28 ;
wire \pipeline_dffe[2]~30 ;
wire \pipeline_dffe[3]~32 ;
wire \pipeline_dffe[4]~34 ;
wire \pipeline_dffe[5]~36 ;
wire \pipeline_dffe[6]~38 ;
wire \pipeline_dffe[7]~40 ;
wire \pipeline_dffe[8]~42 ;
wire \pipeline_dffe[9]~44 ;
wire \pipeline_dffe[10]~45_combout ;
wire \pipeline_dffe[9]~43_combout ;
wire \pipeline_dffe[8]~41_combout ;
wire \pipeline_dffe[7]~39_combout ;
wire \pipeline_dffe[6]~37_combout ;
wire \pipeline_dffe[5]~35_combout ;
wire \pipeline_dffe[4]~33_combout ;
wire \pipeline_dffe[3]~31_combout ;
wire \pipeline_dffe[2]~29_combout ;
wire \pipeline_dffe[1]~27_combout ;
wire \pipeline_dffe[0]~25_combout ;
wire \pipeline_dffe[10]~46 ;
wire \pipeline_dffe[11]~48 ;
wire \pipeline_dffe[12]~50 ;
wire \pipeline_dffe[13]~52 ;
wire \pipeline_dffe[14]~54 ;
wire \pipeline_dffe[15]~56 ;
wire \pipeline_dffe[16]~58 ;
wire \pipeline_dffe[17]~60 ;
wire \pipeline_dffe[18]~62 ;
wire \pipeline_dffe[19]~64 ;
wire \pipeline_dffe[20]~66 ;
wire \pipeline_dffe[21]~68 ;
wire \pipeline_dffe[22]~69_combout ;
wire \pipeline_dffe[21]~67_combout ;
wire \pipeline_dffe[20]~65_combout ;
wire \pipeline_dffe[19]~63_combout ;
wire \pipeline_dffe[18]~61_combout ;
wire \pipeline_dffe[17]~59_combout ;
wire \pipeline_dffe[16]~57_combout ;
wire \pipeline_dffe[15]~55_combout ;
wire \pipeline_dffe[14]~53_combout ;
wire \pipeline_dffe[13]~51_combout ;
wire \pipeline_dffe[12]~49_combout ;
wire \pipeline_dffe[11]~47_combout ;
wire \pipeline_dffe[22]~70 ;
wire \pipeline_dffe[23]~72 ;
wire \pipeline_dffe[24]~73_combout ;
wire \pipeline_dffe[23]~71_combout ;


dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~45_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_10),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~43_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_9),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~41_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_8),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~39_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_7),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~37_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_6),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~35_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_5),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

dffeas \pipeline_dffe[4] (
	.clk(clock),
	.d(\pipeline_dffe[4]~33_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_4),
	.prn(vcc));
defparam \pipeline_dffe[4] .is_wysiwyg = "true";
defparam \pipeline_dffe[4] .power_up = "low";

dffeas \pipeline_dffe[3] (
	.clk(clock),
	.d(\pipeline_dffe[3]~31_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_3),
	.prn(vcc));
defparam \pipeline_dffe[3] .is_wysiwyg = "true";
defparam \pipeline_dffe[3] .power_up = "low";

dffeas \pipeline_dffe[2] (
	.clk(clock),
	.d(\pipeline_dffe[2]~29_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_2),
	.prn(vcc));
defparam \pipeline_dffe[2] .is_wysiwyg = "true";
defparam \pipeline_dffe[2] .power_up = "low";

dffeas \pipeline_dffe[1] (
	.clk(clock),
	.d(\pipeline_dffe[1]~27_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_1),
	.prn(vcc));
defparam \pipeline_dffe[1] .is_wysiwyg = "true";
defparam \pipeline_dffe[1] .power_up = "low";

dffeas \pipeline_dffe[0] (
	.clk(clock),
	.d(\pipeline_dffe[0]~25_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_0),
	.prn(vcc));
defparam \pipeline_dffe[0] .is_wysiwyg = "true";
defparam \pipeline_dffe[0] .power_up = "low";

dffeas \pipeline_dffe[22] (
	.clk(clock),
	.d(\pipeline_dffe[22]~69_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_22),
	.prn(vcc));
defparam \pipeline_dffe[22] .is_wysiwyg = "true";
defparam \pipeline_dffe[22] .power_up = "low";

dffeas \pipeline_dffe[21] (
	.clk(clock),
	.d(\pipeline_dffe[21]~67_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_21),
	.prn(vcc));
defparam \pipeline_dffe[21] .is_wysiwyg = "true";
defparam \pipeline_dffe[21] .power_up = "low";

dffeas \pipeline_dffe[20] (
	.clk(clock),
	.d(\pipeline_dffe[20]~65_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_20),
	.prn(vcc));
defparam \pipeline_dffe[20] .is_wysiwyg = "true";
defparam \pipeline_dffe[20] .power_up = "low";

dffeas \pipeline_dffe[19] (
	.clk(clock),
	.d(\pipeline_dffe[19]~63_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_19),
	.prn(vcc));
defparam \pipeline_dffe[19] .is_wysiwyg = "true";
defparam \pipeline_dffe[19] .power_up = "low";

dffeas \pipeline_dffe[18] (
	.clk(clock),
	.d(\pipeline_dffe[18]~61_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_18),
	.prn(vcc));
defparam \pipeline_dffe[18] .is_wysiwyg = "true";
defparam \pipeline_dffe[18] .power_up = "low";

dffeas \pipeline_dffe[17] (
	.clk(clock),
	.d(\pipeline_dffe[17]~59_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_17),
	.prn(vcc));
defparam \pipeline_dffe[17] .is_wysiwyg = "true";
defparam \pipeline_dffe[17] .power_up = "low";

dffeas \pipeline_dffe[16] (
	.clk(clock),
	.d(\pipeline_dffe[16]~57_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_16),
	.prn(vcc));
defparam \pipeline_dffe[16] .is_wysiwyg = "true";
defparam \pipeline_dffe[16] .power_up = "low";

dffeas \pipeline_dffe[15] (
	.clk(clock),
	.d(\pipeline_dffe[15]~55_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_15),
	.prn(vcc));
defparam \pipeline_dffe[15] .is_wysiwyg = "true";
defparam \pipeline_dffe[15] .power_up = "low";

dffeas \pipeline_dffe[14] (
	.clk(clock),
	.d(\pipeline_dffe[14]~53_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_14),
	.prn(vcc));
defparam \pipeline_dffe[14] .is_wysiwyg = "true";
defparam \pipeline_dffe[14] .power_up = "low";

dffeas \pipeline_dffe[13] (
	.clk(clock),
	.d(\pipeline_dffe[13]~51_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_13),
	.prn(vcc));
defparam \pipeline_dffe[13] .is_wysiwyg = "true";
defparam \pipeline_dffe[13] .power_up = "low";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~49_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_12),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~47_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_11),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

dffeas \pipeline_dffe[24] (
	.clk(clock),
	.d(\pipeline_dffe[24]~73_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_24),
	.prn(vcc));
defparam \pipeline_dffe[24] .is_wysiwyg = "true";
defparam \pipeline_dffe[24] .power_up = "low";

dffeas \pipeline_dffe[23] (
	.clk(clock),
	.d(\pipeline_dffe[23]~71_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_23),
	.prn(vcc));
defparam \pipeline_dffe[23] .is_wysiwyg = "true";
defparam \pipeline_dffe[23] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[0]~25 (
	.dataa(freq_mod_i_0),
	.datab(phi_inc_i_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\pipeline_dffe[0]~25_combout ),
	.cout(\pipeline_dffe[0]~26 ));
defparam \pipeline_dffe[0]~25 .lut_mask = 16'h66EE;
defparam \pipeline_dffe[0]~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \pipeline_dffe[1]~27 (
	.dataa(freq_mod_i_1),
	.datab(phi_inc_i_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[0]~26 ),
	.combout(\pipeline_dffe[1]~27_combout ),
	.cout(\pipeline_dffe[1]~28 ));
defparam \pipeline_dffe[1]~27 .lut_mask = 16'h967F;
defparam \pipeline_dffe[1]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[2]~29 (
	.dataa(freq_mod_i_2),
	.datab(phi_inc_i_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~28 ),
	.combout(\pipeline_dffe[2]~29_combout ),
	.cout(\pipeline_dffe[2]~30 ));
defparam \pipeline_dffe[2]~29 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[2]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[3]~31 (
	.dataa(freq_mod_i_3),
	.datab(phi_inc_i_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[2]~30 ),
	.combout(\pipeline_dffe[3]~31_combout ),
	.cout(\pipeline_dffe[3]~32 ));
defparam \pipeline_dffe[3]~31 .lut_mask = 16'h967F;
defparam \pipeline_dffe[3]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[4]~33 (
	.dataa(freq_mod_i_4),
	.datab(phi_inc_i_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[3]~32 ),
	.combout(\pipeline_dffe[4]~33_combout ),
	.cout(\pipeline_dffe[4]~34 ));
defparam \pipeline_dffe[4]~33 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[4]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[5]~35 (
	.dataa(freq_mod_i_5),
	.datab(phi_inc_i_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[4]~34 ),
	.combout(\pipeline_dffe[5]~35_combout ),
	.cout(\pipeline_dffe[5]~36 ));
defparam \pipeline_dffe[5]~35 .lut_mask = 16'h967F;
defparam \pipeline_dffe[5]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[6]~37 (
	.dataa(freq_mod_i_6),
	.datab(phi_inc_i_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~36 ),
	.combout(\pipeline_dffe[6]~37_combout ),
	.cout(\pipeline_dffe[6]~38 ));
defparam \pipeline_dffe[6]~37 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[6]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[7]~39 (
	.dataa(freq_mod_i_7),
	.datab(phi_inc_i_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~38 ),
	.combout(\pipeline_dffe[7]~39_combout ),
	.cout(\pipeline_dffe[7]~40 ));
defparam \pipeline_dffe[7]~39 .lut_mask = 16'h967F;
defparam \pipeline_dffe[7]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[8]~41 (
	.dataa(freq_mod_i_8),
	.datab(phi_inc_i_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~40 ),
	.combout(\pipeline_dffe[8]~41_combout ),
	.cout(\pipeline_dffe[8]~42 ));
defparam \pipeline_dffe[8]~41 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[8]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[9]~43 (
	.dataa(freq_mod_i_9),
	.datab(phi_inc_i_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~42 ),
	.combout(\pipeline_dffe[9]~43_combout ),
	.cout(\pipeline_dffe[9]~44 ));
defparam \pipeline_dffe[9]~43 .lut_mask = 16'h967F;
defparam \pipeline_dffe[9]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[10]~45 (
	.dataa(freq_mod_i_10),
	.datab(phi_inc_i_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~44 ),
	.combout(\pipeline_dffe[10]~45_combout ),
	.cout(\pipeline_dffe[10]~46 ));
defparam \pipeline_dffe[10]~45 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[10]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[11]~47 (
	.dataa(freq_mod_i_11),
	.datab(phi_inc_i_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~46 ),
	.combout(\pipeline_dffe[11]~47_combout ),
	.cout(\pipeline_dffe[11]~48 ));
defparam \pipeline_dffe[11]~47 .lut_mask = 16'h967F;
defparam \pipeline_dffe[11]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[12]~49 (
	.dataa(freq_mod_i_12),
	.datab(phi_inc_i_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~48 ),
	.combout(\pipeline_dffe[12]~49_combout ),
	.cout(\pipeline_dffe[12]~50 ));
defparam \pipeline_dffe[12]~49 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[12]~49 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[13]~51 (
	.dataa(freq_mod_i_13),
	.datab(phi_inc_i_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[12]~50 ),
	.combout(\pipeline_dffe[13]~51_combout ),
	.cout(\pipeline_dffe[13]~52 ));
defparam \pipeline_dffe[13]~51 .lut_mask = 16'h967F;
defparam \pipeline_dffe[13]~51 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[14]~53 (
	.dataa(freq_mod_i_14),
	.datab(phi_inc_i_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[13]~52 ),
	.combout(\pipeline_dffe[14]~53_combout ),
	.cout(\pipeline_dffe[14]~54 ));
defparam \pipeline_dffe[14]~53 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[14]~53 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[15]~55 (
	.dataa(freq_mod_i_15),
	.datab(phi_inc_i_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[14]~54 ),
	.combout(\pipeline_dffe[15]~55_combout ),
	.cout(\pipeline_dffe[15]~56 ));
defparam \pipeline_dffe[15]~55 .lut_mask = 16'h967F;
defparam \pipeline_dffe[15]~55 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[16]~57 (
	.dataa(freq_mod_i_16),
	.datab(phi_inc_i_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[15]~56 ),
	.combout(\pipeline_dffe[16]~57_combout ),
	.cout(\pipeline_dffe[16]~58 ));
defparam \pipeline_dffe[16]~57 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[16]~57 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[17]~59 (
	.dataa(freq_mod_i_17),
	.datab(phi_inc_i_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[16]~58 ),
	.combout(\pipeline_dffe[17]~59_combout ),
	.cout(\pipeline_dffe[17]~60 ));
defparam \pipeline_dffe[17]~59 .lut_mask = 16'h967F;
defparam \pipeline_dffe[17]~59 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[18]~61 (
	.dataa(freq_mod_i_18),
	.datab(phi_inc_i_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[17]~60 ),
	.combout(\pipeline_dffe[18]~61_combout ),
	.cout(\pipeline_dffe[18]~62 ));
defparam \pipeline_dffe[18]~61 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[18]~61 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[19]~63 (
	.dataa(freq_mod_i_19),
	.datab(phi_inc_i_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[18]~62 ),
	.combout(\pipeline_dffe[19]~63_combout ),
	.cout(\pipeline_dffe[19]~64 ));
defparam \pipeline_dffe[19]~63 .lut_mask = 16'h967F;
defparam \pipeline_dffe[19]~63 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[20]~65 (
	.dataa(freq_mod_i_20),
	.datab(phi_inc_i_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[19]~64 ),
	.combout(\pipeline_dffe[20]~65_combout ),
	.cout(\pipeline_dffe[20]~66 ));
defparam \pipeline_dffe[20]~65 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[20]~65 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[21]~67 (
	.dataa(freq_mod_i_21),
	.datab(phi_inc_i_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[20]~66 ),
	.combout(\pipeline_dffe[21]~67_combout ),
	.cout(\pipeline_dffe[21]~68 ));
defparam \pipeline_dffe[21]~67 .lut_mask = 16'h967F;
defparam \pipeline_dffe[21]~67 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[22]~69 (
	.dataa(freq_mod_i_22),
	.datab(phi_inc_i_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[21]~68 ),
	.combout(\pipeline_dffe[22]~69_combout ),
	.cout(\pipeline_dffe[22]~70 ));
defparam \pipeline_dffe[22]~69 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[22]~69 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[23]~71 (
	.dataa(freq_mod_i_23),
	.datab(phi_inc_i_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[22]~70 ),
	.combout(\pipeline_dffe[23]~71_combout ),
	.cout(\pipeline_dffe[23]~72 ));
defparam \pipeline_dffe[23]~71 .lut_mask = 16'h967F;
defparam \pipeline_dffe[23]~71 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[24]~73 (
	.dataa(freq_mod_i_24),
	.datab(phi_inc_i_24),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[23]~72 ),
	.combout(\pipeline_dffe[24]~73_combout ),
	.cout());
defparam \pipeline_dffe[24]~73 .lut_mask = 16'h9696;
defparam \pipeline_dffe[24]~73 .sum_lutc_input = "cin";

endmodule

module fskmode_asj_nco_isdr (
	data_ready1,
	GND_port,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	data_ready1;
input 	GND_port;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lpm_counter_component|auto_generated|counter_reg_bit[3]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[1]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[2]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[0]~q ;
wire \always0~0_combout ;
wire \data_ready~0_combout ;


fskmode_lpm_counter_1 lpm_counter_component(
	.counter_reg_bit_3(\lpm_counter_component|auto_generated|counter_reg_bit[3]~q ),
	.counter_reg_bit_1(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.counter_reg_bit_0(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas data_ready(
	.clk(clk),
	.d(\data_ready~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(vcc),
	.q(data_ready1),
	.prn(vcc));
defparam data_ready.is_wysiwyg = "true";
defparam data_ready.power_up = "low";

cycloneive_lcell_comb \always0~0 (
	.dataa(clken),
	.datab(\lpm_counter_component|auto_generated|counter_reg_bit[3]~q ),
	.datac(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.datad(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.cin(gnd),
	.combout(\always0~0_combout ),
	.cout());
defparam \always0~0 .lut_mask = 16'hFEFF;
defparam \always0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_ready~0 (
	.dataa(data_ready1),
	.datab(\always0~0_combout ),
	.datac(gnd),
	.datad(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.cin(gnd),
	.combout(\data_ready~0_combout ),
	.cout());
defparam \data_ready~0 .lut_mask = 16'hEEFF;
defparam \data_ready~0 .sum_lutc_input = "datac";

endmodule

module fskmode_lpm_counter_1 (
	counter_reg_bit_3,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_0,
	GND_port,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_3;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_0;
input 	GND_port;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



fskmode_cntr_asi auto_generated(
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_0(counter_reg_bit_0),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module fskmode_cntr_asi (
	counter_reg_bit_3,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_0,
	GND_port,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_3;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_0;
input 	GND_port;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~combout ;
wire \counter_comb_bita1~combout ;
wire \counter_comb_bita2~combout ;
wire \counter_comb_bita0~combout ;


dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

cycloneive_lcell_comb counter_comb_bita0(
	.dataa(counter_reg_bit_0),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\counter_comb_bita0~combout ),
	.cout(\counter_comb_bita0~COUT ));
defparam counter_comb_bita0.lut_mask = 16'h55AA;
defparam counter_comb_bita0.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita1(
	.dataa(counter_reg_bit_1),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\counter_comb_bita0~COUT ),
	.combout(\counter_comb_bita1~combout ),
	.cout(\counter_comb_bita1~COUT ));
defparam counter_comb_bita1.lut_mask = 16'h5A5F;
defparam counter_comb_bita1.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita2(
	.dataa(counter_reg_bit_2),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\counter_comb_bita1~COUT ),
	.combout(\counter_comb_bita2~combout ),
	.cout(\counter_comb_bita2~COUT ));
defparam counter_comb_bita2.lut_mask = 16'h5AAF;
defparam counter_comb_bita2.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita3(
	.dataa(counter_reg_bit_3),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.combout(\counter_comb_bita3~combout ),
	.cout());
defparam counter_comb_bita3.lut_mask = 16'h5A5A;
defparam counter_comb_bita3.sum_lutc_input = "cin";

endmodule

module fskmode_asj_nco_mob_rw (
	sin_o_0,
	sin_o_1,
	sin_o_2,
	sin_o_3,
	sin_o_4,
	sin_o_5,
	sin_o_6,
	sin_o_7,
	sin_o_8,
	sin_o_9,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	data_out_01,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
input 	sin_o_0;
input 	sin_o_1;
input 	sin_o_2;
input 	sin_o_3;
input 	sin_o_4;
input 	sin_o_5;
input 	sin_o_6;
input 	sin_o_7;
input 	sin_o_8;
input 	sin_o_9;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
output 	data_out_01;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \data_out~0_combout ;
wire \data_out~2_combout ;
wire \data_out~3_combout ;
wire \data_out~4_combout ;
wire \data_out~5_combout ;
wire \data_out~6_combout ;
wire \data_out~7_combout ;
wire \data_out~8_combout ;
wire \data_out~9_combout ;
wire \data_out~10_combout ;


dffeas \data_out[0] (
	.clk(clk),
	.d(\data_out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_0),
	.prn(vcc));
defparam \data_out[0] .is_wysiwyg = "true";
defparam \data_out[0] .power_up = "low";

dffeas \data_out[1] (
	.clk(clk),
	.d(\data_out~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_1),
	.prn(vcc));
defparam \data_out[1] .is_wysiwyg = "true";
defparam \data_out[1] .power_up = "low";

dffeas \data_out[2] (
	.clk(clk),
	.d(\data_out~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_2),
	.prn(vcc));
defparam \data_out[2] .is_wysiwyg = "true";
defparam \data_out[2] .power_up = "low";

dffeas \data_out[3] (
	.clk(clk),
	.d(\data_out~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_3),
	.prn(vcc));
defparam \data_out[3] .is_wysiwyg = "true";
defparam \data_out[3] .power_up = "low";

dffeas \data_out[4] (
	.clk(clk),
	.d(\data_out~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_4),
	.prn(vcc));
defparam \data_out[4] .is_wysiwyg = "true";
defparam \data_out[4] .power_up = "low";

dffeas \data_out[5] (
	.clk(clk),
	.d(\data_out~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_5),
	.prn(vcc));
defparam \data_out[5] .is_wysiwyg = "true";
defparam \data_out[5] .power_up = "low";

dffeas \data_out[6] (
	.clk(clk),
	.d(\data_out~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_6),
	.prn(vcc));
defparam \data_out[6] .is_wysiwyg = "true";
defparam \data_out[6] .power_up = "low";

dffeas \data_out[7] (
	.clk(clk),
	.d(\data_out~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_7),
	.prn(vcc));
defparam \data_out[7] .is_wysiwyg = "true";
defparam \data_out[7] .power_up = "low";

dffeas \data_out[8] (
	.clk(clk),
	.d(\data_out~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_8),
	.prn(vcc));
defparam \data_out[8] .is_wysiwyg = "true";
defparam \data_out[8] .power_up = "low";

dffeas \data_out[9] (
	.clk(clk),
	.d(\data_out~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_9),
	.prn(vcc));
defparam \data_out[9] .is_wysiwyg = "true";
defparam \data_out[9] .power_up = "low";

cycloneive_lcell_comb \data_out[0]~1 (
	.dataa(clken),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(data_out_01),
	.cout());
defparam \data_out[0]~1 .lut_mask = 16'hAAFF;
defparam \data_out[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~0 (
	.dataa(reset_n),
	.datab(sin_o_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~0_combout ),
	.cout());
defparam \data_out~0 .lut_mask = 16'hEEEE;
defparam \data_out~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~2 (
	.dataa(reset_n),
	.datab(sin_o_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~2_combout ),
	.cout());
defparam \data_out~2 .lut_mask = 16'hEEEE;
defparam \data_out~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~3 (
	.dataa(reset_n),
	.datab(sin_o_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~3_combout ),
	.cout());
defparam \data_out~3 .lut_mask = 16'hEEEE;
defparam \data_out~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~4 (
	.dataa(reset_n),
	.datab(sin_o_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~4_combout ),
	.cout());
defparam \data_out~4 .lut_mask = 16'hEEEE;
defparam \data_out~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~5 (
	.dataa(reset_n),
	.datab(sin_o_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~5_combout ),
	.cout());
defparam \data_out~5 .lut_mask = 16'hEEEE;
defparam \data_out~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~6 (
	.dataa(reset_n),
	.datab(sin_o_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~6_combout ),
	.cout());
defparam \data_out~6 .lut_mask = 16'hEEEE;
defparam \data_out~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~7 (
	.dataa(reset_n),
	.datab(sin_o_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~7_combout ),
	.cout());
defparam \data_out~7 .lut_mask = 16'hEEEE;
defparam \data_out~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~8 (
	.dataa(reset_n),
	.datab(sin_o_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~8_combout ),
	.cout());
defparam \data_out~8 .lut_mask = 16'hEEEE;
defparam \data_out~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~9 (
	.dataa(reset_n),
	.datab(sin_o_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~9_combout ),
	.cout());
defparam \data_out~9 .lut_mask = 16'hEEEE;
defparam \data_out~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~10 (
	.dataa(reset_n),
	.datab(sin_o_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~10_combout ),
	.cout());
defparam \data_out~10 .lut_mask = 16'hEEEE;
defparam \data_out~10 .sum_lutc_input = "datac";

endmodule

module fskmode_segment_arr_tdl (
	data_out_0,
	seg_rot_2,
	seg_rot_1,
	seg_rot_0,
	dxxpdo_17,
	dxxpdo_19,
	dxxpdo_18,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	data_out_0;
output 	seg_rot_2;
output 	seg_rot_1;
output 	seg_rot_0;
input 	dxxpdo_17;
input 	dxxpdo_19;
input 	dxxpdo_18;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \segment_arr~9_combout ;
wire \segment_arr[0][2]~q ;
wire \segment_arr~6_combout ;
wire \segment_arr[1][2]~q ;
wire \segment_arr~3_combout ;
wire \segment_arr[2][2]~q ;
wire \segment_arr~0_combout ;
wire \segment_arr[3][2]~q ;
wire \seg_rot~0_combout ;
wire \segment_arr~10_combout ;
wire \segment_arr[0][1]~q ;
wire \segment_arr~7_combout ;
wire \segment_arr[1][1]~q ;
wire \segment_arr~4_combout ;
wire \segment_arr[2][1]~q ;
wire \segment_arr~1_combout ;
wire \segment_arr[3][1]~q ;
wire \seg_rot~1_combout ;
wire \segment_arr~11_combout ;
wire \segment_arr[0][0]~q ;
wire \segment_arr~8_combout ;
wire \segment_arr[1][0]~q ;
wire \segment_arr~5_combout ;
wire \segment_arr[2][0]~q ;
wire \segment_arr~2_combout ;
wire \segment_arr[3][0]~q ;
wire \seg_rot~2_combout ;


dffeas \seg_rot[2] (
	.clk(clk),
	.d(\seg_rot~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(seg_rot_2),
	.prn(vcc));
defparam \seg_rot[2] .is_wysiwyg = "true";
defparam \seg_rot[2] .power_up = "low";

dffeas \seg_rot[1] (
	.clk(clk),
	.d(\seg_rot~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(seg_rot_1),
	.prn(vcc));
defparam \seg_rot[1] .is_wysiwyg = "true";
defparam \seg_rot[1] .power_up = "low";

dffeas \seg_rot[0] (
	.clk(clk),
	.d(\seg_rot~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(seg_rot_0),
	.prn(vcc));
defparam \seg_rot[0] .is_wysiwyg = "true";
defparam \seg_rot[0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~9 (
	.dataa(reset_n),
	.datab(dxxpdo_19),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~9_combout ),
	.cout());
defparam \segment_arr~9 .lut_mask = 16'hEEEE;
defparam \segment_arr~9 .sum_lutc_input = "datac";

dffeas \segment_arr[0][2] (
	.clk(clk),
	.d(\segment_arr~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[0][2]~q ),
	.prn(vcc));
defparam \segment_arr[0][2] .is_wysiwyg = "true";
defparam \segment_arr[0][2] .power_up = "low";

cycloneive_lcell_comb \segment_arr~6 (
	.dataa(reset_n),
	.datab(\segment_arr[0][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~6_combout ),
	.cout());
defparam \segment_arr~6 .lut_mask = 16'hEEEE;
defparam \segment_arr~6 .sum_lutc_input = "datac";

dffeas \segment_arr[1][2] (
	.clk(clk),
	.d(\segment_arr~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[1][2]~q ),
	.prn(vcc));
defparam \segment_arr[1][2] .is_wysiwyg = "true";
defparam \segment_arr[1][2] .power_up = "low";

cycloneive_lcell_comb \segment_arr~3 (
	.dataa(reset_n),
	.datab(\segment_arr[1][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~3_combout ),
	.cout());
defparam \segment_arr~3 .lut_mask = 16'hEEEE;
defparam \segment_arr~3 .sum_lutc_input = "datac";

dffeas \segment_arr[2][2] (
	.clk(clk),
	.d(\segment_arr~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[2][2]~q ),
	.prn(vcc));
defparam \segment_arr[2][2] .is_wysiwyg = "true";
defparam \segment_arr[2][2] .power_up = "low";

cycloneive_lcell_comb \segment_arr~0 (
	.dataa(reset_n),
	.datab(\segment_arr[2][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~0_combout ),
	.cout());
defparam \segment_arr~0 .lut_mask = 16'hEEEE;
defparam \segment_arr~0 .sum_lutc_input = "datac";

dffeas \segment_arr[3][2] (
	.clk(clk),
	.d(\segment_arr~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[3][2]~q ),
	.prn(vcc));
defparam \segment_arr[3][2] .is_wysiwyg = "true";
defparam \segment_arr[3][2] .power_up = "low";

cycloneive_lcell_comb \seg_rot~0 (
	.dataa(reset_n),
	.datab(\segment_arr[3][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\seg_rot~0_combout ),
	.cout());
defparam \seg_rot~0 .lut_mask = 16'hEEEE;
defparam \seg_rot~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \segment_arr~10 (
	.dataa(reset_n),
	.datab(dxxpdo_18),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~10_combout ),
	.cout());
defparam \segment_arr~10 .lut_mask = 16'hEEEE;
defparam \segment_arr~10 .sum_lutc_input = "datac";

dffeas \segment_arr[0][1] (
	.clk(clk),
	.d(\segment_arr~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[0][1]~q ),
	.prn(vcc));
defparam \segment_arr[0][1] .is_wysiwyg = "true";
defparam \segment_arr[0][1] .power_up = "low";

cycloneive_lcell_comb \segment_arr~7 (
	.dataa(reset_n),
	.datab(\segment_arr[0][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~7_combout ),
	.cout());
defparam \segment_arr~7 .lut_mask = 16'hEEEE;
defparam \segment_arr~7 .sum_lutc_input = "datac";

dffeas \segment_arr[1][1] (
	.clk(clk),
	.d(\segment_arr~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[1][1]~q ),
	.prn(vcc));
defparam \segment_arr[1][1] .is_wysiwyg = "true";
defparam \segment_arr[1][1] .power_up = "low";

cycloneive_lcell_comb \segment_arr~4 (
	.dataa(reset_n),
	.datab(\segment_arr[1][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~4_combout ),
	.cout());
defparam \segment_arr~4 .lut_mask = 16'hEEEE;
defparam \segment_arr~4 .sum_lutc_input = "datac";

dffeas \segment_arr[2][1] (
	.clk(clk),
	.d(\segment_arr~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[2][1]~q ),
	.prn(vcc));
defparam \segment_arr[2][1] .is_wysiwyg = "true";
defparam \segment_arr[2][1] .power_up = "low";

cycloneive_lcell_comb \segment_arr~1 (
	.dataa(reset_n),
	.datab(\segment_arr[2][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~1_combout ),
	.cout());
defparam \segment_arr~1 .lut_mask = 16'hEEEE;
defparam \segment_arr~1 .sum_lutc_input = "datac";

dffeas \segment_arr[3][1] (
	.clk(clk),
	.d(\segment_arr~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[3][1]~q ),
	.prn(vcc));
defparam \segment_arr[3][1] .is_wysiwyg = "true";
defparam \segment_arr[3][1] .power_up = "low";

cycloneive_lcell_comb \seg_rot~1 (
	.dataa(reset_n),
	.datab(\segment_arr[3][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\seg_rot~1_combout ),
	.cout());
defparam \seg_rot~1 .lut_mask = 16'hEEEE;
defparam \seg_rot~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \segment_arr~11 (
	.dataa(reset_n),
	.datab(dxxpdo_17),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~11_combout ),
	.cout());
defparam \segment_arr~11 .lut_mask = 16'hEEEE;
defparam \segment_arr~11 .sum_lutc_input = "datac";

dffeas \segment_arr[0][0] (
	.clk(clk),
	.d(\segment_arr~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[0][0]~q ),
	.prn(vcc));
defparam \segment_arr[0][0] .is_wysiwyg = "true";
defparam \segment_arr[0][0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~8 (
	.dataa(reset_n),
	.datab(\segment_arr[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~8_combout ),
	.cout());
defparam \segment_arr~8 .lut_mask = 16'hEEEE;
defparam \segment_arr~8 .sum_lutc_input = "datac";

dffeas \segment_arr[1][0] (
	.clk(clk),
	.d(\segment_arr~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[1][0]~q ),
	.prn(vcc));
defparam \segment_arr[1][0] .is_wysiwyg = "true";
defparam \segment_arr[1][0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~5 (
	.dataa(reset_n),
	.datab(\segment_arr[1][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~5_combout ),
	.cout());
defparam \segment_arr~5 .lut_mask = 16'hEEEE;
defparam \segment_arr~5 .sum_lutc_input = "datac";

dffeas \segment_arr[2][0] (
	.clk(clk),
	.d(\segment_arr~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[2][0]~q ),
	.prn(vcc));
defparam \segment_arr[2][0] .is_wysiwyg = "true";
defparam \segment_arr[2][0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~2 (
	.dataa(reset_n),
	.datab(\segment_arr[2][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~2_combout ),
	.cout());
defparam \segment_arr~2 .lut_mask = 16'hEEEE;
defparam \segment_arr~2 .sum_lutc_input = "datac";

dffeas \segment_arr[3][0] (
	.clk(clk),
	.d(\segment_arr~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\segment_arr[3][0]~q ),
	.prn(vcc));
defparam \segment_arr[3][0] .is_wysiwyg = "true";
defparam \segment_arr[3][0] .power_up = "low";

cycloneive_lcell_comb \seg_rot~2 (
	.dataa(reset_n),
	.datab(\segment_arr[3][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\seg_rot~2_combout ),
	.cout());
defparam \seg_rot~2 .lut_mask = 16'hEEEE;
defparam \seg_rot~2 .sum_lutc_input = "datac";

endmodule

module fskmode_segment_sel (
	sin_o_0,
	sin_o_1,
	sin_o_2,
	sin_o_3,
	sin_o_4,
	sin_o_5,
	sin_o_6,
	sin_o_7,
	sin_o_8,
	sin_o_9,
	sin_rom_2c_0,
	cos_rom_2c_0,
	sin_rom_2c_1,
	cos_rom_2c_1,
	sin_rom_2c_2,
	cos_rom_2c_2,
	sin_rom_2c_3,
	cos_rom_2c_3,
	sin_rom_2c_4,
	cos_rom_2c_4,
	sin_rom_2c_5,
	cos_rom_2c_5,
	sin_rom_2c_6,
	cos_rom_2c_6,
	sin_rom_2c_7,
	cos_rom_2c_7,
	sin_rom_2c_8,
	cos_rom_2c_8,
	cos_rom_2c_9,
	sin_rom_2c_9,
	data_out_0,
	seg_rot_2,
	cos_rom_d_0,
	seg_rot_1,
	seg_rot_0,
	sin_rom_d_0,
	cos_rom_d_1,
	sin_rom_d_1,
	cos_rom_d_2,
	sin_rom_d_2,
	cos_rom_d_3,
	sin_rom_d_3,
	cos_rom_d_4,
	sin_rom_d_4,
	cos_rom_d_5,
	sin_rom_d_5,
	cos_rom_d_6,
	sin_rom_d_6,
	cos_rom_d_7,
	sin_rom_d_7,
	cos_rom_d_8,
	sin_rom_d_8,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	sin_o_0;
output 	sin_o_1;
output 	sin_o_2;
output 	sin_o_3;
output 	sin_o_4;
output 	sin_o_5;
output 	sin_o_6;
output 	sin_o_7;
output 	sin_o_8;
output 	sin_o_9;
input 	sin_rom_2c_0;
input 	cos_rom_2c_0;
input 	sin_rom_2c_1;
input 	cos_rom_2c_1;
input 	sin_rom_2c_2;
input 	cos_rom_2c_2;
input 	sin_rom_2c_3;
input 	cos_rom_2c_3;
input 	sin_rom_2c_4;
input 	cos_rom_2c_4;
input 	sin_rom_2c_5;
input 	cos_rom_2c_5;
input 	sin_rom_2c_6;
input 	cos_rom_2c_6;
input 	sin_rom_2c_7;
input 	cos_rom_2c_7;
input 	sin_rom_2c_8;
input 	cos_rom_2c_8;
input 	cos_rom_2c_9;
input 	sin_rom_2c_9;
input 	data_out_0;
input 	seg_rot_2;
input 	cos_rom_d_0;
input 	seg_rot_1;
input 	seg_rot_0;
input 	sin_rom_d_0;
input 	cos_rom_d_1;
input 	sin_rom_d_1;
input 	cos_rom_d_2;
input 	sin_rom_d_2;
input 	cos_rom_d_3;
input 	sin_rom_d_3;
input 	cos_rom_d_4;
input 	sin_rom_d_4;
input 	cos_rom_d_5;
input 	sin_rom_d_5;
input 	cos_rom_d_6;
input 	sin_rom_d_6;
input 	cos_rom_d_7;
input 	sin_rom_d_7;
input 	cos_rom_d_8;
input 	sin_rom_d_8;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sin_o[0]~0_combout ;
wire \sin_o~1_combout ;
wire \sin_o~2_combout ;
wire \sin_o~3_combout ;
wire \sin_o~4_combout ;
wire \sin_o~5_combout ;
wire \sin_o~6_combout ;
wire \sin_o~7_combout ;
wire \sin_o~8_combout ;
wire \sin_o~9_combout ;
wire \sin_o~10_combout ;
wire \sin_o~11_combout ;
wire \sin_o~12_combout ;
wire \sin_o~13_combout ;
wire \sin_o~14_combout ;
wire \sin_o~15_combout ;
wire \sin_o~16_combout ;
wire \sin_o~17_combout ;
wire \sin_o~18_combout ;
wire \Mux0~0_combout ;


dffeas \sin_o[0] (
	.clk(clk),
	.d(\sin_o~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_0),
	.prn(vcc));
defparam \sin_o[0] .is_wysiwyg = "true";
defparam \sin_o[0] .power_up = "low";

dffeas \sin_o[1] (
	.clk(clk),
	.d(\sin_o~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_1),
	.prn(vcc));
defparam \sin_o[1] .is_wysiwyg = "true";
defparam \sin_o[1] .power_up = "low";

dffeas \sin_o[2] (
	.clk(clk),
	.d(\sin_o~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_2),
	.prn(vcc));
defparam \sin_o[2] .is_wysiwyg = "true";
defparam \sin_o[2] .power_up = "low";

dffeas \sin_o[3] (
	.clk(clk),
	.d(\sin_o~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_3),
	.prn(vcc));
defparam \sin_o[3] .is_wysiwyg = "true";
defparam \sin_o[3] .power_up = "low";

dffeas \sin_o[4] (
	.clk(clk),
	.d(\sin_o~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_4),
	.prn(vcc));
defparam \sin_o[4] .is_wysiwyg = "true";
defparam \sin_o[4] .power_up = "low";

dffeas \sin_o[5] (
	.clk(clk),
	.d(\sin_o~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_5),
	.prn(vcc));
defparam \sin_o[5] .is_wysiwyg = "true";
defparam \sin_o[5] .power_up = "low";

dffeas \sin_o[6] (
	.clk(clk),
	.d(\sin_o~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_6),
	.prn(vcc));
defparam \sin_o[6] .is_wysiwyg = "true";
defparam \sin_o[6] .power_up = "low";

dffeas \sin_o[7] (
	.clk(clk),
	.d(\sin_o~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_7),
	.prn(vcc));
defparam \sin_o[7] .is_wysiwyg = "true";
defparam \sin_o[7] .power_up = "low";

dffeas \sin_o[8] (
	.clk(clk),
	.d(\sin_o~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_8),
	.prn(vcc));
defparam \sin_o[8] .is_wysiwyg = "true";
defparam \sin_o[8] .power_up = "low";

dffeas \sin_o[9] (
	.clk(clk),
	.d(\Mux0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_9),
	.prn(vcc));
defparam \sin_o[9] .is_wysiwyg = "true";
defparam \sin_o[9] .power_up = "low";

cycloneive_lcell_comb \sin_o[0]~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(seg_rot_1),
	.datad(seg_rot_0),
	.cin(gnd),
	.combout(\sin_o[0]~0_combout ),
	.cout());
defparam \sin_o[0]~0 .lut_mask = 16'h0FF0;
defparam \sin_o[0]~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~1 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_0),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_0),
	.cin(gnd),
	.combout(\sin_o~1_combout ),
	.cout());
defparam \sin_o~1 .lut_mask = 16'hFFDE;
defparam \sin_o~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~2 (
	.dataa(sin_rom_2c_0),
	.datab(seg_rot_2),
	.datac(\sin_o~1_combout ),
	.datad(cos_rom_2c_0),
	.cin(gnd),
	.combout(\sin_o~2_combout ),
	.cout());
defparam \sin_o~2 .lut_mask = 16'hFFBE;
defparam \sin_o~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~3 (
	.dataa(\sin_o[0]~0_combout ),
	.datab(sin_rom_2c_1),
	.datac(seg_rot_2),
	.datad(sin_rom_d_1),
	.cin(gnd),
	.combout(\sin_o~3_combout ),
	.cout());
defparam \sin_o~3 .lut_mask = 16'hFFDE;
defparam \sin_o~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~4 (
	.dataa(cos_rom_d_1),
	.datab(\sin_o[0]~0_combout ),
	.datac(\sin_o~3_combout ),
	.datad(cos_rom_2c_1),
	.cin(gnd),
	.combout(\sin_o~4_combout ),
	.cout());
defparam \sin_o~4 .lut_mask = 16'hFFBE;
defparam \sin_o~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~5 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_2),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_2),
	.cin(gnd),
	.combout(\sin_o~5_combout ),
	.cout());
defparam \sin_o~5 .lut_mask = 16'hFFDE;
defparam \sin_o~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~6 (
	.dataa(sin_rom_2c_2),
	.datab(seg_rot_2),
	.datac(\sin_o~5_combout ),
	.datad(cos_rom_2c_2),
	.cin(gnd),
	.combout(\sin_o~6_combout ),
	.cout());
defparam \sin_o~6 .lut_mask = 16'hFFBE;
defparam \sin_o~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~7 (
	.dataa(\sin_o[0]~0_combout ),
	.datab(sin_rom_2c_3),
	.datac(seg_rot_2),
	.datad(sin_rom_d_3),
	.cin(gnd),
	.combout(\sin_o~7_combout ),
	.cout());
defparam \sin_o~7 .lut_mask = 16'hFFDE;
defparam \sin_o~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~8 (
	.dataa(cos_rom_d_3),
	.datab(\sin_o[0]~0_combout ),
	.datac(\sin_o~7_combout ),
	.datad(cos_rom_2c_3),
	.cin(gnd),
	.combout(\sin_o~8_combout ),
	.cout());
defparam \sin_o~8 .lut_mask = 16'hFFBE;
defparam \sin_o~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~9 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_4),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_4),
	.cin(gnd),
	.combout(\sin_o~9_combout ),
	.cout());
defparam \sin_o~9 .lut_mask = 16'hFFDE;
defparam \sin_o~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~10 (
	.dataa(sin_rom_2c_4),
	.datab(seg_rot_2),
	.datac(\sin_o~9_combout ),
	.datad(cos_rom_2c_4),
	.cin(gnd),
	.combout(\sin_o~10_combout ),
	.cout());
defparam \sin_o~10 .lut_mask = 16'hFFBE;
defparam \sin_o~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~11 (
	.dataa(\sin_o[0]~0_combout ),
	.datab(sin_rom_2c_5),
	.datac(seg_rot_2),
	.datad(sin_rom_d_5),
	.cin(gnd),
	.combout(\sin_o~11_combout ),
	.cout());
defparam \sin_o~11 .lut_mask = 16'hFFDE;
defparam \sin_o~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~12 (
	.dataa(cos_rom_d_5),
	.datab(\sin_o[0]~0_combout ),
	.datac(\sin_o~11_combout ),
	.datad(cos_rom_2c_5),
	.cin(gnd),
	.combout(\sin_o~12_combout ),
	.cout());
defparam \sin_o~12 .lut_mask = 16'hFFBE;
defparam \sin_o~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~13 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_6),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_6),
	.cin(gnd),
	.combout(\sin_o~13_combout ),
	.cout());
defparam \sin_o~13 .lut_mask = 16'hFFDE;
defparam \sin_o~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~14 (
	.dataa(sin_rom_2c_6),
	.datab(seg_rot_2),
	.datac(\sin_o~13_combout ),
	.datad(cos_rom_2c_6),
	.cin(gnd),
	.combout(\sin_o~14_combout ),
	.cout());
defparam \sin_o~14 .lut_mask = 16'hFFBE;
defparam \sin_o~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~15 (
	.dataa(\sin_o[0]~0_combout ),
	.datab(sin_rom_2c_7),
	.datac(seg_rot_2),
	.datad(sin_rom_d_7),
	.cin(gnd),
	.combout(\sin_o~15_combout ),
	.cout());
defparam \sin_o~15 .lut_mask = 16'hFFDE;
defparam \sin_o~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~16 (
	.dataa(cos_rom_d_7),
	.datab(\sin_o[0]~0_combout ),
	.datac(\sin_o~15_combout ),
	.datad(cos_rom_2c_7),
	.cin(gnd),
	.combout(\sin_o~16_combout ),
	.cout());
defparam \sin_o~16 .lut_mask = 16'hFFBE;
defparam \sin_o~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~17 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_8),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_8),
	.cin(gnd),
	.combout(\sin_o~17_combout ),
	.cout());
defparam \sin_o~17 .lut_mask = 16'hFFDE;
defparam \sin_o~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~18 (
	.dataa(sin_rom_2c_8),
	.datab(seg_rot_2),
	.datac(\sin_o~17_combout ),
	.datad(cos_rom_2c_8),
	.cin(gnd),
	.combout(\sin_o~18_combout ),
	.cout());
defparam \sin_o~18 .lut_mask = 16'hFFBE;
defparam \sin_o~18 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux0~0 (
	.dataa(seg_rot_2),
	.datab(cos_rom_2c_9),
	.datac(sin_rom_2c_9),
	.datad(\sin_o[0]~0_combout ),
	.cin(gnd),
	.combout(\Mux0~0_combout ),
	.cout());
defparam \Mux0~0 .lut_mask = 16'hFAFC;
defparam \Mux0~0 .sum_lutc_input = "datac";

endmodule

module fskmode_sid_2c_1p (
	sin_rom_2c_0,
	cos_rom_2c_0,
	sin_rom_2c_1,
	cos_rom_2c_1,
	sin_rom_2c_2,
	cos_rom_2c_2,
	sin_rom_2c_3,
	cos_rom_2c_3,
	sin_rom_2c_4,
	cos_rom_2c_4,
	sin_rom_2c_5,
	cos_rom_2c_5,
	sin_rom_2c_6,
	cos_rom_2c_6,
	sin_rom_2c_7,
	cos_rom_2c_7,
	sin_rom_2c_8,
	cos_rom_2c_8,
	cos_rom_2c_9,
	sin_rom_2c_9,
	q_a_0,
	q_a_01,
	q_a_1,
	q_a_11,
	q_a_2,
	q_a_21,
	q_a_3,
	q_a_31,
	q_a_4,
	q_a_41,
	q_a_5,
	q_a_51,
	q_a_6,
	q_a_61,
	q_a_7,
	q_a_71,
	q_a_8,
	q_a_81,
	data_out_0,
	cos_rom_d_0,
	sin_rom_d_0,
	cos_rom_d_1,
	sin_rom_d_1,
	cos_rom_d_2,
	sin_rom_d_2,
	cos_rom_d_3,
	sin_rom_d_3,
	cos_rom_d_4,
	sin_rom_d_4,
	cos_rom_d_5,
	sin_rom_d_5,
	cos_rom_d_6,
	sin_rom_d_6,
	cos_rom_d_7,
	sin_rom_d_7,
	cos_rom_d_8,
	sin_rom_d_8,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	sin_rom_2c_0;
output 	cos_rom_2c_0;
output 	sin_rom_2c_1;
output 	cos_rom_2c_1;
output 	sin_rom_2c_2;
output 	cos_rom_2c_2;
output 	sin_rom_2c_3;
output 	cos_rom_2c_3;
output 	sin_rom_2c_4;
output 	cos_rom_2c_4;
output 	sin_rom_2c_5;
output 	cos_rom_2c_5;
output 	sin_rom_2c_6;
output 	cos_rom_2c_6;
output 	sin_rom_2c_7;
output 	cos_rom_2c_7;
output 	sin_rom_2c_8;
output 	cos_rom_2c_8;
output 	cos_rom_2c_9;
output 	sin_rom_2c_9;
input 	q_a_0;
input 	q_a_01;
input 	q_a_1;
input 	q_a_11;
input 	q_a_2;
input 	q_a_21;
input 	q_a_3;
input 	q_a_31;
input 	q_a_4;
input 	q_a_41;
input 	q_a_5;
input 	q_a_51;
input 	q_a_6;
input 	q_a_61;
input 	q_a_7;
input 	q_a_71;
input 	q_a_8;
input 	q_a_81;
input 	data_out_0;
output 	cos_rom_d_0;
output 	sin_rom_d_0;
output 	cos_rom_d_1;
output 	sin_rom_d_1;
output 	cos_rom_d_2;
output 	sin_rom_d_2;
output 	cos_rom_d_3;
output 	sin_rom_d_3;
output 	cos_rom_d_4;
output 	sin_rom_d_4;
output 	cos_rom_d_5;
output 	sin_rom_d_5;
output 	cos_rom_d_6;
output 	sin_rom_d_6;
output 	cos_rom_d_7;
output 	sin_rom_d_7;
output 	cos_rom_d_8;
output 	sin_rom_d_8;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sin_reg~0_combout ;
wire \sin_reg[0]~q ;
wire \sin_rom_2c[0]~10_combout ;
wire \cos_reg~0_combout ;
wire \cos_reg[0]~q ;
wire \cos_rom_2c[0]~10_combout ;
wire \sin_reg~1_combout ;
wire \sin_reg[1]~q ;
wire \sin_rom_2c[0]~11 ;
wire \sin_rom_2c[1]~12_combout ;
wire \cos_reg~1_combout ;
wire \cos_reg[1]~q ;
wire \cos_rom_2c[0]~11 ;
wire \cos_rom_2c[1]~12_combout ;
wire \sin_reg~2_combout ;
wire \sin_reg[2]~q ;
wire \sin_rom_2c[1]~13 ;
wire \sin_rom_2c[2]~14_combout ;
wire \cos_reg~2_combout ;
wire \cos_reg[2]~q ;
wire \cos_rom_2c[1]~13 ;
wire \cos_rom_2c[2]~14_combout ;
wire \sin_reg~3_combout ;
wire \sin_reg[3]~q ;
wire \sin_rom_2c[2]~15 ;
wire \sin_rom_2c[3]~16_combout ;
wire \cos_reg~3_combout ;
wire \cos_reg[3]~q ;
wire \cos_rom_2c[2]~15 ;
wire \cos_rom_2c[3]~16_combout ;
wire \sin_reg~4_combout ;
wire \sin_reg[4]~q ;
wire \sin_rom_2c[3]~17 ;
wire \sin_rom_2c[4]~18_combout ;
wire \cos_reg~4_combout ;
wire \cos_reg[4]~q ;
wire \cos_rom_2c[3]~17 ;
wire \cos_rom_2c[4]~18_combout ;
wire \sin_reg~5_combout ;
wire \sin_reg[5]~q ;
wire \sin_rom_2c[4]~19 ;
wire \sin_rom_2c[5]~20_combout ;
wire \cos_reg~5_combout ;
wire \cos_reg[5]~q ;
wire \cos_rom_2c[4]~19 ;
wire \cos_rom_2c[5]~20_combout ;
wire \sin_reg~6_combout ;
wire \sin_reg[6]~q ;
wire \sin_rom_2c[5]~21 ;
wire \sin_rom_2c[6]~22_combout ;
wire \cos_reg~6_combout ;
wire \cos_reg[6]~q ;
wire \cos_rom_2c[5]~21 ;
wire \cos_rom_2c[6]~22_combout ;
wire \sin_reg~7_combout ;
wire \sin_reg[7]~q ;
wire \sin_rom_2c[6]~23 ;
wire \sin_rom_2c[7]~24_combout ;
wire \cos_reg~7_combout ;
wire \cos_reg[7]~q ;
wire \cos_rom_2c[6]~23 ;
wire \cos_rom_2c[7]~24_combout ;
wire \sin_reg~8_combout ;
wire \sin_reg[8]~q ;
wire \sin_rom_2c[7]~25 ;
wire \sin_rom_2c[8]~26_combout ;
wire \cos_reg~8_combout ;
wire \cos_reg[8]~q ;
wire \cos_rom_2c[7]~25 ;
wire \cos_rom_2c[8]~26_combout ;
wire \cos_rom_2c[8]~27 ;
wire \cos_rom_2c[9]~28_combout ;
wire \sin_rom_2c[8]~27 ;
wire \sin_rom_2c[9]~28_combout ;
wire \cos_rom_d~0_combout ;
wire \sin_rom_d~0_combout ;
wire \cos_rom_d~1_combout ;
wire \sin_rom_d~1_combout ;
wire \cos_rom_d~2_combout ;
wire \sin_rom_d~2_combout ;
wire \cos_rom_d~3_combout ;
wire \sin_rom_d~3_combout ;
wire \cos_rom_d~4_combout ;
wire \sin_rom_d~4_combout ;
wire \cos_rom_d~5_combout ;
wire \sin_rom_d~5_combout ;
wire \cos_rom_d~6_combout ;
wire \sin_rom_d~6_combout ;
wire \cos_rom_d~7_combout ;
wire \sin_rom_d~7_combout ;
wire \cos_rom_d~8_combout ;
wire \sin_rom_d~8_combout ;


dffeas \sin_rom_2c[0] (
	.clk(clk),
	.d(\sin_rom_2c[0]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_0),
	.prn(vcc));
defparam \sin_rom_2c[0] .is_wysiwyg = "true";
defparam \sin_rom_2c[0] .power_up = "low";

dffeas \cos_rom_2c[0] (
	.clk(clk),
	.d(\cos_rom_2c[0]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_0),
	.prn(vcc));
defparam \cos_rom_2c[0] .is_wysiwyg = "true";
defparam \cos_rom_2c[0] .power_up = "low";

dffeas \sin_rom_2c[1] (
	.clk(clk),
	.d(\sin_rom_2c[1]~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_1),
	.prn(vcc));
defparam \sin_rom_2c[1] .is_wysiwyg = "true";
defparam \sin_rom_2c[1] .power_up = "low";

dffeas \cos_rom_2c[1] (
	.clk(clk),
	.d(\cos_rom_2c[1]~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_1),
	.prn(vcc));
defparam \cos_rom_2c[1] .is_wysiwyg = "true";
defparam \cos_rom_2c[1] .power_up = "low";

dffeas \sin_rom_2c[2] (
	.clk(clk),
	.d(\sin_rom_2c[2]~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_2),
	.prn(vcc));
defparam \sin_rom_2c[2] .is_wysiwyg = "true";
defparam \sin_rom_2c[2] .power_up = "low";

dffeas \cos_rom_2c[2] (
	.clk(clk),
	.d(\cos_rom_2c[2]~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_2),
	.prn(vcc));
defparam \cos_rom_2c[2] .is_wysiwyg = "true";
defparam \cos_rom_2c[2] .power_up = "low";

dffeas \sin_rom_2c[3] (
	.clk(clk),
	.d(\sin_rom_2c[3]~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_3),
	.prn(vcc));
defparam \sin_rom_2c[3] .is_wysiwyg = "true";
defparam \sin_rom_2c[3] .power_up = "low";

dffeas \cos_rom_2c[3] (
	.clk(clk),
	.d(\cos_rom_2c[3]~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_3),
	.prn(vcc));
defparam \cos_rom_2c[3] .is_wysiwyg = "true";
defparam \cos_rom_2c[3] .power_up = "low";

dffeas \sin_rom_2c[4] (
	.clk(clk),
	.d(\sin_rom_2c[4]~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_4),
	.prn(vcc));
defparam \sin_rom_2c[4] .is_wysiwyg = "true";
defparam \sin_rom_2c[4] .power_up = "low";

dffeas \cos_rom_2c[4] (
	.clk(clk),
	.d(\cos_rom_2c[4]~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_4),
	.prn(vcc));
defparam \cos_rom_2c[4] .is_wysiwyg = "true";
defparam \cos_rom_2c[4] .power_up = "low";

dffeas \sin_rom_2c[5] (
	.clk(clk),
	.d(\sin_rom_2c[5]~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_5),
	.prn(vcc));
defparam \sin_rom_2c[5] .is_wysiwyg = "true";
defparam \sin_rom_2c[5] .power_up = "low";

dffeas \cos_rom_2c[5] (
	.clk(clk),
	.d(\cos_rom_2c[5]~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_5),
	.prn(vcc));
defparam \cos_rom_2c[5] .is_wysiwyg = "true";
defparam \cos_rom_2c[5] .power_up = "low";

dffeas \sin_rom_2c[6] (
	.clk(clk),
	.d(\sin_rom_2c[6]~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_6),
	.prn(vcc));
defparam \sin_rom_2c[6] .is_wysiwyg = "true";
defparam \sin_rom_2c[6] .power_up = "low";

dffeas \cos_rom_2c[6] (
	.clk(clk),
	.d(\cos_rom_2c[6]~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_6),
	.prn(vcc));
defparam \cos_rom_2c[6] .is_wysiwyg = "true";
defparam \cos_rom_2c[6] .power_up = "low";

dffeas \sin_rom_2c[7] (
	.clk(clk),
	.d(\sin_rom_2c[7]~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_7),
	.prn(vcc));
defparam \sin_rom_2c[7] .is_wysiwyg = "true";
defparam \sin_rom_2c[7] .power_up = "low";

dffeas \cos_rom_2c[7] (
	.clk(clk),
	.d(\cos_rom_2c[7]~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_7),
	.prn(vcc));
defparam \cos_rom_2c[7] .is_wysiwyg = "true";
defparam \cos_rom_2c[7] .power_up = "low";

dffeas \sin_rom_2c[8] (
	.clk(clk),
	.d(\sin_rom_2c[8]~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_8),
	.prn(vcc));
defparam \sin_rom_2c[8] .is_wysiwyg = "true";
defparam \sin_rom_2c[8] .power_up = "low";

dffeas \cos_rom_2c[8] (
	.clk(clk),
	.d(\cos_rom_2c[8]~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_8),
	.prn(vcc));
defparam \cos_rom_2c[8] .is_wysiwyg = "true";
defparam \cos_rom_2c[8] .power_up = "low";

dffeas \cos_rom_2c[9] (
	.clk(clk),
	.d(\cos_rom_2c[9]~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_9),
	.prn(vcc));
defparam \cos_rom_2c[9] .is_wysiwyg = "true";
defparam \cos_rom_2c[9] .power_up = "low";

dffeas \sin_rom_2c[9] (
	.clk(clk),
	.d(\sin_rom_2c[9]~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_9),
	.prn(vcc));
defparam \sin_rom_2c[9] .is_wysiwyg = "true";
defparam \sin_rom_2c[9] .power_up = "low";

dffeas \cos_rom_d[0] (
	.clk(clk),
	.d(\cos_rom_d~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_0),
	.prn(vcc));
defparam \cos_rom_d[0] .is_wysiwyg = "true";
defparam \cos_rom_d[0] .power_up = "low";

dffeas \sin_rom_d[0] (
	.clk(clk),
	.d(\sin_rom_d~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_0),
	.prn(vcc));
defparam \sin_rom_d[0] .is_wysiwyg = "true";
defparam \sin_rom_d[0] .power_up = "low";

dffeas \cos_rom_d[1] (
	.clk(clk),
	.d(\cos_rom_d~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_1),
	.prn(vcc));
defparam \cos_rom_d[1] .is_wysiwyg = "true";
defparam \cos_rom_d[1] .power_up = "low";

dffeas \sin_rom_d[1] (
	.clk(clk),
	.d(\sin_rom_d~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_1),
	.prn(vcc));
defparam \sin_rom_d[1] .is_wysiwyg = "true";
defparam \sin_rom_d[1] .power_up = "low";

dffeas \cos_rom_d[2] (
	.clk(clk),
	.d(\cos_rom_d~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_2),
	.prn(vcc));
defparam \cos_rom_d[2] .is_wysiwyg = "true";
defparam \cos_rom_d[2] .power_up = "low";

dffeas \sin_rom_d[2] (
	.clk(clk),
	.d(\sin_rom_d~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_2),
	.prn(vcc));
defparam \sin_rom_d[2] .is_wysiwyg = "true";
defparam \sin_rom_d[2] .power_up = "low";

dffeas \cos_rom_d[3] (
	.clk(clk),
	.d(\cos_rom_d~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_3),
	.prn(vcc));
defparam \cos_rom_d[3] .is_wysiwyg = "true";
defparam \cos_rom_d[3] .power_up = "low";

dffeas \sin_rom_d[3] (
	.clk(clk),
	.d(\sin_rom_d~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_3),
	.prn(vcc));
defparam \sin_rom_d[3] .is_wysiwyg = "true";
defparam \sin_rom_d[3] .power_up = "low";

dffeas \cos_rom_d[4] (
	.clk(clk),
	.d(\cos_rom_d~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_4),
	.prn(vcc));
defparam \cos_rom_d[4] .is_wysiwyg = "true";
defparam \cos_rom_d[4] .power_up = "low";

dffeas \sin_rom_d[4] (
	.clk(clk),
	.d(\sin_rom_d~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_4),
	.prn(vcc));
defparam \sin_rom_d[4] .is_wysiwyg = "true";
defparam \sin_rom_d[4] .power_up = "low";

dffeas \cos_rom_d[5] (
	.clk(clk),
	.d(\cos_rom_d~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_5),
	.prn(vcc));
defparam \cos_rom_d[5] .is_wysiwyg = "true";
defparam \cos_rom_d[5] .power_up = "low";

dffeas \sin_rom_d[5] (
	.clk(clk),
	.d(\sin_rom_d~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_5),
	.prn(vcc));
defparam \sin_rom_d[5] .is_wysiwyg = "true";
defparam \sin_rom_d[5] .power_up = "low";

dffeas \cos_rom_d[6] (
	.clk(clk),
	.d(\cos_rom_d~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_6),
	.prn(vcc));
defparam \cos_rom_d[6] .is_wysiwyg = "true";
defparam \cos_rom_d[6] .power_up = "low";

dffeas \sin_rom_d[6] (
	.clk(clk),
	.d(\sin_rom_d~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_6),
	.prn(vcc));
defparam \sin_rom_d[6] .is_wysiwyg = "true";
defparam \sin_rom_d[6] .power_up = "low";

dffeas \cos_rom_d[7] (
	.clk(clk),
	.d(\cos_rom_d~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_7),
	.prn(vcc));
defparam \cos_rom_d[7] .is_wysiwyg = "true";
defparam \cos_rom_d[7] .power_up = "low";

dffeas \sin_rom_d[7] (
	.clk(clk),
	.d(\sin_rom_d~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_7),
	.prn(vcc));
defparam \sin_rom_d[7] .is_wysiwyg = "true";
defparam \sin_rom_d[7] .power_up = "low";

dffeas \cos_rom_d[8] (
	.clk(clk),
	.d(\cos_rom_d~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_8),
	.prn(vcc));
defparam \cos_rom_d[8] .is_wysiwyg = "true";
defparam \cos_rom_d[8] .power_up = "low";

dffeas \sin_rom_d[8] (
	.clk(clk),
	.d(\sin_rom_d~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_8),
	.prn(vcc));
defparam \sin_rom_d[8] .is_wysiwyg = "true";
defparam \sin_rom_d[8] .power_up = "low";

cycloneive_lcell_comb \sin_reg~0 (
	.dataa(reset_n),
	.datab(q_a_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~0_combout ),
	.cout());
defparam \sin_reg~0 .lut_mask = 16'hEEEE;
defparam \sin_reg~0 .sum_lutc_input = "datac";

dffeas \sin_reg[0] (
	.clk(clk),
	.d(\sin_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[0]~q ),
	.prn(vcc));
defparam \sin_reg[0] .is_wysiwyg = "true";
defparam \sin_reg[0] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[0]~10 (
	.dataa(\sin_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\sin_rom_2c[0]~10_combout ),
	.cout(\sin_rom_2c[0]~11 ));
defparam \sin_rom_2c[0]~10 .lut_mask = 16'hAA55;
defparam \sin_rom_2c[0]~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_reg~0 (
	.dataa(reset_n),
	.datab(q_a_01),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~0_combout ),
	.cout());
defparam \cos_reg~0 .lut_mask = 16'hEEEE;
defparam \cos_reg~0 .sum_lutc_input = "datac";

dffeas \cos_reg[0] (
	.clk(clk),
	.d(\cos_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[0]~q ),
	.prn(vcc));
defparam \cos_reg[0] .is_wysiwyg = "true";
defparam \cos_reg[0] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[0]~10 (
	.dataa(\cos_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\cos_rom_2c[0]~10_combout ),
	.cout(\cos_rom_2c[0]~11 ));
defparam \cos_rom_2c[0]~10 .lut_mask = 16'hAA55;
defparam \cos_rom_2c[0]~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_reg~1 (
	.dataa(reset_n),
	.datab(q_a_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~1_combout ),
	.cout());
defparam \sin_reg~1 .lut_mask = 16'hEEEE;
defparam \sin_reg~1 .sum_lutc_input = "datac";

dffeas \sin_reg[1] (
	.clk(clk),
	.d(\sin_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[1]~q ),
	.prn(vcc));
defparam \sin_reg[1] .is_wysiwyg = "true";
defparam \sin_reg[1] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[1]~12 (
	.dataa(\sin_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[0]~11 ),
	.combout(\sin_rom_2c[1]~12_combout ),
	.cout(\sin_rom_2c[1]~13 ));
defparam \sin_rom_2c[1]~12 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[1]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~1 (
	.dataa(reset_n),
	.datab(q_a_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~1_combout ),
	.cout());
defparam \cos_reg~1 .lut_mask = 16'hEEEE;
defparam \cos_reg~1 .sum_lutc_input = "datac";

dffeas \cos_reg[1] (
	.clk(clk),
	.d(\cos_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[1]~q ),
	.prn(vcc));
defparam \cos_reg[1] .is_wysiwyg = "true";
defparam \cos_reg[1] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[1]~12 (
	.dataa(\cos_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[0]~11 ),
	.combout(\cos_rom_2c[1]~12_combout ),
	.cout(\cos_rom_2c[1]~13 ));
defparam \cos_rom_2c[1]~12 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[1]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~2 (
	.dataa(reset_n),
	.datab(q_a_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~2_combout ),
	.cout());
defparam \sin_reg~2 .lut_mask = 16'hEEEE;
defparam \sin_reg~2 .sum_lutc_input = "datac";

dffeas \sin_reg[2] (
	.clk(clk),
	.d(\sin_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[2]~q ),
	.prn(vcc));
defparam \sin_reg[2] .is_wysiwyg = "true";
defparam \sin_reg[2] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[2]~14 (
	.dataa(\sin_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[1]~13 ),
	.combout(\sin_rom_2c[2]~14_combout ),
	.cout(\sin_rom_2c[2]~15 ));
defparam \sin_rom_2c[2]~14 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[2]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~2 (
	.dataa(reset_n),
	.datab(q_a_21),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~2_combout ),
	.cout());
defparam \cos_reg~2 .lut_mask = 16'hEEEE;
defparam \cos_reg~2 .sum_lutc_input = "datac";

dffeas \cos_reg[2] (
	.clk(clk),
	.d(\cos_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[2]~q ),
	.prn(vcc));
defparam \cos_reg[2] .is_wysiwyg = "true";
defparam \cos_reg[2] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[2]~14 (
	.dataa(\cos_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[1]~13 ),
	.combout(\cos_rom_2c[2]~14_combout ),
	.cout(\cos_rom_2c[2]~15 ));
defparam \cos_rom_2c[2]~14 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[2]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~3 (
	.dataa(reset_n),
	.datab(q_a_31),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~3_combout ),
	.cout());
defparam \sin_reg~3 .lut_mask = 16'hEEEE;
defparam \sin_reg~3 .sum_lutc_input = "datac";

dffeas \sin_reg[3] (
	.clk(clk),
	.d(\sin_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[3]~q ),
	.prn(vcc));
defparam \sin_reg[3] .is_wysiwyg = "true";
defparam \sin_reg[3] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[3]~16 (
	.dataa(\sin_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[2]~15 ),
	.combout(\sin_rom_2c[3]~16_combout ),
	.cout(\sin_rom_2c[3]~17 ));
defparam \sin_rom_2c[3]~16 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[3]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~3 (
	.dataa(reset_n),
	.datab(q_a_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~3_combout ),
	.cout());
defparam \cos_reg~3 .lut_mask = 16'hEEEE;
defparam \cos_reg~3 .sum_lutc_input = "datac";

dffeas \cos_reg[3] (
	.clk(clk),
	.d(\cos_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[3]~q ),
	.prn(vcc));
defparam \cos_reg[3] .is_wysiwyg = "true";
defparam \cos_reg[3] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[3]~16 (
	.dataa(\cos_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[2]~15 ),
	.combout(\cos_rom_2c[3]~16_combout ),
	.cout(\cos_rom_2c[3]~17 ));
defparam \cos_rom_2c[3]~16 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[3]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~4 (
	.dataa(reset_n),
	.datab(q_a_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~4_combout ),
	.cout());
defparam \sin_reg~4 .lut_mask = 16'hEEEE;
defparam \sin_reg~4 .sum_lutc_input = "datac";

dffeas \sin_reg[4] (
	.clk(clk),
	.d(\sin_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[4]~q ),
	.prn(vcc));
defparam \sin_reg[4] .is_wysiwyg = "true";
defparam \sin_reg[4] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[4]~18 (
	.dataa(\sin_reg[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[3]~17 ),
	.combout(\sin_rom_2c[4]~18_combout ),
	.cout(\sin_rom_2c[4]~19 ));
defparam \sin_rom_2c[4]~18 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[4]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~4 (
	.dataa(reset_n),
	.datab(q_a_41),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~4_combout ),
	.cout());
defparam \cos_reg~4 .lut_mask = 16'hEEEE;
defparam \cos_reg~4 .sum_lutc_input = "datac";

dffeas \cos_reg[4] (
	.clk(clk),
	.d(\cos_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[4]~q ),
	.prn(vcc));
defparam \cos_reg[4] .is_wysiwyg = "true";
defparam \cos_reg[4] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[4]~18 (
	.dataa(\cos_reg[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[3]~17 ),
	.combout(\cos_rom_2c[4]~18_combout ),
	.cout(\cos_rom_2c[4]~19 ));
defparam \cos_rom_2c[4]~18 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[4]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~5 (
	.dataa(reset_n),
	.datab(q_a_51),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~5_combout ),
	.cout());
defparam \sin_reg~5 .lut_mask = 16'hEEEE;
defparam \sin_reg~5 .sum_lutc_input = "datac";

dffeas \sin_reg[5] (
	.clk(clk),
	.d(\sin_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[5]~q ),
	.prn(vcc));
defparam \sin_reg[5] .is_wysiwyg = "true";
defparam \sin_reg[5] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[5]~20 (
	.dataa(\sin_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[4]~19 ),
	.combout(\sin_rom_2c[5]~20_combout ),
	.cout(\sin_rom_2c[5]~21 ));
defparam \sin_rom_2c[5]~20 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[5]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~5 (
	.dataa(reset_n),
	.datab(q_a_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~5_combout ),
	.cout());
defparam \cos_reg~5 .lut_mask = 16'hEEEE;
defparam \cos_reg~5 .sum_lutc_input = "datac";

dffeas \cos_reg[5] (
	.clk(clk),
	.d(\cos_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[5]~q ),
	.prn(vcc));
defparam \cos_reg[5] .is_wysiwyg = "true";
defparam \cos_reg[5] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[5]~20 (
	.dataa(\cos_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[4]~19 ),
	.combout(\cos_rom_2c[5]~20_combout ),
	.cout(\cos_rom_2c[5]~21 ));
defparam \cos_rom_2c[5]~20 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[5]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~6 (
	.dataa(reset_n),
	.datab(q_a_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~6_combout ),
	.cout());
defparam \sin_reg~6 .lut_mask = 16'hEEEE;
defparam \sin_reg~6 .sum_lutc_input = "datac";

dffeas \sin_reg[6] (
	.clk(clk),
	.d(\sin_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[6]~q ),
	.prn(vcc));
defparam \sin_reg[6] .is_wysiwyg = "true";
defparam \sin_reg[6] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[6]~22 (
	.dataa(\sin_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[5]~21 ),
	.combout(\sin_rom_2c[6]~22_combout ),
	.cout(\sin_rom_2c[6]~23 ));
defparam \sin_rom_2c[6]~22 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[6]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~6 (
	.dataa(reset_n),
	.datab(q_a_61),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~6_combout ),
	.cout());
defparam \cos_reg~6 .lut_mask = 16'hEEEE;
defparam \cos_reg~6 .sum_lutc_input = "datac";

dffeas \cos_reg[6] (
	.clk(clk),
	.d(\cos_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[6]~q ),
	.prn(vcc));
defparam \cos_reg[6] .is_wysiwyg = "true";
defparam \cos_reg[6] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[6]~22 (
	.dataa(\cos_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[5]~21 ),
	.combout(\cos_rom_2c[6]~22_combout ),
	.cout(\cos_rom_2c[6]~23 ));
defparam \cos_rom_2c[6]~22 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[6]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~7 (
	.dataa(reset_n),
	.datab(q_a_71),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~7_combout ),
	.cout());
defparam \sin_reg~7 .lut_mask = 16'hEEEE;
defparam \sin_reg~7 .sum_lutc_input = "datac";

dffeas \sin_reg[7] (
	.clk(clk),
	.d(\sin_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[7]~q ),
	.prn(vcc));
defparam \sin_reg[7] .is_wysiwyg = "true";
defparam \sin_reg[7] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[7]~24 (
	.dataa(\sin_reg[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[6]~23 ),
	.combout(\sin_rom_2c[7]~24_combout ),
	.cout(\sin_rom_2c[7]~25 ));
defparam \sin_rom_2c[7]~24 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[7]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~7 (
	.dataa(reset_n),
	.datab(q_a_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~7_combout ),
	.cout());
defparam \cos_reg~7 .lut_mask = 16'hEEEE;
defparam \cos_reg~7 .sum_lutc_input = "datac";

dffeas \cos_reg[7] (
	.clk(clk),
	.d(\cos_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[7]~q ),
	.prn(vcc));
defparam \cos_reg[7] .is_wysiwyg = "true";
defparam \cos_reg[7] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[7]~24 (
	.dataa(\cos_reg[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[6]~23 ),
	.combout(\cos_rom_2c[7]~24_combout ),
	.cout(\cos_rom_2c[7]~25 ));
defparam \cos_rom_2c[7]~24 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[7]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~8 (
	.dataa(reset_n),
	.datab(q_a_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~8_combout ),
	.cout());
defparam \sin_reg~8 .lut_mask = 16'hEEEE;
defparam \sin_reg~8 .sum_lutc_input = "datac";

dffeas \sin_reg[8] (
	.clk(clk),
	.d(\sin_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[8]~q ),
	.prn(vcc));
defparam \sin_reg[8] .is_wysiwyg = "true";
defparam \sin_reg[8] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[8]~26 (
	.dataa(\sin_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[7]~25 ),
	.combout(\sin_rom_2c[8]~26_combout ),
	.cout(\sin_rom_2c[8]~27 ));
defparam \sin_rom_2c[8]~26 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[8]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~8 (
	.dataa(reset_n),
	.datab(q_a_81),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~8_combout ),
	.cout());
defparam \cos_reg~8 .lut_mask = 16'hEEEE;
defparam \cos_reg~8 .sum_lutc_input = "datac";

dffeas \cos_reg[8] (
	.clk(clk),
	.d(\cos_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[8]~q ),
	.prn(vcc));
defparam \cos_reg[8] .is_wysiwyg = "true";
defparam \cos_reg[8] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[8]~26 (
	.dataa(\cos_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[7]~25 ),
	.combout(\cos_rom_2c[8]~26_combout ),
	.cout(\cos_rom_2c[8]~27 ));
defparam \cos_rom_2c[8]~26 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[8]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_rom_2c[9]~28 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\cos_rom_2c[8]~27 ),
	.combout(\cos_rom_2c[9]~28_combout ),
	.cout());
defparam \cos_rom_2c[9]~28 .lut_mask = 16'h0F0F;
defparam \cos_rom_2c[9]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_rom_2c[9]~28 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\sin_rom_2c[8]~27 ),
	.combout(\sin_rom_2c[9]~28_combout ),
	.cout());
defparam \sin_rom_2c[9]~28 .lut_mask = 16'h0F0F;
defparam \sin_rom_2c[9]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_rom_d~0 (
	.dataa(reset_n),
	.datab(\cos_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~0_combout ),
	.cout());
defparam \cos_rom_d~0 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~0 (
	.dataa(reset_n),
	.datab(\sin_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~0_combout ),
	.cout());
defparam \sin_rom_d~0 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~1 (
	.dataa(reset_n),
	.datab(\cos_reg[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~1_combout ),
	.cout());
defparam \cos_rom_d~1 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~1 (
	.dataa(reset_n),
	.datab(\sin_reg[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~1_combout ),
	.cout());
defparam \sin_rom_d~1 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~2 (
	.dataa(reset_n),
	.datab(\cos_reg[2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~2_combout ),
	.cout());
defparam \cos_rom_d~2 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~2 (
	.dataa(reset_n),
	.datab(\sin_reg[2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~2_combout ),
	.cout());
defparam \sin_rom_d~2 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~3 (
	.dataa(reset_n),
	.datab(\cos_reg[3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~3_combout ),
	.cout());
defparam \cos_rom_d~3 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~3 (
	.dataa(reset_n),
	.datab(\sin_reg[3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~3_combout ),
	.cout());
defparam \sin_rom_d~3 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~4 (
	.dataa(reset_n),
	.datab(\cos_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~4_combout ),
	.cout());
defparam \cos_rom_d~4 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~4 (
	.dataa(reset_n),
	.datab(\sin_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~4_combout ),
	.cout());
defparam \sin_rom_d~4 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~5 (
	.dataa(reset_n),
	.datab(\cos_reg[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~5_combout ),
	.cout());
defparam \cos_rom_d~5 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~5 (
	.dataa(reset_n),
	.datab(\sin_reg[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~5_combout ),
	.cout());
defparam \sin_rom_d~5 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~6 (
	.dataa(reset_n),
	.datab(\cos_reg[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~6_combout ),
	.cout());
defparam \cos_rom_d~6 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~6 (
	.dataa(reset_n),
	.datab(\sin_reg[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~6_combout ),
	.cout());
defparam \sin_rom_d~6 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~7 (
	.dataa(reset_n),
	.datab(\cos_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~7_combout ),
	.cout());
defparam \cos_rom_d~7 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~7 (
	.dataa(reset_n),
	.datab(\sin_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~7_combout ),
	.cout());
defparam \sin_rom_d~7 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~8 (
	.dataa(reset_n),
	.datab(\cos_reg[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~8_combout ),
	.cout());
defparam \cos_rom_d~8 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~8 (
	.dataa(reset_n),
	.datab(\sin_reg[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~8_combout ),
	.cout());
defparam \sin_rom_d~8 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~8 .sum_lutc_input = "datac";

endmodule