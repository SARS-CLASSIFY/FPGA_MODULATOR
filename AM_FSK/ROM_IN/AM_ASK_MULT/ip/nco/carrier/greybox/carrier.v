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

// DATE "02/09/2022 16:55:40"

// 
// Device: Altera EP4CE6F17C8 Package FBGA256
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module carrier (
	clk,
	clken,
	phi_inc_i,
	fsin_o,
	out_valid,
	reset_n)/* synthesis synthesis_greybox=1 */;
input 	clk;
input 	clken;
input 	[31:0] phi_inc_i;
output 	[13:0] fsin_o;
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
wire \nco_ii_0|ux122|data_out[10]~q ;
wire \nco_ii_0|ux122|data_out[11]~q ;
wire \nco_ii_0|ux122|data_out[12]~q ;
wire \nco_ii_0|ux122|data_out[13]~q ;
wire \~GND~combout ;
wire \reset_n~input_o ;
wire \clk~input_o ;
wire \clken~input_o ;
wire \phi_inc_i[18]~input_o ;
wire \phi_inc_i[17]~input_o ;
wire \phi_inc_i[16]~input_o ;
wire \phi_inc_i[15]~input_o ;
wire \phi_inc_i[14]~input_o ;
wire \phi_inc_i[13]~input_o ;
wire \phi_inc_i[12]~input_o ;
wire \phi_inc_i[11]~input_o ;
wire \phi_inc_i[10]~input_o ;
wire \phi_inc_i[9]~input_o ;
wire \phi_inc_i[8]~input_o ;
wire \phi_inc_i[7]~input_o ;
wire \phi_inc_i[6]~input_o ;
wire \phi_inc_i[5]~input_o ;
wire \phi_inc_i[4]~input_o ;
wire \phi_inc_i[3]~input_o ;
wire \phi_inc_i[2]~input_o ;
wire \phi_inc_i[1]~input_o ;
wire \phi_inc_i[0]~input_o ;
wire \phi_inc_i[29]~input_o ;
wire \phi_inc_i[28]~input_o ;
wire \phi_inc_i[27]~input_o ;
wire \phi_inc_i[26]~input_o ;
wire \phi_inc_i[25]~input_o ;
wire \phi_inc_i[24]~input_o ;
wire \phi_inc_i[23]~input_o ;
wire \phi_inc_i[22]~input_o ;
wire \phi_inc_i[21]~input_o ;
wire \phi_inc_i[20]~input_o ;
wire \phi_inc_i[19]~input_o ;
wire \phi_inc_i[31]~input_o ;
wire \phi_inc_i[30]~input_o ;


carrier_carrier_nco_ii_0 nco_ii_0(
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
	.data_out_10(\nco_ii_0|ux122|data_out[10]~q ),
	.data_out_11(\nco_ii_0|ux122|data_out[11]~q ),
	.data_out_12(\nco_ii_0|ux122|data_out[12]~q ),
	.data_out_13(\nco_ii_0|ux122|data_out[13]~q ),
	.GND_port(\~GND~combout ),
	.reset_n(\reset_n~input_o ),
	.clk(\clk~input_o ),
	.clken(\clken~input_o ),
	.phi_inc_i_18(\phi_inc_i[18]~input_o ),
	.phi_inc_i_17(\phi_inc_i[17]~input_o ),
	.phi_inc_i_16(\phi_inc_i[16]~input_o ),
	.phi_inc_i_15(\phi_inc_i[15]~input_o ),
	.phi_inc_i_14(\phi_inc_i[14]~input_o ),
	.phi_inc_i_13(\phi_inc_i[13]~input_o ),
	.phi_inc_i_12(\phi_inc_i[12]~input_o ),
	.phi_inc_i_11(\phi_inc_i[11]~input_o ),
	.phi_inc_i_10(\phi_inc_i[10]~input_o ),
	.phi_inc_i_9(\phi_inc_i[9]~input_o ),
	.phi_inc_i_8(\phi_inc_i[8]~input_o ),
	.phi_inc_i_7(\phi_inc_i[7]~input_o ),
	.phi_inc_i_6(\phi_inc_i[6]~input_o ),
	.phi_inc_i_5(\phi_inc_i[5]~input_o ),
	.phi_inc_i_4(\phi_inc_i[4]~input_o ),
	.phi_inc_i_3(\phi_inc_i[3]~input_o ),
	.phi_inc_i_2(\phi_inc_i[2]~input_o ),
	.phi_inc_i_1(\phi_inc_i[1]~input_o ),
	.phi_inc_i_0(\phi_inc_i[0]~input_o ),
	.phi_inc_i_29(\phi_inc_i[29]~input_o ),
	.phi_inc_i_28(\phi_inc_i[28]~input_o ),
	.phi_inc_i_27(\phi_inc_i[27]~input_o ),
	.phi_inc_i_26(\phi_inc_i[26]~input_o ),
	.phi_inc_i_25(\phi_inc_i[25]~input_o ),
	.phi_inc_i_24(\phi_inc_i[24]~input_o ),
	.phi_inc_i_23(\phi_inc_i[23]~input_o ),
	.phi_inc_i_22(\phi_inc_i[22]~input_o ),
	.phi_inc_i_21(\phi_inc_i[21]~input_o ),
	.phi_inc_i_20(\phi_inc_i[20]~input_o ),
	.phi_inc_i_19(\phi_inc_i[19]~input_o ),
	.phi_inc_i_31(\phi_inc_i[31]~input_o ),
	.phi_inc_i_30(\phi_inc_i[30]~input_o ));

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

assign \phi_inc_i[18]~input_o  = phi_inc_i[18];

assign \phi_inc_i[17]~input_o  = phi_inc_i[17];

assign \phi_inc_i[16]~input_o  = phi_inc_i[16];

assign \phi_inc_i[15]~input_o  = phi_inc_i[15];

assign \phi_inc_i[14]~input_o  = phi_inc_i[14];

assign \phi_inc_i[13]~input_o  = phi_inc_i[13];

assign \phi_inc_i[12]~input_o  = phi_inc_i[12];

assign \phi_inc_i[11]~input_o  = phi_inc_i[11];

assign \phi_inc_i[10]~input_o  = phi_inc_i[10];

assign \phi_inc_i[9]~input_o  = phi_inc_i[9];

assign \phi_inc_i[8]~input_o  = phi_inc_i[8];

assign \phi_inc_i[7]~input_o  = phi_inc_i[7];

assign \phi_inc_i[6]~input_o  = phi_inc_i[6];

assign \phi_inc_i[5]~input_o  = phi_inc_i[5];

assign \phi_inc_i[4]~input_o  = phi_inc_i[4];

assign \phi_inc_i[3]~input_o  = phi_inc_i[3];

assign \phi_inc_i[2]~input_o  = phi_inc_i[2];

assign \phi_inc_i[1]~input_o  = phi_inc_i[1];

assign \phi_inc_i[0]~input_o  = phi_inc_i[0];

assign \phi_inc_i[29]~input_o  = phi_inc_i[29];

assign \phi_inc_i[28]~input_o  = phi_inc_i[28];

assign \phi_inc_i[27]~input_o  = phi_inc_i[27];

assign \phi_inc_i[26]~input_o  = phi_inc_i[26];

assign \phi_inc_i[25]~input_o  = phi_inc_i[25];

assign \phi_inc_i[24]~input_o  = phi_inc_i[24];

assign \phi_inc_i[23]~input_o  = phi_inc_i[23];

assign \phi_inc_i[22]~input_o  = phi_inc_i[22];

assign \phi_inc_i[21]~input_o  = phi_inc_i[21];

assign \phi_inc_i[20]~input_o  = phi_inc_i[20];

assign \phi_inc_i[19]~input_o  = phi_inc_i[19];

assign \phi_inc_i[31]~input_o  = phi_inc_i[31];

assign \phi_inc_i[30]~input_o  = phi_inc_i[30];

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

assign fsin_o[10] = \nco_ii_0|ux122|data_out[10]~q ;

assign fsin_o[11] = \nco_ii_0|ux122|data_out[11]~q ;

assign fsin_o[12] = \nco_ii_0|ux122|data_out[12]~q ;

assign fsin_o[13] = \nco_ii_0|ux122|data_out[13]~q ;

assign out_valid = \nco_ii_0|ux710isdr|data_ready~q ;

endmodule

module carrier_carrier_nco_ii_0 (
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
	data_out_10,
	data_out_11,
	data_out_12,
	data_out_13,
	GND_port,
	reset_n,
	clk,
	clken,
	phi_inc_i_18,
	phi_inc_i_17,
	phi_inc_i_16,
	phi_inc_i_15,
	phi_inc_i_14,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_0,
	phi_inc_i_29,
	phi_inc_i_28,
	phi_inc_i_27,
	phi_inc_i_26,
	phi_inc_i_25,
	phi_inc_i_24,
	phi_inc_i_23,
	phi_inc_i_22,
	phi_inc_i_21,
	phi_inc_i_20,
	phi_inc_i_19,
	phi_inc_i_31,
	phi_inc_i_30)/* synthesis synthesis_greybox=1 */;
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
output 	data_out_10;
output 	data_out_11;
output 	data_out_12;
output 	data_out_13;
input 	GND_port;
input 	reset_n;
input 	clk;
input 	clken;
input 	phi_inc_i_18;
input 	phi_inc_i_17;
input 	phi_inc_i_16;
input 	phi_inc_i_15;
input 	phi_inc_i_14;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_0;
input 	phi_inc_i_29;
input 	phi_inc_i_28;
input 	phi_inc_i_27;
input 	phi_inc_i_26;
input 	phi_inc_i_25;
input 	phi_inc_i_24;
input 	phi_inc_i_23;
input 	phi_inc_i_22;
input 	phi_inc_i_21;
input 	phi_inc_i_20;
input 	phi_inc_i_19;
input 	phi_inc_i_31;
input 	phi_inc_i_30;

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
wire \rot|sin_o[10]~q ;
wire \rot|sin_o[11]~q ;
wire \rot|sin_o[12]~q ;
wire \rot|sin_o[13]~q ;
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
wire \sid2c|sin_rom_2c[9]~q ;
wire \sid2c|cos_rom_2c[9]~q ;
wire \sid2c|sin_rom_2c[10]~q ;
wire \sid2c|cos_rom_2c[10]~q ;
wire \sid2c|sin_rom_2c[11]~q ;
wire \sid2c|cos_rom_2c[11]~q ;
wire \sid2c|sin_rom_2c[12]~q ;
wire \sid2c|cos_rom_2c[12]~q ;
wire \sid2c|cos_rom_2c[13]~q ;
wire \sid2c|sin_rom_2c[13]~q ;
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
wire \ux0121|altsyncram_component0|auto_generated|q_a[9] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[9] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[10] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[10] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[11] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[11] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[12] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[12] ;
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
wire \ux001|dxxrv[3]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[18]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[17]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[16]~q ;
wire \ux001|dxxrv[2]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[15]~q ;
wire \ux001|dxxrv[1]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[14]~q ;
wire \ux001|dxxrv[0]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[13]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[29]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[28]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[27]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[26]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[25]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[24]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[23]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[22]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[21]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[20]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[19]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[31]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[30]~q ;
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
wire \sid2c|cos_rom_d[9]~q ;
wire \sid2c|sin_rom_d[9]~q ;
wire \sid2c|cos_rom_d[10]~q ;
wire \sid2c|sin_rom_d[10]~q ;
wire \sid2c|cos_rom_d[11]~q ;
wire \sid2c|sin_rom_d[11]~q ;
wire \sid2c|cos_rom_d[12]~q ;
wire \sid2c|sin_rom_d[12]~q ;
wire \ux002|dxxpdo[5]~q ;
wire \ux002|dxxpdo[16]~q ;
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
wire \ux002|dxxpdo[18]~q ;
wire \ux002|dxxpdo[17]~q ;


carrier_asj_nco_isdr ux710isdr(
	.data_ready1(data_ready),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

carrier_asj_nco_mob_rw ux122(
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
	.sin_o_10(\rot|sin_o[10]~q ),
	.sin_o_11(\rot|sin_o[11]~q ),
	.sin_o_12(\rot|sin_o[12]~q ),
	.sin_o_13(\rot|sin_o[13]~q ),
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
	.data_out_10(data_out_10),
	.data_out_11(data_out_11),
	.data_out_12(data_out_12),
	.data_out_13(data_out_13),
	.data_out_01(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

carrier_segment_sel rot(
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
	.sin_o_10(\rot|sin_o[10]~q ),
	.sin_o_11(\rot|sin_o[11]~q ),
	.sin_o_12(\rot|sin_o[12]~q ),
	.sin_o_13(\rot|sin_o[13]~q ),
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
	.sin_rom_2c_9(\sid2c|sin_rom_2c[9]~q ),
	.cos_rom_2c_9(\sid2c|cos_rom_2c[9]~q ),
	.sin_rom_2c_10(\sid2c|sin_rom_2c[10]~q ),
	.cos_rom_2c_10(\sid2c|cos_rom_2c[10]~q ),
	.sin_rom_2c_11(\sid2c|sin_rom_2c[11]~q ),
	.cos_rom_2c_11(\sid2c|cos_rom_2c[11]~q ),
	.sin_rom_2c_12(\sid2c|sin_rom_2c[12]~q ),
	.cos_rom_2c_12(\sid2c|cos_rom_2c[12]~q ),
	.cos_rom_2c_13(\sid2c|cos_rom_2c[13]~q ),
	.sin_rom_2c_13(\sid2c|sin_rom_2c[13]~q ),
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
	.cos_rom_d_9(\sid2c|cos_rom_d[9]~q ),
	.sin_rom_d_9(\sid2c|sin_rom_d[9]~q ),
	.cos_rom_d_10(\sid2c|cos_rom_d[10]~q ),
	.sin_rom_d_10(\sid2c|sin_rom_d[10]~q ),
	.cos_rom_d_11(\sid2c|cos_rom_d[11]~q ),
	.sin_rom_d_11(\sid2c|sin_rom_d[11]~q ),
	.cos_rom_d_12(\sid2c|cos_rom_d[12]~q ),
	.sin_rom_d_12(\sid2c|sin_rom_d[12]~q ),
	.reset_n(reset_n),
	.clk(clk));

carrier_asj_nco_as_m_cen_1 ux0121(
	.q_a_0(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0121|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0121|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0121|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_12(\ux0121|altsyncram_component0|auto_generated|q_a[12] ),
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
	.clk(clk),
	.clken(clken));

carrier_asj_nco_as_m_cen ux0120(
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0120|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0120|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0120|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_12(\ux0120|altsyncram_component0|auto_generated|q_a[12] ),
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
	.clk(clk),
	.clken(clken));

carrier_sid_2c_1p sid2c(
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
	.sin_rom_2c_9(\sid2c|sin_rom_2c[9]~q ),
	.cos_rom_2c_9(\sid2c|cos_rom_2c[9]~q ),
	.sin_rom_2c_10(\sid2c|sin_rom_2c[10]~q ),
	.cos_rom_2c_10(\sid2c|cos_rom_2c[10]~q ),
	.sin_rom_2c_11(\sid2c|sin_rom_2c[11]~q ),
	.cos_rom_2c_11(\sid2c|cos_rom_2c[11]~q ),
	.sin_rom_2c_12(\sid2c|sin_rom_2c[12]~q ),
	.cos_rom_2c_12(\sid2c|cos_rom_2c[12]~q ),
	.cos_rom_2c_13(\sid2c|cos_rom_2c[13]~q ),
	.sin_rom_2c_13(\sid2c|sin_rom_2c[13]~q ),
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
	.q_a_9(\ux0121|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_91(\ux0120|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0120|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_101(\ux0121|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_111(\ux0121|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_112(\ux0120|altsyncram_component0|auto_generated|q_a[11] ),
	.q_a_12(\ux0120|altsyncram_component0|auto_generated|q_a[12] ),
	.q_a_121(\ux0121|altsyncram_component0|auto_generated|q_a[12] ),
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
	.cos_rom_d_9(\sid2c|cos_rom_d[9]~q ),
	.sin_rom_d_9(\sid2c|sin_rom_d[9]~q ),
	.cos_rom_d_10(\sid2c|cos_rom_d[10]~q ),
	.sin_rom_d_10(\sid2c|sin_rom_d[10]~q ),
	.cos_rom_d_11(\sid2c|cos_rom_d[11]~q ),
	.sin_rom_d_11(\sid2c|sin_rom_d[11]~q ),
	.cos_rom_d_12(\sid2c|cos_rom_d[12]~q ),
	.sin_rom_d_12(\sid2c|sin_rom_d[12]~q ),
	.reset_n(reset_n),
	.clk(clk));

carrier_asj_gar ux007(
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
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
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
	.reset_n(reset_n),
	.clk(clk));

carrier_asj_dxx ux002(
	.dxxrv_3(\ux001|dxxrv[3]~q ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~q ),
	.dxxrv_2(\ux001|dxxrv[2]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.dxxrv_1(\ux001|dxxrv[1]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.dxxrv_0(\ux001|dxxrv[0]~q ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_29(\ux000|acc|auto_generated|pipeline_dffe[29]~q ),
	.pipeline_dffe_28(\ux000|acc|auto_generated|pipeline_dffe[28]~q ),
	.pipeline_dffe_27(\ux000|acc|auto_generated|pipeline_dffe[27]~q ),
	.pipeline_dffe_26(\ux000|acc|auto_generated|pipeline_dffe[26]~q ),
	.pipeline_dffe_25(\ux000|acc|auto_generated|pipeline_dffe[25]~q ),
	.pipeline_dffe_24(\ux000|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~q ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_31(\ux000|acc|auto_generated|pipeline_dffe[31]~q ),
	.pipeline_dffe_30(\ux000|acc|auto_generated|pipeline_dffe[30]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
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
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.reset_n(reset_n),
	.clk(clk));

carrier_asj_dxx_g ux001(
	.dxxrv_3(\ux001|dxxrv[3]~q ),
	.dxxrv_2(\ux001|dxxrv[2]~q ),
	.dxxrv_1(\ux001|dxxrv[1]~q ),
	.dxxrv_0(\ux001|dxxrv[0]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk));

carrier_asj_altqmcpipe ux000(
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_29(\ux000|acc|auto_generated|pipeline_dffe[29]~q ),
	.pipeline_dffe_28(\ux000|acc|auto_generated|pipeline_dffe[28]~q ),
	.pipeline_dffe_27(\ux000|acc|auto_generated|pipeline_dffe[27]~q ),
	.pipeline_dffe_26(\ux000|acc|auto_generated|pipeline_dffe[26]~q ),
	.pipeline_dffe_25(\ux000|acc|auto_generated|pipeline_dffe[25]~q ),
	.pipeline_dffe_24(\ux000|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~q ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_31(\ux000|acc|auto_generated|pipeline_dffe[31]~q ),
	.pipeline_dffe_30(\ux000|acc|auto_generated|pipeline_dffe[30]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken),
	.phi_inc_i_18(phi_inc_i_18),
	.phi_inc_i_17(phi_inc_i_17),
	.phi_inc_i_16(phi_inc_i_16),
	.phi_inc_i_15(phi_inc_i_15),
	.phi_inc_i_14(phi_inc_i_14),
	.phi_inc_i_13(phi_inc_i_13),
	.phi_inc_i_12(phi_inc_i_12),
	.phi_inc_i_11(phi_inc_i_11),
	.phi_inc_i_10(phi_inc_i_10),
	.phi_inc_i_9(phi_inc_i_9),
	.phi_inc_i_8(phi_inc_i_8),
	.phi_inc_i_7(phi_inc_i_7),
	.phi_inc_i_6(phi_inc_i_6),
	.phi_inc_i_5(phi_inc_i_5),
	.phi_inc_i_4(phi_inc_i_4),
	.phi_inc_i_3(phi_inc_i_3),
	.phi_inc_i_2(phi_inc_i_2),
	.phi_inc_i_1(phi_inc_i_1),
	.phi_inc_i_0(phi_inc_i_0),
	.phi_inc_i_29(phi_inc_i_29),
	.phi_inc_i_28(phi_inc_i_28),
	.phi_inc_i_27(phi_inc_i_27),
	.phi_inc_i_26(phi_inc_i_26),
	.phi_inc_i_25(phi_inc_i_25),
	.phi_inc_i_24(phi_inc_i_24),
	.phi_inc_i_23(phi_inc_i_23),
	.phi_inc_i_22(phi_inc_i_22),
	.phi_inc_i_21(phi_inc_i_21),
	.phi_inc_i_20(phi_inc_i_20),
	.phi_inc_i_19(phi_inc_i_19),
	.phi_inc_i_31(phi_inc_i_31),
	.phi_inc_i_30(phi_inc_i_30));

carrier_segment_arr_tdl tdl(
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.seg_rot_2(\tdl|seg_rot[2]~q ),
	.seg_rot_1(\tdl|seg_rot[1]~q ),
	.seg_rot_0(\tdl|seg_rot[0]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.reset_n(reset_n),
	.clk(clk));

endmodule

module carrier_asj_altqmcpipe (
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_29,
	pipeline_dffe_28,
	pipeline_dffe_27,
	pipeline_dffe_26,
	pipeline_dffe_25,
	pipeline_dffe_24,
	pipeline_dffe_23,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_31,
	pipeline_dffe_30,
	data_out_0,
	reset_n,
	clk,
	clken,
	phi_inc_i_18,
	phi_inc_i_17,
	phi_inc_i_16,
	phi_inc_i_15,
	phi_inc_i_14,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_0,
	phi_inc_i_29,
	phi_inc_i_28,
	phi_inc_i_27,
	phi_inc_i_26,
	phi_inc_i_25,
	phi_inc_i_24,
	phi_inc_i_23,
	phi_inc_i_22,
	phi_inc_i_21,
	phi_inc_i_20,
	phi_inc_i_19,
	phi_inc_i_31,
	phi_inc_i_30)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_29;
output 	pipeline_dffe_28;
output 	pipeline_dffe_27;
output 	pipeline_dffe_26;
output 	pipeline_dffe_25;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_31;
output 	pipeline_dffe_30;
input 	data_out_0;
input 	reset_n;
input 	clk;
input 	clken;
input 	phi_inc_i_18;
input 	phi_inc_i_17;
input 	phi_inc_i_16;
input 	phi_inc_i_15;
input 	phi_inc_i_14;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_0;
input 	phi_inc_i_29;
input 	phi_inc_i_28;
input 	phi_inc_i_27;
input 	phi_inc_i_26;
input 	phi_inc_i_25;
input 	phi_inc_i_24;
input 	phi_inc_i_23;
input 	phi_inc_i_22;
input 	phi_inc_i_21;
input 	phi_inc_i_20;
input 	phi_inc_i_19;
input 	phi_inc_i_31;
input 	phi_inc_i_30;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_int_arr_reg[18]~q ;
wire \phi_int_arr_reg[17]~q ;
wire \phi_int_arr_reg[16]~q ;
wire \phi_int_arr_reg[15]~q ;
wire \phi_int_arr_reg[14]~q ;
wire \phi_int_arr_reg[13]~q ;
wire \phi_int_arr_reg[12]~q ;
wire \phi_int_arr_reg[11]~q ;
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
wire \phi_int_arr_reg[29]~q ;
wire \phi_int_arr_reg[28]~q ;
wire \phi_int_arr_reg[27]~q ;
wire \phi_int_arr_reg[26]~q ;
wire \phi_int_arr_reg[25]~q ;
wire \phi_int_arr_reg[24]~q ;
wire \phi_int_arr_reg[23]~q ;
wire \phi_int_arr_reg[22]~q ;
wire \phi_int_arr_reg[21]~q ;
wire \phi_int_arr_reg[20]~q ;
wire \phi_int_arr_reg[19]~q ;
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
wire \phi_int_arr_reg~23_combout ;
wire \phi_int_arr_reg~24_combout ;
wire \phi_int_arr_reg~25_combout ;
wire \phi_int_arr_reg~26_combout ;
wire \phi_int_arr_reg~27_combout ;
wire \phi_int_arr_reg~28_combout ;
wire \phi_int_arr_reg~29_combout ;
wire \phi_int_arr_reg[31]~q ;
wire \phi_int_arr_reg[30]~q ;
wire \phi_int_arr_reg~30_combout ;
wire \phi_int_arr_reg~31_combout ;


carrier_lpm_add_sub_1 acc(
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_29(pipeline_dffe_29),
	.pipeline_dffe_28(pipeline_dffe_28),
	.pipeline_dffe_27(pipeline_dffe_27),
	.pipeline_dffe_26(pipeline_dffe_26),
	.pipeline_dffe_25(pipeline_dffe_25),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_23(pipeline_dffe_23),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_31(pipeline_dffe_31),
	.pipeline_dffe_30(pipeline_dffe_30),
	.phi_int_arr_reg_18(\phi_int_arr_reg[18]~q ),
	.phi_int_arr_reg_17(\phi_int_arr_reg[17]~q ),
	.phi_int_arr_reg_16(\phi_int_arr_reg[16]~q ),
	.phi_int_arr_reg_15(\phi_int_arr_reg[15]~q ),
	.phi_int_arr_reg_14(\phi_int_arr_reg[14]~q ),
	.phi_int_arr_reg_13(\phi_int_arr_reg[13]~q ),
	.phi_int_arr_reg_12(\phi_int_arr_reg[12]~q ),
	.phi_int_arr_reg_11(\phi_int_arr_reg[11]~q ),
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
	.phi_int_arr_reg_29(\phi_int_arr_reg[29]~q ),
	.phi_int_arr_reg_28(\phi_int_arr_reg[28]~q ),
	.phi_int_arr_reg_27(\phi_int_arr_reg[27]~q ),
	.phi_int_arr_reg_26(\phi_int_arr_reg[26]~q ),
	.phi_int_arr_reg_25(\phi_int_arr_reg[25]~q ),
	.phi_int_arr_reg_24(\phi_int_arr_reg[24]~q ),
	.phi_int_arr_reg_23(\phi_int_arr_reg[23]~q ),
	.phi_int_arr_reg_22(\phi_int_arr_reg[22]~q ),
	.phi_int_arr_reg_21(\phi_int_arr_reg[21]~q ),
	.phi_int_arr_reg_20(\phi_int_arr_reg[20]~q ),
	.phi_int_arr_reg_19(\phi_int_arr_reg[19]~q ),
	.phi_int_arr_reg_31(\phi_int_arr_reg[31]~q ),
	.phi_int_arr_reg_30(\phi_int_arr_reg[30]~q ),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas \phi_int_arr_reg[18] (
	.clk(clk),
	.d(\phi_int_arr_reg~0_combout ),
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
	.d(\phi_int_arr_reg~1_combout ),
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
	.d(\phi_int_arr_reg~2_combout ),
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
	.d(\phi_int_arr_reg~3_combout ),
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
	.d(\phi_int_arr_reg~4_combout ),
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
	.d(\phi_int_arr_reg~5_combout ),
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
	.d(\phi_int_arr_reg~6_combout ),
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
	.d(\phi_int_arr_reg~7_combout ),
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

dffeas \phi_int_arr_reg[10] (
	.clk(clk),
	.d(\phi_int_arr_reg~8_combout ),
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
	.d(\phi_int_arr_reg~9_combout ),
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
	.d(\phi_int_arr_reg~10_combout ),
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
	.d(\phi_int_arr_reg~11_combout ),
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
	.d(\phi_int_arr_reg~12_combout ),
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
	.d(\phi_int_arr_reg~13_combout ),
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
	.d(\phi_int_arr_reg~14_combout ),
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
	.d(\phi_int_arr_reg~15_combout ),
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
	.d(\phi_int_arr_reg~16_combout ),
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
	.d(\phi_int_arr_reg~17_combout ),
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
	.d(\phi_int_arr_reg~18_combout ),
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

dffeas \phi_int_arr_reg[29] (
	.clk(clk),
	.d(\phi_int_arr_reg~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[29]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[29] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[29] .power_up = "low";

dffeas \phi_int_arr_reg[28] (
	.clk(clk),
	.d(\phi_int_arr_reg~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[28]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[28] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[28] .power_up = "low";

dffeas \phi_int_arr_reg[27] (
	.clk(clk),
	.d(\phi_int_arr_reg~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[27]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[27] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[27] .power_up = "low";

dffeas \phi_int_arr_reg[26] (
	.clk(clk),
	.d(\phi_int_arr_reg~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[26]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[26] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[26] .power_up = "low";

dffeas \phi_int_arr_reg[25] (
	.clk(clk),
	.d(\phi_int_arr_reg~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[25]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[25] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[25] .power_up = "low";

dffeas \phi_int_arr_reg[24] (
	.clk(clk),
	.d(\phi_int_arr_reg~24_combout ),
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
	.d(\phi_int_arr_reg~25_combout ),
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

dffeas \phi_int_arr_reg[22] (
	.clk(clk),
	.d(\phi_int_arr_reg~26_combout ),
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
	.d(\phi_int_arr_reg~27_combout ),
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
	.d(\phi_int_arr_reg~28_combout ),
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
	.d(\phi_int_arr_reg~29_combout ),
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

cycloneive_lcell_comb \phi_int_arr_reg~0 (
	.dataa(reset_n),
	.datab(phi_inc_i_18),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~0_combout ),
	.cout());
defparam \phi_int_arr_reg~0 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~1 (
	.dataa(reset_n),
	.datab(phi_inc_i_17),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~1_combout ),
	.cout());
defparam \phi_int_arr_reg~1 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~2 (
	.dataa(reset_n),
	.datab(phi_inc_i_16),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~2_combout ),
	.cout());
defparam \phi_int_arr_reg~2 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~3 (
	.dataa(reset_n),
	.datab(phi_inc_i_15),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~3_combout ),
	.cout());
defparam \phi_int_arr_reg~3 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~4 (
	.dataa(reset_n),
	.datab(phi_inc_i_14),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~4_combout ),
	.cout());
defparam \phi_int_arr_reg~4 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~5 (
	.dataa(reset_n),
	.datab(phi_inc_i_13),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~5_combout ),
	.cout());
defparam \phi_int_arr_reg~5 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~6 (
	.dataa(reset_n),
	.datab(phi_inc_i_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~6_combout ),
	.cout());
defparam \phi_int_arr_reg~6 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~7 (
	.dataa(reset_n),
	.datab(phi_inc_i_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~7_combout ),
	.cout());
defparam \phi_int_arr_reg~7 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~8 (
	.dataa(reset_n),
	.datab(phi_inc_i_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~8_combout ),
	.cout());
defparam \phi_int_arr_reg~8 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~9 (
	.dataa(reset_n),
	.datab(phi_inc_i_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~9_combout ),
	.cout());
defparam \phi_int_arr_reg~9 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~10 (
	.dataa(reset_n),
	.datab(phi_inc_i_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~10_combout ),
	.cout());
defparam \phi_int_arr_reg~10 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~11 (
	.dataa(reset_n),
	.datab(phi_inc_i_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~11_combout ),
	.cout());
defparam \phi_int_arr_reg~11 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~12 (
	.dataa(reset_n),
	.datab(phi_inc_i_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~12_combout ),
	.cout());
defparam \phi_int_arr_reg~12 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~13 (
	.dataa(reset_n),
	.datab(phi_inc_i_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~13_combout ),
	.cout());
defparam \phi_int_arr_reg~13 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~14 (
	.dataa(reset_n),
	.datab(phi_inc_i_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~14_combout ),
	.cout());
defparam \phi_int_arr_reg~14 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~15 (
	.dataa(reset_n),
	.datab(phi_inc_i_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~15_combout ),
	.cout());
defparam \phi_int_arr_reg~15 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~16 (
	.dataa(reset_n),
	.datab(phi_inc_i_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~16_combout ),
	.cout());
defparam \phi_int_arr_reg~16 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~17 (
	.dataa(reset_n),
	.datab(phi_inc_i_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~17_combout ),
	.cout());
defparam \phi_int_arr_reg~17 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~18 (
	.dataa(reset_n),
	.datab(phi_inc_i_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~18_combout ),
	.cout());
defparam \phi_int_arr_reg~18 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~18 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~19 (
	.dataa(reset_n),
	.datab(phi_inc_i_29),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~19_combout ),
	.cout());
defparam \phi_int_arr_reg~19 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~19 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~20 (
	.dataa(reset_n),
	.datab(phi_inc_i_28),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~20_combout ),
	.cout());
defparam \phi_int_arr_reg~20 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~20 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~21 (
	.dataa(reset_n),
	.datab(phi_inc_i_27),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~21_combout ),
	.cout());
defparam \phi_int_arr_reg~21 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~21 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~22 (
	.dataa(reset_n),
	.datab(phi_inc_i_26),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~22_combout ),
	.cout());
defparam \phi_int_arr_reg~22 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~22 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~23 (
	.dataa(reset_n),
	.datab(phi_inc_i_25),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~23_combout ),
	.cout());
defparam \phi_int_arr_reg~23 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~23 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~24 (
	.dataa(reset_n),
	.datab(phi_inc_i_24),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~24_combout ),
	.cout());
defparam \phi_int_arr_reg~24 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~24 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~25 (
	.dataa(reset_n),
	.datab(phi_inc_i_23),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~25_combout ),
	.cout());
defparam \phi_int_arr_reg~25 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~26 (
	.dataa(reset_n),
	.datab(phi_inc_i_22),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~26_combout ),
	.cout());
defparam \phi_int_arr_reg~26 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~27 (
	.dataa(reset_n),
	.datab(phi_inc_i_21),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~27_combout ),
	.cout());
defparam \phi_int_arr_reg~27 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~27 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~28 (
	.dataa(reset_n),
	.datab(phi_inc_i_20),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~28_combout ),
	.cout());
defparam \phi_int_arr_reg~28 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~29 (
	.dataa(reset_n),
	.datab(phi_inc_i_19),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~29_combout ),
	.cout());
defparam \phi_int_arr_reg~29 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~29 .sum_lutc_input = "datac";

dffeas \phi_int_arr_reg[31] (
	.clk(clk),
	.d(\phi_int_arr_reg~30_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[31]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[31] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[31] .power_up = "low";

dffeas \phi_int_arr_reg[30] (
	.clk(clk),
	.d(\phi_int_arr_reg~31_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[30]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[30] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[30] .power_up = "low";

cycloneive_lcell_comb \phi_int_arr_reg~30 (
	.dataa(reset_n),
	.datab(phi_inc_i_31),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~30_combout ),
	.cout());
defparam \phi_int_arr_reg~30 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~31 (
	.dataa(reset_n),
	.datab(phi_inc_i_30),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~31_combout ),
	.cout());
defparam \phi_int_arr_reg~31 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~31 .sum_lutc_input = "datac";

endmodule

module carrier_lpm_add_sub_1 (
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_29,
	pipeline_dffe_28,
	pipeline_dffe_27,
	pipeline_dffe_26,
	pipeline_dffe_25,
	pipeline_dffe_24,
	pipeline_dffe_23,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_31,
	pipeline_dffe_30,
	phi_int_arr_reg_18,
	phi_int_arr_reg_17,
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
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
	phi_int_arr_reg_29,
	phi_int_arr_reg_28,
	phi_int_arr_reg_27,
	phi_int_arr_reg_26,
	phi_int_arr_reg_25,
	phi_int_arr_reg_24,
	phi_int_arr_reg_23,
	phi_int_arr_reg_22,
	phi_int_arr_reg_21,
	phi_int_arr_reg_20,
	phi_int_arr_reg_19,
	phi_int_arr_reg_31,
	phi_int_arr_reg_30,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_29;
output 	pipeline_dffe_28;
output 	pipeline_dffe_27;
output 	pipeline_dffe_26;
output 	pipeline_dffe_25;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_31;
output 	pipeline_dffe_30;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
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
input 	phi_int_arr_reg_29;
input 	phi_int_arr_reg_28;
input 	phi_int_arr_reg_27;
input 	phi_int_arr_reg_26;
input 	phi_int_arr_reg_25;
input 	phi_int_arr_reg_24;
input 	phi_int_arr_reg_23;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_31;
input 	phi_int_arr_reg_30;
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



carrier_add_sub_v4i auto_generated(
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_29(pipeline_dffe_29),
	.pipeline_dffe_28(pipeline_dffe_28),
	.pipeline_dffe_27(pipeline_dffe_27),
	.pipeline_dffe_26(pipeline_dffe_26),
	.pipeline_dffe_25(pipeline_dffe_25),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_23(pipeline_dffe_23),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_31(pipeline_dffe_31),
	.pipeline_dffe_30(pipeline_dffe_30),
	.phi_int_arr_reg_18(phi_int_arr_reg_18),
	.phi_int_arr_reg_17(phi_int_arr_reg_17),
	.phi_int_arr_reg_16(phi_int_arr_reg_16),
	.phi_int_arr_reg_15(phi_int_arr_reg_15),
	.phi_int_arr_reg_14(phi_int_arr_reg_14),
	.phi_int_arr_reg_13(phi_int_arr_reg_13),
	.phi_int_arr_reg_12(phi_int_arr_reg_12),
	.phi_int_arr_reg_11(phi_int_arr_reg_11),
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
	.phi_int_arr_reg_29(phi_int_arr_reg_29),
	.phi_int_arr_reg_28(phi_int_arr_reg_28),
	.phi_int_arr_reg_27(phi_int_arr_reg_27),
	.phi_int_arr_reg_26(phi_int_arr_reg_26),
	.phi_int_arr_reg_25(phi_int_arr_reg_25),
	.phi_int_arr_reg_24(phi_int_arr_reg_24),
	.phi_int_arr_reg_23(phi_int_arr_reg_23),
	.phi_int_arr_reg_22(phi_int_arr_reg_22),
	.phi_int_arr_reg_21(phi_int_arr_reg_21),
	.phi_int_arr_reg_20(phi_int_arr_reg_20),
	.phi_int_arr_reg_19(phi_int_arr_reg_19),
	.phi_int_arr_reg_31(phi_int_arr_reg_31),
	.phi_int_arr_reg_30(phi_int_arr_reg_30),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module carrier_add_sub_v4i (
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_13,
	pipeline_dffe_29,
	pipeline_dffe_28,
	pipeline_dffe_27,
	pipeline_dffe_26,
	pipeline_dffe_25,
	pipeline_dffe_24,
	pipeline_dffe_23,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_31,
	pipeline_dffe_30,
	phi_int_arr_reg_18,
	phi_int_arr_reg_17,
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
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
	phi_int_arr_reg_29,
	phi_int_arr_reg_28,
	phi_int_arr_reg_27,
	phi_int_arr_reg_26,
	phi_int_arr_reg_25,
	phi_int_arr_reg_24,
	phi_int_arr_reg_23,
	phi_int_arr_reg_22,
	phi_int_arr_reg_21,
	phi_int_arr_reg_20,
	phi_int_arr_reg_19,
	phi_int_arr_reg_31,
	phi_int_arr_reg_30,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_13;
output 	pipeline_dffe_29;
output 	pipeline_dffe_28;
output 	pipeline_dffe_27;
output 	pipeline_dffe_26;
output 	pipeline_dffe_25;
output 	pipeline_dffe_24;
output 	pipeline_dffe_23;
output 	pipeline_dffe_22;
output 	pipeline_dffe_21;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
output 	pipeline_dffe_31;
output 	pipeline_dffe_30;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
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
input 	phi_int_arr_reg_29;
input 	phi_int_arr_reg_28;
input 	phi_int_arr_reg_27;
input 	phi_int_arr_reg_26;
input 	phi_int_arr_reg_25;
input 	phi_int_arr_reg_24;
input 	phi_int_arr_reg_23;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_31;
input 	phi_int_arr_reg_30;
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

wire \pipeline_dffe[0]~32_combout ;
wire \pipeline_dffe[0]~q ;
wire \pipeline_dffe[0]~33 ;
wire \pipeline_dffe[1]~34_combout ;
wire \pipeline_dffe[1]~q ;
wire \pipeline_dffe[1]~35 ;
wire \pipeline_dffe[2]~36_combout ;
wire \pipeline_dffe[2]~q ;
wire \pipeline_dffe[2]~37 ;
wire \pipeline_dffe[3]~38_combout ;
wire \pipeline_dffe[3]~q ;
wire \pipeline_dffe[3]~39 ;
wire \pipeline_dffe[4]~40_combout ;
wire \pipeline_dffe[4]~q ;
wire \pipeline_dffe[4]~41 ;
wire \pipeline_dffe[5]~42_combout ;
wire \pipeline_dffe[5]~q ;
wire \pipeline_dffe[5]~43 ;
wire \pipeline_dffe[6]~44_combout ;
wire \pipeline_dffe[6]~q ;
wire \pipeline_dffe[6]~45 ;
wire \pipeline_dffe[7]~46_combout ;
wire \pipeline_dffe[7]~q ;
wire \pipeline_dffe[7]~47 ;
wire \pipeline_dffe[8]~48_combout ;
wire \pipeline_dffe[8]~q ;
wire \pipeline_dffe[8]~49 ;
wire \pipeline_dffe[9]~50_combout ;
wire \pipeline_dffe[9]~q ;
wire \pipeline_dffe[9]~51 ;
wire \pipeline_dffe[10]~52_combout ;
wire \pipeline_dffe[10]~q ;
wire \pipeline_dffe[10]~53 ;
wire \pipeline_dffe[11]~54_combout ;
wire \pipeline_dffe[11]~q ;
wire \pipeline_dffe[11]~55 ;
wire \pipeline_dffe[12]~56_combout ;
wire \pipeline_dffe[12]~q ;
wire \pipeline_dffe[12]~57 ;
wire \pipeline_dffe[13]~59 ;
wire \pipeline_dffe[14]~61 ;
wire \pipeline_dffe[15]~63 ;
wire \pipeline_dffe[16]~65 ;
wire \pipeline_dffe[17]~67 ;
wire \pipeline_dffe[18]~68_combout ;
wire \pipeline_dffe[17]~66_combout ;
wire \pipeline_dffe[16]~64_combout ;
wire \pipeline_dffe[15]~62_combout ;
wire \pipeline_dffe[14]~60_combout ;
wire \pipeline_dffe[13]~58_combout ;
wire \pipeline_dffe[18]~69 ;
wire \pipeline_dffe[19]~71 ;
wire \pipeline_dffe[20]~73 ;
wire \pipeline_dffe[21]~75 ;
wire \pipeline_dffe[22]~77 ;
wire \pipeline_dffe[23]~79 ;
wire \pipeline_dffe[24]~81 ;
wire \pipeline_dffe[25]~83 ;
wire \pipeline_dffe[26]~85 ;
wire \pipeline_dffe[27]~87 ;
wire \pipeline_dffe[28]~89 ;
wire \pipeline_dffe[29]~90_combout ;
wire \pipeline_dffe[28]~88_combout ;
wire \pipeline_dffe[27]~86_combout ;
wire \pipeline_dffe[26]~84_combout ;
wire \pipeline_dffe[25]~82_combout ;
wire \pipeline_dffe[24]~80_combout ;
wire \pipeline_dffe[23]~78_combout ;
wire \pipeline_dffe[22]~76_combout ;
wire \pipeline_dffe[21]~74_combout ;
wire \pipeline_dffe[20]~72_combout ;
wire \pipeline_dffe[19]~70_combout ;
wire \pipeline_dffe[29]~91 ;
wire \pipeline_dffe[30]~93 ;
wire \pipeline_dffe[31]~94_combout ;
wire \pipeline_dffe[30]~92_combout ;


dffeas \pipeline_dffe[18] (
	.clk(clock),
	.d(\pipeline_dffe[18]~68_combout ),
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
	.d(\pipeline_dffe[17]~66_combout ),
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
	.d(\pipeline_dffe[16]~64_combout ),
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
	.d(\pipeline_dffe[15]~62_combout ),
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
	.d(\pipeline_dffe[14]~60_combout ),
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
	.d(\pipeline_dffe[13]~58_combout ),
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

dffeas \pipeline_dffe[29] (
	.clk(clock),
	.d(\pipeline_dffe[29]~90_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_29),
	.prn(vcc));
defparam \pipeline_dffe[29] .is_wysiwyg = "true";
defparam \pipeline_dffe[29] .power_up = "low";

dffeas \pipeline_dffe[28] (
	.clk(clock),
	.d(\pipeline_dffe[28]~88_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_28),
	.prn(vcc));
defparam \pipeline_dffe[28] .is_wysiwyg = "true";
defparam \pipeline_dffe[28] .power_up = "low";

dffeas \pipeline_dffe[27] (
	.clk(clock),
	.d(\pipeline_dffe[27]~86_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_27),
	.prn(vcc));
defparam \pipeline_dffe[27] .is_wysiwyg = "true";
defparam \pipeline_dffe[27] .power_up = "low";

dffeas \pipeline_dffe[26] (
	.clk(clock),
	.d(\pipeline_dffe[26]~84_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_26),
	.prn(vcc));
defparam \pipeline_dffe[26] .is_wysiwyg = "true";
defparam \pipeline_dffe[26] .power_up = "low";

dffeas \pipeline_dffe[25] (
	.clk(clock),
	.d(\pipeline_dffe[25]~82_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_25),
	.prn(vcc));
defparam \pipeline_dffe[25] .is_wysiwyg = "true";
defparam \pipeline_dffe[25] .power_up = "low";

dffeas \pipeline_dffe[24] (
	.clk(clock),
	.d(\pipeline_dffe[24]~80_combout ),
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
	.d(\pipeline_dffe[23]~78_combout ),
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

dffeas \pipeline_dffe[22] (
	.clk(clock),
	.d(\pipeline_dffe[22]~76_combout ),
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
	.d(\pipeline_dffe[21]~74_combout ),
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
	.d(\pipeline_dffe[20]~72_combout ),
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
	.d(\pipeline_dffe[19]~70_combout ),
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

dffeas \pipeline_dffe[31] (
	.clk(clock),
	.d(\pipeline_dffe[31]~94_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_31),
	.prn(vcc));
defparam \pipeline_dffe[31] .is_wysiwyg = "true";
defparam \pipeline_dffe[31] .power_up = "low";

dffeas \pipeline_dffe[30] (
	.clk(clock),
	.d(\pipeline_dffe[30]~92_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_30),
	.prn(vcc));
defparam \pipeline_dffe[30] .is_wysiwyg = "true";
defparam \pipeline_dffe[30] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[0]~32 (
	.dataa(\pipeline_dffe[0]~q ),
	.datab(phi_int_arr_reg_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\pipeline_dffe[0]~32_combout ),
	.cout(\pipeline_dffe[0]~33 ));
defparam \pipeline_dffe[0]~32 .lut_mask = 16'h66EE;
defparam \pipeline_dffe[0]~32 .sum_lutc_input = "datac";

dffeas \pipeline_dffe[0] (
	.clk(clock),
	.d(\pipeline_dffe[0]~32_combout ),
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

cycloneive_lcell_comb \pipeline_dffe[1]~34 (
	.dataa(\pipeline_dffe[1]~q ),
	.datab(phi_int_arr_reg_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[0]~33 ),
	.combout(\pipeline_dffe[1]~34_combout ),
	.cout(\pipeline_dffe[1]~35 ));
defparam \pipeline_dffe[1]~34 .lut_mask = 16'h967F;
defparam \pipeline_dffe[1]~34 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[1] (
	.clk(clock),
	.d(\pipeline_dffe[1]~34_combout ),
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

cycloneive_lcell_comb \pipeline_dffe[2]~36 (
	.dataa(\pipeline_dffe[2]~q ),
	.datab(phi_int_arr_reg_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~35 ),
	.combout(\pipeline_dffe[2]~36_combout ),
	.cout(\pipeline_dffe[2]~37 ));
defparam \pipeline_dffe[2]~36 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[2]~36 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[2] (
	.clk(clock),
	.d(\pipeline_dffe[2]~36_combout ),
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

cycloneive_lcell_comb \pipeline_dffe[3]~38 (
	.dataa(\pipeline_dffe[3]~q ),
	.datab(phi_int_arr_reg_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[2]~37 ),
	.combout(\pipeline_dffe[3]~38_combout ),
	.cout(\pipeline_dffe[3]~39 ));
defparam \pipeline_dffe[3]~38 .lut_mask = 16'h967F;
defparam \pipeline_dffe[3]~38 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[3] (
	.clk(clock),
	.d(\pipeline_dffe[3]~38_combout ),
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

cycloneive_lcell_comb \pipeline_dffe[4]~40 (
	.dataa(\pipeline_dffe[4]~q ),
	.datab(phi_int_arr_reg_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[3]~39 ),
	.combout(\pipeline_dffe[4]~40_combout ),
	.cout(\pipeline_dffe[4]~41 ));
defparam \pipeline_dffe[4]~40 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[4]~40 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[4] (
	.clk(clock),
	.d(\pipeline_dffe[4]~40_combout ),
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

cycloneive_lcell_comb \pipeline_dffe[5]~42 (
	.dataa(\pipeline_dffe[5]~q ),
	.datab(phi_int_arr_reg_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[4]~41 ),
	.combout(\pipeline_dffe[5]~42_combout ),
	.cout(\pipeline_dffe[5]~43 ));
defparam \pipeline_dffe[5]~42 .lut_mask = 16'h967F;
defparam \pipeline_dffe[5]~42 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~42_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[5]~q ),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[6]~44 (
	.dataa(\pipeline_dffe[6]~q ),
	.datab(phi_int_arr_reg_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~43 ),
	.combout(\pipeline_dffe[6]~44_combout ),
	.cout(\pipeline_dffe[6]~45 ));
defparam \pipeline_dffe[6]~44 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[6]~44 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~44_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[6]~q ),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[7]~46 (
	.dataa(\pipeline_dffe[7]~q ),
	.datab(phi_int_arr_reg_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~45 ),
	.combout(\pipeline_dffe[7]~46_combout ),
	.cout(\pipeline_dffe[7]~47 ));
defparam \pipeline_dffe[7]~46 .lut_mask = 16'h967F;
defparam \pipeline_dffe[7]~46 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~46_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[7]~q ),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[8]~48 (
	.dataa(\pipeline_dffe[8]~q ),
	.datab(phi_int_arr_reg_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~47 ),
	.combout(\pipeline_dffe[8]~48_combout ),
	.cout(\pipeline_dffe[8]~49 ));
defparam \pipeline_dffe[8]~48 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[8]~48 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~48_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[8]~q ),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[9]~50 (
	.dataa(\pipeline_dffe[9]~q ),
	.datab(phi_int_arr_reg_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~49 ),
	.combout(\pipeline_dffe[9]~50_combout ),
	.cout(\pipeline_dffe[9]~51 ));
defparam \pipeline_dffe[9]~50 .lut_mask = 16'h967F;
defparam \pipeline_dffe[9]~50 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~50_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[9]~q ),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[10]~52 (
	.dataa(\pipeline_dffe[10]~q ),
	.datab(phi_int_arr_reg_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~51 ),
	.combout(\pipeline_dffe[10]~52_combout ),
	.cout(\pipeline_dffe[10]~53 ));
defparam \pipeline_dffe[10]~52 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[10]~52 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~52_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[10]~q ),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[11]~54 (
	.dataa(\pipeline_dffe[11]~q ),
	.datab(phi_int_arr_reg_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~53 ),
	.combout(\pipeline_dffe[11]~54_combout ),
	.cout(\pipeline_dffe[11]~55 ));
defparam \pipeline_dffe[11]~54 .lut_mask = 16'h967F;
defparam \pipeline_dffe[11]~54 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~54_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[11]~q ),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[12]~56 (
	.dataa(\pipeline_dffe[12]~q ),
	.datab(phi_int_arr_reg_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~55 ),
	.combout(\pipeline_dffe[12]~56_combout ),
	.cout(\pipeline_dffe[12]~57 ));
defparam \pipeline_dffe[12]~56 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[12]~56 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~56_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[12]~q ),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[13]~58 (
	.dataa(pipeline_dffe_13),
	.datab(phi_int_arr_reg_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[12]~57 ),
	.combout(\pipeline_dffe[13]~58_combout ),
	.cout(\pipeline_dffe[13]~59 ));
defparam \pipeline_dffe[13]~58 .lut_mask = 16'h967F;
defparam \pipeline_dffe[13]~58 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[14]~60 (
	.dataa(pipeline_dffe_14),
	.datab(phi_int_arr_reg_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[13]~59 ),
	.combout(\pipeline_dffe[14]~60_combout ),
	.cout(\pipeline_dffe[14]~61 ));
defparam \pipeline_dffe[14]~60 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[14]~60 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[15]~62 (
	.dataa(pipeline_dffe_15),
	.datab(phi_int_arr_reg_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[14]~61 ),
	.combout(\pipeline_dffe[15]~62_combout ),
	.cout(\pipeline_dffe[15]~63 ));
defparam \pipeline_dffe[15]~62 .lut_mask = 16'h967F;
defparam \pipeline_dffe[15]~62 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[16]~64 (
	.dataa(pipeline_dffe_16),
	.datab(phi_int_arr_reg_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[15]~63 ),
	.combout(\pipeline_dffe[16]~64_combout ),
	.cout(\pipeline_dffe[16]~65 ));
defparam \pipeline_dffe[16]~64 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[16]~64 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[17]~66 (
	.dataa(pipeline_dffe_17),
	.datab(phi_int_arr_reg_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[16]~65 ),
	.combout(\pipeline_dffe[17]~66_combout ),
	.cout(\pipeline_dffe[17]~67 ));
defparam \pipeline_dffe[17]~66 .lut_mask = 16'h967F;
defparam \pipeline_dffe[17]~66 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[18]~68 (
	.dataa(pipeline_dffe_18),
	.datab(phi_int_arr_reg_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[17]~67 ),
	.combout(\pipeline_dffe[18]~68_combout ),
	.cout(\pipeline_dffe[18]~69 ));
defparam \pipeline_dffe[18]~68 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[18]~68 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[19]~70 (
	.dataa(pipeline_dffe_19),
	.datab(phi_int_arr_reg_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[18]~69 ),
	.combout(\pipeline_dffe[19]~70_combout ),
	.cout(\pipeline_dffe[19]~71 ));
defparam \pipeline_dffe[19]~70 .lut_mask = 16'h967F;
defparam \pipeline_dffe[19]~70 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[20]~72 (
	.dataa(pipeline_dffe_20),
	.datab(phi_int_arr_reg_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[19]~71 ),
	.combout(\pipeline_dffe[20]~72_combout ),
	.cout(\pipeline_dffe[20]~73 ));
defparam \pipeline_dffe[20]~72 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[20]~72 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[21]~74 (
	.dataa(pipeline_dffe_21),
	.datab(phi_int_arr_reg_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[20]~73 ),
	.combout(\pipeline_dffe[21]~74_combout ),
	.cout(\pipeline_dffe[21]~75 ));
defparam \pipeline_dffe[21]~74 .lut_mask = 16'h967F;
defparam \pipeline_dffe[21]~74 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[22]~76 (
	.dataa(pipeline_dffe_22),
	.datab(phi_int_arr_reg_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[21]~75 ),
	.combout(\pipeline_dffe[22]~76_combout ),
	.cout(\pipeline_dffe[22]~77 ));
defparam \pipeline_dffe[22]~76 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[22]~76 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[23]~78 (
	.dataa(pipeline_dffe_23),
	.datab(phi_int_arr_reg_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[22]~77 ),
	.combout(\pipeline_dffe[23]~78_combout ),
	.cout(\pipeline_dffe[23]~79 ));
defparam \pipeline_dffe[23]~78 .lut_mask = 16'h967F;
defparam \pipeline_dffe[23]~78 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[24]~80 (
	.dataa(pipeline_dffe_24),
	.datab(phi_int_arr_reg_24),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[23]~79 ),
	.combout(\pipeline_dffe[24]~80_combout ),
	.cout(\pipeline_dffe[24]~81 ));
defparam \pipeline_dffe[24]~80 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[24]~80 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[25]~82 (
	.dataa(pipeline_dffe_25),
	.datab(phi_int_arr_reg_25),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[24]~81 ),
	.combout(\pipeline_dffe[25]~82_combout ),
	.cout(\pipeline_dffe[25]~83 ));
defparam \pipeline_dffe[25]~82 .lut_mask = 16'h967F;
defparam \pipeline_dffe[25]~82 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[26]~84 (
	.dataa(pipeline_dffe_26),
	.datab(phi_int_arr_reg_26),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[25]~83 ),
	.combout(\pipeline_dffe[26]~84_combout ),
	.cout(\pipeline_dffe[26]~85 ));
defparam \pipeline_dffe[26]~84 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[26]~84 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[27]~86 (
	.dataa(pipeline_dffe_27),
	.datab(phi_int_arr_reg_27),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[26]~85 ),
	.combout(\pipeline_dffe[27]~86_combout ),
	.cout(\pipeline_dffe[27]~87 ));
defparam \pipeline_dffe[27]~86 .lut_mask = 16'h967F;
defparam \pipeline_dffe[27]~86 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[28]~88 (
	.dataa(pipeline_dffe_28),
	.datab(phi_int_arr_reg_28),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[27]~87 ),
	.combout(\pipeline_dffe[28]~88_combout ),
	.cout(\pipeline_dffe[28]~89 ));
defparam \pipeline_dffe[28]~88 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[28]~88 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[29]~90 (
	.dataa(pipeline_dffe_29),
	.datab(phi_int_arr_reg_29),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[28]~89 ),
	.combout(\pipeline_dffe[29]~90_combout ),
	.cout(\pipeline_dffe[29]~91 ));
defparam \pipeline_dffe[29]~90 .lut_mask = 16'h967F;
defparam \pipeline_dffe[29]~90 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[30]~92 (
	.dataa(pipeline_dffe_30),
	.datab(phi_int_arr_reg_30),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[29]~91 ),
	.combout(\pipeline_dffe[30]~92_combout ),
	.cout(\pipeline_dffe[30]~93 ));
defparam \pipeline_dffe[30]~92 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[30]~92 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[31]~94 (
	.dataa(pipeline_dffe_31),
	.datab(phi_int_arr_reg_31),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[30]~93 ),
	.combout(\pipeline_dffe[31]~94_combout ),
	.cout());
defparam \pipeline_dffe[31]~94 .lut_mask = 16'h9696;
defparam \pipeline_dffe[31]~94 .sum_lutc_input = "cin";

endmodule

module carrier_asj_dxx (
	dxxrv_3,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	dxxrv_2,
	pipeline_dffe_15,
	dxxrv_1,
	pipeline_dffe_14,
	dxxrv_0,
	pipeline_dffe_13,
	pipeline_dffe_29,
	pipeline_dffe_28,
	pipeline_dffe_27,
	pipeline_dffe_26,
	pipeline_dffe_25,
	pipeline_dffe_24,
	pipeline_dffe_23,
	pipeline_dffe_22,
	pipeline_dffe_21,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_31,
	pipeline_dffe_30,
	data_out_0,
	dxxpdo_5,
	dxxpdo_16,
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
	dxxpdo_18,
	dxxpdo_17,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	dxxrv_3;
input 	pipeline_dffe_18;
input 	pipeline_dffe_17;
input 	pipeline_dffe_16;
input 	dxxrv_2;
input 	pipeline_dffe_15;
input 	dxxrv_1;
input 	pipeline_dffe_14;
input 	dxxrv_0;
input 	pipeline_dffe_13;
input 	pipeline_dffe_29;
input 	pipeline_dffe_28;
input 	pipeline_dffe_27;
input 	pipeline_dffe_26;
input 	pipeline_dffe_25;
input 	pipeline_dffe_24;
input 	pipeline_dffe_23;
input 	pipeline_dffe_22;
input 	pipeline_dffe_21;
input 	pipeline_dffe_20;
input 	pipeline_dffe_19;
input 	pipeline_dffe_31;
input 	pipeline_dffe_30;
input 	data_out_0;
output 	dxxpdo_5;
output 	dxxpdo_16;
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
output 	dxxpdo_18;
output 	dxxpdo_17;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_dither_out_w[5]~15_cout ;
wire \phi_dither_out_w[5]~17_cout ;
wire \phi_dither_out_w[5]~19_cout ;
wire \phi_dither_out_w[5]~21_cout ;
wire \phi_dither_out_w[5]~23_cout ;
wire \phi_dither_out_w[5]~24_combout ;
wire \phi_dither_out_w[5]~q ;
wire \dxxpdo~0_combout ;
wire \phi_dither_out_w[5]~25 ;
wire \phi_dither_out_w[6]~27 ;
wire \phi_dither_out_w[7]~29 ;
wire \phi_dither_out_w[8]~31 ;
wire \phi_dither_out_w[9]~33 ;
wire \phi_dither_out_w[10]~35 ;
wire \phi_dither_out_w[11]~37 ;
wire \phi_dither_out_w[12]~39 ;
wire \phi_dither_out_w[13]~41 ;
wire \phi_dither_out_w[14]~43 ;
wire \phi_dither_out_w[15]~45 ;
wire \phi_dither_out_w[16]~46_combout ;
wire \phi_dither_out_w[16]~q ;
wire \dxxpdo~1_combout ;
wire \phi_dither_out_w[6]~26_combout ;
wire \phi_dither_out_w[6]~q ;
wire \dxxpdo~2_combout ;
wire \phi_dither_out_w[7]~28_combout ;
wire \phi_dither_out_w[7]~q ;
wire \dxxpdo~3_combout ;
wire \phi_dither_out_w[8]~30_combout ;
wire \phi_dither_out_w[8]~q ;
wire \dxxpdo~4_combout ;
wire \phi_dither_out_w[9]~32_combout ;
wire \phi_dither_out_w[9]~q ;
wire \dxxpdo~5_combout ;
wire \phi_dither_out_w[10]~34_combout ;
wire \phi_dither_out_w[10]~q ;
wire \dxxpdo~6_combout ;
wire \phi_dither_out_w[11]~36_combout ;
wire \phi_dither_out_w[11]~q ;
wire \dxxpdo~7_combout ;
wire \phi_dither_out_w[12]~38_combout ;
wire \phi_dither_out_w[12]~q ;
wire \dxxpdo~8_combout ;
wire \phi_dither_out_w[13]~40_combout ;
wire \phi_dither_out_w[13]~q ;
wire \dxxpdo~9_combout ;
wire \phi_dither_out_w[14]~42_combout ;
wire \phi_dither_out_w[14]~q ;
wire \dxxpdo~10_combout ;
wire \phi_dither_out_w[15]~44_combout ;
wire \phi_dither_out_w[15]~q ;
wire \dxxpdo~11_combout ;
wire \phi_dither_out_w[16]~47 ;
wire \phi_dither_out_w[17]~49 ;
wire \phi_dither_out_w[18]~50_combout ;
wire \phi_dither_out_w[18]~q ;
wire \dxxpdo~12_combout ;
wire \phi_dither_out_w[17]~48_combout ;
wire \phi_dither_out_w[17]~q ;
wire \dxxpdo~13_combout ;


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

dffeas \dxxpdo[16] (
	.clk(clk),
	.d(\dxxpdo~1_combout ),
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

dffeas \dxxpdo[18] (
	.clk(clk),
	.d(\dxxpdo~12_combout ),
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

dffeas \dxxpdo[17] (
	.clk(clk),
	.d(\dxxpdo~13_combout ),
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

cycloneive_lcell_comb \phi_dither_out_w[5]~15 (
	.dataa(dxxrv_0),
	.datab(pipeline_dffe_13),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\phi_dither_out_w[5]~15_cout ));
defparam \phi_dither_out_w[5]~15 .lut_mask = 16'h00EE;
defparam \phi_dither_out_w[5]~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_dither_out_w[5]~17 (
	.dataa(dxxrv_1),
	.datab(pipeline_dffe_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~15_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~17_cout ));
defparam \phi_dither_out_w[5]~17 .lut_mask = 16'h007F;
defparam \phi_dither_out_w[5]~17 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~19 (
	.dataa(dxxrv_2),
	.datab(pipeline_dffe_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~17_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~19_cout ));
defparam \phi_dither_out_w[5]~19 .lut_mask = 16'h00EF;
defparam \phi_dither_out_w[5]~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~21 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~19_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~21_cout ));
defparam \phi_dither_out_w[5]~21 .lut_mask = 16'h007F;
defparam \phi_dither_out_w[5]~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~23 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~21_cout ),
	.combout(),
	.cout(\phi_dither_out_w[5]~23_cout ));
defparam \phi_dither_out_w[5]~23 .lut_mask = 16'h00EF;
defparam \phi_dither_out_w[5]~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[5]~24 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~23_cout ),
	.combout(\phi_dither_out_w[5]~24_combout ),
	.cout(\phi_dither_out_w[5]~25 ));
defparam \phi_dither_out_w[5]~24 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[5]~24 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[5] (
	.clk(clk),
	.d(\phi_dither_out_w[5]~24_combout ),
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

cycloneive_lcell_comb \phi_dither_out_w[6]~26 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~25 ),
	.combout(\phi_dither_out_w[6]~26_combout ),
	.cout(\phi_dither_out_w[6]~27 ));
defparam \phi_dither_out_w[6]~26 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[6]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[7]~28 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[6]~27 ),
	.combout(\phi_dither_out_w[7]~28_combout ),
	.cout(\phi_dither_out_w[7]~29 ));
defparam \phi_dither_out_w[7]~28 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[7]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[8]~30 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[7]~29 ),
	.combout(\phi_dither_out_w[8]~30_combout ),
	.cout(\phi_dither_out_w[8]~31 ));
defparam \phi_dither_out_w[8]~30 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[8]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[9]~32 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[8]~31 ),
	.combout(\phi_dither_out_w[9]~32_combout ),
	.cout(\phi_dither_out_w[9]~33 ));
defparam \phi_dither_out_w[9]~32 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[9]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[10]~34 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[9]~33 ),
	.combout(\phi_dither_out_w[10]~34_combout ),
	.cout(\phi_dither_out_w[10]~35 ));
defparam \phi_dither_out_w[10]~34 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[10]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[11]~36 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_24),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[10]~35 ),
	.combout(\phi_dither_out_w[11]~36_combout ),
	.cout(\phi_dither_out_w[11]~37 ));
defparam \phi_dither_out_w[11]~36 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[11]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[12]~38 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_25),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[11]~37 ),
	.combout(\phi_dither_out_w[12]~38_combout ),
	.cout(\phi_dither_out_w[12]~39 ));
defparam \phi_dither_out_w[12]~38 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[12]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[13]~40 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_26),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[12]~39 ),
	.combout(\phi_dither_out_w[13]~40_combout ),
	.cout(\phi_dither_out_w[13]~41 ));
defparam \phi_dither_out_w[13]~40 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[13]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[14]~42 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_27),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[13]~41 ),
	.combout(\phi_dither_out_w[14]~42_combout ),
	.cout(\phi_dither_out_w[14]~43 ));
defparam \phi_dither_out_w[14]~42 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[14]~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[15]~44 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_28),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[14]~43 ),
	.combout(\phi_dither_out_w[15]~44_combout ),
	.cout(\phi_dither_out_w[15]~45 ));
defparam \phi_dither_out_w[15]~44 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[15]~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[16]~46 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_29),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[15]~45 ),
	.combout(\phi_dither_out_w[16]~46_combout ),
	.cout(\phi_dither_out_w[16]~47 ));
defparam \phi_dither_out_w[16]~46 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[16]~46 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[16] (
	.clk(clk),
	.d(\phi_dither_out_w[16]~46_combout ),
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

cycloneive_lcell_comb \dxxpdo~1 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[16]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~1_combout ),
	.cout());
defparam \dxxpdo~1 .lut_mask = 16'hEEEE;
defparam \dxxpdo~1 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[6] (
	.clk(clk),
	.d(\phi_dither_out_w[6]~26_combout ),
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
	.d(\phi_dither_out_w[7]~28_combout ),
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
	.d(\phi_dither_out_w[8]~30_combout ),
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
	.d(\phi_dither_out_w[9]~32_combout ),
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
	.d(\phi_dither_out_w[10]~34_combout ),
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
	.d(\phi_dither_out_w[11]~36_combout ),
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
	.d(\phi_dither_out_w[12]~38_combout ),
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
	.d(\phi_dither_out_w[13]~40_combout ),
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
	.d(\phi_dither_out_w[14]~42_combout ),
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
	.d(\phi_dither_out_w[15]~44_combout ),
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

cycloneive_lcell_comb \phi_dither_out_w[17]~48 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_30),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[16]~47 ),
	.combout(\phi_dither_out_w[17]~48_combout ),
	.cout(\phi_dither_out_w[17]~49 ));
defparam \phi_dither_out_w[17]~48 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[17]~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \phi_dither_out_w[18]~50 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_31),
	.datac(gnd),
	.datad(gnd),
	.cin(\phi_dither_out_w[17]~49 ),
	.combout(\phi_dither_out_w[18]~50_combout ),
	.cout());
defparam \phi_dither_out_w[18]~50 .lut_mask = 16'h9696;
defparam \phi_dither_out_w[18]~50 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[18] (
	.clk(clk),
	.d(\phi_dither_out_w[18]~50_combout ),
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

cycloneive_lcell_comb \dxxpdo~12 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[18]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~12_combout ),
	.cout());
defparam \dxxpdo~12 .lut_mask = 16'hEEEE;
defparam \dxxpdo~12 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[17] (
	.clk(clk),
	.d(\phi_dither_out_w[17]~48_combout ),
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

cycloneive_lcell_comb \dxxpdo~13 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[17]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~13_combout ),
	.cout());
defparam \dxxpdo~13 .lut_mask = 16'hEEEE;
defparam \dxxpdo~13 .sum_lutc_input = "datac";

endmodule

module carrier_asj_dxx_g (
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

module carrier_asj_gar (
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
	data_out_0,
	dxxpdo_5,
	dxxpdo_16,
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
input 	data_out_0;
input 	dxxpdo_5;
input 	dxxpdo_16;
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

cycloneive_lcell_comb \rom_add~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_5),
	.datad(dxxpdo_16),
	.cin(gnd),
	.combout(\rom_add~0_combout ),
	.cout());
defparam \rom_add~0 .lut_mask = 16'h0FF0;
defparam \rom_add~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_6),
	.cin(gnd),
	.combout(\rom_add~1_combout ),
	.cout());
defparam \rom_add~1 .lut_mask = 16'h0FF0;
defparam \rom_add~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_7),
	.cin(gnd),
	.combout(\rom_add~2_combout ),
	.cout());
defparam \rom_add~2 .lut_mask = 16'h0FF0;
defparam \rom_add~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_8),
	.cin(gnd),
	.combout(\rom_add~3_combout ),
	.cout());
defparam \rom_add~3 .lut_mask = 16'h0FF0;
defparam \rom_add~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_9),
	.cin(gnd),
	.combout(\rom_add~4_combout ),
	.cout());
defparam \rom_add~4 .lut_mask = 16'h0FF0;
defparam \rom_add~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_10),
	.cin(gnd),
	.combout(\rom_add~5_combout ),
	.cout());
defparam \rom_add~5 .lut_mask = 16'h0FF0;
defparam \rom_add~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_11),
	.cin(gnd),
	.combout(\rom_add~6_combout ),
	.cout());
defparam \rom_add~6 .lut_mask = 16'h0FF0;
defparam \rom_add~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_12),
	.cin(gnd),
	.combout(\rom_add~7_combout ),
	.cout());
defparam \rom_add~7 .lut_mask = 16'h0FF0;
defparam \rom_add~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_13),
	.cin(gnd),
	.combout(\rom_add~8_combout ),
	.cout());
defparam \rom_add~8 .lut_mask = 16'h0FF0;
defparam \rom_add~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_14),
	.cin(gnd),
	.combout(\rom_add~9_combout ),
	.cout());
defparam \rom_add~9 .lut_mask = 16'h0FF0;
defparam \rom_add~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_16),
	.datad(dxxpdo_15),
	.cin(gnd),
	.combout(\rom_add~10_combout ),
	.cout());
defparam \rom_add~10 .lut_mask = 16'h0FF0;
defparam \rom_add~10 .sum_lutc_input = "datac";

endmodule

module carrier_asj_nco_as_m_cen (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	q_a_12,
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
output 	q_a_9;
output 	q_a_10;
output 	q_a_11;
output 	q_a_12;
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
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



carrier_altsyncram_1 altsyncram_component0(
	.q_a({q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module carrier_altsyncram_1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[12:0] q_a;
input 	[10:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



carrier_altsyncram_j5a1 auto_generated(
	.q_a({q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module carrier_altsyncram_j5a1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[12:0] q_a;
input 	[10:0] address_a;
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
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a0.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 11;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 2047;
defparam ram_block1a0.port_a_logical_ram_depth = 2048;
defparam ram_block1a0.port_a_logical_ram_width = 13;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = 2048'h7C3C1E1E1E1E1C3C7870E3C78E3C71C71C71C71CE38C718E738C6318C6339CC673198CC66733399998CCCCCCCCCCCC99999B332664CD993264C99364C9B26C9B64DB24DB64936DB64924924925B6DB4925B692DA4B692D25A5A4B4B4B4B5A5A52D694B5AD294A5294AD6B5295A95A95A95AB52A54A956AD52AD52AD56AB552AB552AA555AAA5556AAA55552AAAB55555AAAAAAA55555555555AAAAAAAAAAAAAAAAAAA9555555555552AAAAAA9555556AAAAB55552AAA95556AAAD554AAA5552AAD552AAD55AAB556AA554AAD56AA556AB55AAD56AB55AA552AD56A956A956A956A956A956AD52A55AA54A956AD52A54AB56AD5AB54A952A54A952AD5AB56AD5A;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a1.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 11;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 2047;
defparam ram_block1a1.port_a_logical_ram_depth = 2048;
defparam ram_block1a1.port_a_logical_ram_width = 13;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = 2048'hD56AB54AB54AB56AD52A56AD5A952B52B52B52B5A95AD4A5295AD6B5AD694A52D6B4A5AD2D696B4B4A5A5A5A5A5A5A4B4B49696D2DA4B496D25B492DA496DA492DB692492DB6DB6D24924924936DB6DB6C9249B6D9249B6C936D926D926C936C9B24D93649B26C9B264D9364C9B364C9B366C993264CD9B3664C99B3266CC99933666CCC9993332666CCCC99999333336666666CCCCCCCCCCC99999999999999999998CCCCCCCCCCCE666666733333199998CCCCE66673331999CCCC666333199CCCE66333998CCE6633399CCE6633198CC6633198CC663319CCE673198CE673198CE67319CCE63399CC67319CCE63398CE63398CC67319CC67319CC67319CC6;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a2.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 11;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 2047;
defparam ram_block1a2.port_a_logical_ram_depth = 2048;
defparam ram_block1a2.port_a_logical_ram_width = 13;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = 2048'h99B3266CD993264C99B364C993264D9B264D9B26CD9366C9B26C9B26C9B26C9B64D936C9B64DB26D936C936C936C936D926DB249B6C926DB64926DB6C924936DB6DB249249249249B6DB6DB6DA492492492492DB6DB6D24925B6DB4924B6DA492DB6925B6D24B6D24B6925B692DA496D25B492DA4B696D25B496D2DA4B496D2DA5B4B696D2DA5A4B4B69692D2D25A5A5B4B4B4B69696969696D2D2D2D2D2D2D2D2D2D2969696969694B4B4B4A5A5A5AD2D2D69694B4B5A5A52D29696B4B5A5AD29694B4A5AD2D694B4A5AD296B4B5A52D694B5A52D694B5A5296B4A5AD294B5A52D6B4A5AD694B5AD296B5A5296B4A52D6B4A52D694A5AD694A5AD694A5AD694;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a3.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 11;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 2047;
defparam ram_block1a3.port_a_logical_ram_depth = 2048;
defparam ram_block1a3.port_a_logical_ram_width = 13;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = 2048'hE1C3C78F1E1C3870E1C3870E1C3871E3C78E1C38F1E3870E3C70E3C70E3C70E3871E38F1C78E3C71E38F1C70E38F1C71E38E3C71C70E38E3871C71C70E38E38E38E3C71C71C71C71C71C71C71C71C71C71C71CE38E38E38E39C71C71C738E38E31C71C638E38C71C738E39C71CE38E71C638E31C738E71C638E71CE38C718E31C638C718E31C638C738E71CE31C639C638C738C718E718E718E31CE31CE31CE31CE31CE718E718E718C738C739C639CE31CE718E738C639C631CE718C739C631CE718C739CE318E738C631CE738C639CE718C639CE718C639CE738C631CE739C6318C739CE718C631CE739C6318C739CE738C6318E739CE718C6318E739CE718;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a4.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 11;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 2047;
defparam ram_block1a4.port_a_logical_ram_depth = 2048;
defparam ram_block1a4.port_a_logical_ram_width = 13;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = 2048'hFE03F80FE01FC07F01FC07F01FC07E03F80FE03F01FC07F03F80FC07F03F80FC07E03F01F80FC07E03F01F80FC0FE07E03F03F81F80FC0FC07E07E07F03F03F03F03F81F81F81F81F81F81F81F81F81F81F81F03F03F03F03E07E07E07C0FC0FC1F81F83F03F07E07C0FC1F81F03F07E07C0FC1F83F07E07C0F81F03F07E0FC1F83F07E0FC1F83F07C0F81F03E07C1F83F07C0F81F07E0F81F03E0FC1F03E0FC1F03E0F81F07E0F81F07C0F83E07C1F03E0F81F07C0F83E07C1F07E0F83E07C1F07E0F83E0FC1F07C0F83E0F83F07C1F07E0F83E0F81F07C1F07C0F83E0F83E07C1F07C1F07E0F83E0F83E07C1F07C1F07C0F83E0F83E0F81F07C1F07C1F07E0;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a5.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 11;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 2047;
defparam ram_block1a5.port_a_logical_ram_depth = 2048;
defparam ram_block1a5.port_a_logical_ram_width = 13;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = 2048'h0003FFF0001FFF8001FFF8001FFF8003FFF0003FFE0007FFC000FFF8003FFF0007FFC001FFF0007FFC001FFF000FFF8003FFC001FFF000FFF8007FF8003FFC003FFC001FFE001FFE001FFE001FFE001FFE001FFC003FFC003FF8007FF800FFF001FFE003FFC007FF800FFE001FFC007FF800FFE003FF8007FF001FFC007FF001FFC007FF001FFC007FF001FFC007FE003FF800FFE007FF001FFC00FFE003FF001FFC00FFE007FF001FF800FFC007FE003FF001FF800FFC007FE007FF003FF801FF800FFC00FFE007FF003FF003FF801FF800FFC00FFE007FE007FF003FF003FF801FF801FF800FFC00FFC007FE007FE007FF003FF003FF001FF801FF801FF800;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a6.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 11;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 2047;
defparam ram_block1a6.port_a_logical_ram_depth = 2048;
defparam ram_block1a6.port_a_logical_ram_width = 13;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = 2048'h0003FFFFFFE0000001FFFFFFE0000003FFFFFFC0000007FFFFFF0000003FFFFFF8000001FFFFFF8000001FFFFFF0000003FFFFFE000000FFFFFF8000003FFFFFC000001FFFFFE000001FFFFFE000001FFFFFE000003FFFFFC000007FFFFF000001FFFFFC000007FFFFF000001FFFFF800000FFFFFC000007FFFFE000007FFFFE000007FFFFE000007FFFFE000007FFFFC00000FFFFF800001FFFFF000003FFFFE00000FFFFF800001FFFFF000007FFFFC00001FFFFF000007FFFF800003FFFFE00000FFFFF000007FFFFC00003FFFFE00000FFFFF000007FFFF800003FFFFC00001FFFFE00000FFFFF000007FFFF800007FFFFC00003FFFFE00001FFFFE00000;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a7.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 11;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 2047;
defparam ram_block1a7.port_a_logical_ram_depth = 2048;
defparam ram_block1a7.port_a_logical_ram_width = 13;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = 2048'hFFFC00000000000001FFFFFFFFFFFFFC00000000000007FFFFFFFFFFFFC0000000000001FFFFFFFFFFFFE0000000000003FFFFFFFFFFFF0000000000003FFFFFFFFFFFE000000000001FFFFFFFFFFFE000000000003FFFFFFFFFFF800000000001FFFFFFFFFFF800000000001FFFFFFFFFFF000000000007FFFFFFFFFF800000000007FFFFFFFFFF800000000007FFFFFFFFFF00000000001FFFFFFFFFFC0000000000FFFFFFFFFFE00000000007FFFFFFFFFE00000000007FFFFFFFFFC0000000000FFFFFFFFFF80000000003FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000007FFFFFFFFF80000000003FFFFFFFFFE0000000000;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a8.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 11;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 2047;
defparam ram_block1a8.port_a_logical_ram_depth = 2048;
defparam ram_block1a8.port_a_logical_ram_width = 13;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = 2048'h000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFFFFFF80000000000000000000007FFFFFFFFFFFFFFFFFFFFF8000000000000000000001FFFFFFFFFFFFFFFFFFFFF0000000000000000000007FFFFFFFFFFFFFFFFFFFF800000000000000000000FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFFC00000000000000000000;

cycloneive_ram_block ram_block1a9(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.clk0_input_clock_enable = "ena0";
defparam ram_block1a9.clk0_output_clock_enable = "ena0";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 11;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 2047;
defparam ram_block1a9.port_a_logical_ram_depth = 2048;
defparam ram_block1a9.port_a_logical_ram_width = 13;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a10(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.clk0_input_clock_enable = "ena0";
defparam ram_block1a10.clk0_output_clock_enable = "ena0";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 11;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 2047;
defparam ram_block1a10.port_a_logical_ram_depth = 2048;
defparam ram_block1a10.port_a_logical_ram_width = 13;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a11(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.clk0_input_clock_enable = "ena0";
defparam ram_block1a11.clk0_output_clock_enable = "ena0";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 11;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 2047;
defparam ram_block1a11.port_a_logical_ram_depth = 2048;
defparam ram_block1a11.port_a_logical_ram_width = 13;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a12(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a12.clk0_core_clock_enable = "ena0";
defparam ram_block1a12.clk0_input_clock_enable = "ena0";
defparam ram_block1a12.clk0_output_clock_enable = "ena0";
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "carrier_nco_ii_0_sin.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_j5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 11;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 2047;
defparam ram_block1a12.port_a_logical_ram_depth = 2048;
defparam ram_block1a12.port_a_logical_ram_width = 13;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

endmodule

module carrier_asj_nco_as_m_cen_1 (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	q_a_12,
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
output 	q_a_9;
output 	q_a_10;
output 	q_a_11;
output 	q_a_12;
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
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



carrier_altsyncram_2 altsyncram_component0(
	.q_a({q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module carrier_altsyncram_2 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[12:0] q_a;
input 	[10:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



carrier_altsyncram_e5a1 auto_generated(
	.q_a({q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module carrier_altsyncram_e5a1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[12:0] q_a;
input 	[10:0] address_a;
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
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a0.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 11;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 2047;
defparam ram_block1a0.port_a_logical_ram_depth = 2048;
defparam ram_block1a0.port_a_logical_ram_width = 13;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = 2048'h3E1F07C1F03E07E07E07F01FC07F803FE007FE000FFFC0000FFFFFFF000000000001FFFFFFF00007FFE001FFC01FF00FF01FC07E07E07E0F83E0F83C1E1F0F0F0E1E1C3870E3C71E38E38E39C718E718C739CE6319CC66331998CCCCCCCCCCCCCCC999B3266CD9326C9B26C936D9249B6DB6DA4925B492D25A5B4B4A5A52D6B5AD6B5295A952A54A956AB552AA5552AAAD5555552AAAAAAAA5555555AAAA5552AA556A954A952A56A56A5295A5294B4A5A5A5A4B496D24B6DB6D26DB6D924DB26C9B26CD9B3664CCD99999999999998CCC663398CE739CE738C718E38E38E38E1C78F1E3C3C3C3C3E1F0F83E0FC1F81FC07F00FF007FE001FFFC00001FFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a1.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 11;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 2047;
defparam ram_block1a1.port_a_logical_ram_depth = 2048;
defparam ram_block1a1.port_a_logical_ram_width = 13;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = 2048'hAB55AA955AAB554AAB555AAA95552AAAB55554AAAAAA955555555555AAAAAAAAAAAB555555555552AAAAAB55554AAAA5554AAAD552AAD55AA955AA954AB55AA55AB54A952A56AD4A95A95A94AD4A52B5AD6B5AD6B4A52D694B4A5A5A5A5A5A5A5A5B4B696D25B496DA496DA4924B6DB6DB6DB6DB6C9249B6C936D926C9364D9364D9364C9B366CD9B3266CC99933366664CCCCCC999999999CCCCCCC6666333199CCE673398CE6319CE6318C6318C739C639C638C71CE38E38E31E38E38E3C71E3871E3C78F1E3C3C787878787878783C3E1F0783E0F83E0F83F07E07E07E07E03F80FE03FC03FC01FF007FE003FF8003FFF0000FFFFE0000003FFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a2.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 11;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 2047;
defparam ram_block1a2.port_a_logical_ram_depth = 2048;
defparam ram_block1a2.port_a_logical_ram_width = 13;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = 2048'h66CC99B33666CCD9993336664CCC99999333326666664CCCCCCCCCCC999999999998CCCCCCCCCCCE666667333339999CCCC666333199CCC66733998CC673399CC673398CE6319CC67398C6739CC6318C6318C6318C631CE738C639C639C639C639C738E71CE38C71C638E39C71C71C71C71C71C71C71C78E38F1C71E38F1C38F1C38F1C3870E1C3870E1E3C7870F0E1E1C3C3C3C787878787C3C3C3C1E1E0F0F87C3E1F0F87C1E0F83E1F07C1F07C0F83E07C1F83F03E07E07E0FE07E07E03F01F80FE03F80FE03FC07F807F807F807FC01FF007FE007FE007FF001FFE001FFE0007FFE0003FFFC0000FFFFE000007FFFFFF000000001FFFFFFFFFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a3.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 11;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 2047;
defparam ram_block1a3.port_a_logical_ram_depth = 2048;
defparam ram_block1a3.port_a_logical_ram_width = 13;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = 2048'h1E3C7870F1E1C3C7870F0E1E3C3C787870F0F1E1E1E1C3C3C3C3C3C3878787878787C3C3C3C3C3C1E1E1E0F0F0F8787C3C3E1E0F0F87C3C1E0F0787C3E0F0783C1F0F87C1E0F83C1F0783E0F83C1F07C1F07C1F07C1F03E0F83E07C1F83E07C1F83F07E0FC1F83F03E07E07C0FC0FC0FC0FC0FC0FC0FC07E07F03F01F80FC07F03F80FC07F01FC07F01FE03F80FF01FE03FC03FC07F807F803FC03FC01FE00FF803FE00FF803FE007FE00FFC00FFC007FE003FF800FFE001FFE001FFE001FFF0007FFE0007FFE0003FFF80007FFF80003FFFF00001FFFFE00000FFFFFE000001FFFFFFE00000003FFFFFFFFE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a4.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 11;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 2047;
defparam ram_block1a4.port_a_logical_ram_depth = 2048;
defparam ram_block1a4.port_a_logical_ram_width = 13;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = 2048'h01FC07F00FE03FC07F00FE01FC03F807F00FF01FE01FC03FC03FC03F807F807F807FC03FC03FC03FE01FE00FF007F803FC01FE00FF803FC01FF007FC01FF007FC00FF803FE007FC00FF801FF803FF003FF003FF003FF001FF801FFC007FE003FF800FFE003FF800FFE001FFC003FFC003FFC003FFC003FFE000FFF0007FFC000FFF8003FFF0003FFF0001FFF8000FFFE0003FFFC0007FFF80003FFFC0001FFFF80001FFFF80001FFFFE00003FFFFC00001FFFFF800001FFFFFE000001FFFFFF0000001FFFFFFE00000007FFFFFFF800000000FFFFFFFFFE00000000001FFFFFFFFFFFFE00000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a5.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 11;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 2047;
defparam ram_block1a5.port_a_logical_ram_depth = 2048;
defparam ram_block1a5.port_a_logical_ram_width = 13;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = 2048'hFFFC000FFFE0003FFF0001FFFC0007FFF0000FFFE0003FFFC0003FFF80007FFF80003FFFC0003FFFE0001FFFF00007FFFC0001FFFF80003FFFF00003FFFF00003FFFF80001FFFFC00007FFFF80000FFFFF00000FFFFF000007FFFFC00001FFFFF800001FFFFF800001FFFFFC000003FFFFFC000003FFFFFE000000FFFFFFC0000007FFFFFF0000000FFFFFFF80000001FFFFFFFC00000007FFFFFFFC000000007FFFFFFFF8000000001FFFFFFFFFC00000000007FFFFFFFFFFE000000000000FFFFFFFFFFFFFE0000000000000007FFFFFFFFFFFFFFFFFE000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a6.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 11;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 2047;
defparam ram_block1a6.port_a_logical_ram_depth = 2048;
defparam ram_block1a6.port_a_logical_ram_width = 13;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = 2048'h0003FFFFFFE0000000FFFFFFFC0000000FFFFFFFE00000003FFFFFFF800000007FFFFFFFC00000001FFFFFFFF000000003FFFFFFFF800000000FFFFFFFFF0000000007FFFFFFFFC0000000007FFFFFFFFF0000000000FFFFFFFFFFC00000000007FFFFFFFFFF800000000003FFFFFFFFFFFC000000000001FFFFFFFFFFFFC0000000000000FFFFFFFFFFFFFF8000000000000003FFFFFFFFFFFFFFFC000000000000000007FFFFFFFFFFFFFFFFFFC0000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a7.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 11;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 2047;
defparam ram_block1a7.port_a_logical_ram_depth = 2048;
defparam ram_block1a7.port_a_logical_ram_width = 13;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = 2048'hFFFFFFFFFFE000000000000003FFFFFFFFFFFFFFE0000000000000007FFFFFFFFFFFFFFFC0000000000000000FFFFFFFFFFFFFFFFF800000000000000000FFFFFFFFFFFFFFFFFFC0000000000000000000FFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
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
defparam ram_block1a8.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 11;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 2047;
defparam ram_block1a8.port_a_logical_ram_depth = 2048;
defparam ram_block1a8.port_a_logical_ram_width = 13;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = 2048'h00000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a9(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.clk0_input_clock_enable = "ena0";
defparam ram_block1a9.clk0_output_clock_enable = "ena0";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 11;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 2047;
defparam ram_block1a9.port_a_logical_ram_depth = 2048;
defparam ram_block1a9.port_a_logical_ram_width = 13;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a10(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.clk0_input_clock_enable = "ena0";
defparam ram_block1a10.clk0_output_clock_enable = "ena0";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 11;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 2047;
defparam ram_block1a10.port_a_logical_ram_depth = 2048;
defparam ram_block1a10.port_a_logical_ram_width = 13;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a11(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.clk0_input_clock_enable = "ena0";
defparam ram_block1a11.clk0_output_clock_enable = "ena0";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 11;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 2047;
defparam ram_block1a11.port_a_logical_ram_depth = 2048;
defparam ram_block1a11.port_a_logical_ram_width = 13;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = 2048'h00000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a12(
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
	.portaaddr({gnd,gnd,gnd,gnd,gnd,address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a12.clk0_core_clock_enable = "ena0";
defparam ram_block1a12.clk0_input_clock_enable = "ena0";
defparam ram_block1a12.clk0_output_clock_enable = "ena0";
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "carrier_nco_ii_0_cos.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "carrier_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_e5a1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 11;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 2047;
defparam ram_block1a12.port_a_logical_ram_depth = 2048;
defparam ram_block1a12.port_a_logical_ram_width = 13;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

endmodule

module carrier_asj_nco_isdr (
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

wire \lpm_counter_component|auto_generated|counter_reg_bit[0]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[3]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[2]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[1]~q ;
wire \always0~0_combout ;
wire \data_ready~0_combout ;


carrier_lpm_counter_1 lpm_counter_component(
	.counter_reg_bit_0(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.counter_reg_bit_3(\lpm_counter_component|auto_generated|counter_reg_bit[3]~q ),
	.counter_reg_bit_2(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.counter_reg_bit_1(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
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
	.datac(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.datad(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.cin(gnd),
	.combout(\always0~0_combout ),
	.cout());
defparam \always0~0 .lut_mask = 16'hEFFF;
defparam \always0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_ready~0 (
	.dataa(data_ready1),
	.datab(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.datac(\always0~0_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_ready~0_combout ),
	.cout());
defparam \data_ready~0 .lut_mask = 16'hFEFE;
defparam \data_ready~0 .sum_lutc_input = "datac";

endmodule

module carrier_lpm_counter_1 (
	counter_reg_bit_0,
	counter_reg_bit_3,
	counter_reg_bit_2,
	counter_reg_bit_1,
	GND_port,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_3;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
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



carrier_cntr_asi auto_generated(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_1(counter_reg_bit_1),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module carrier_cntr_asi (
	counter_reg_bit_0,
	counter_reg_bit_3,
	counter_reg_bit_2,
	counter_reg_bit_1,
	GND_port,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_3;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
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

wire \counter_comb_bita0~combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~combout ;
wire \counter_comb_bita2~combout ;
wire \counter_comb_bita1~combout ;


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

module carrier_asj_nco_mob_rw (
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
	sin_o_10,
	sin_o_11,
	sin_o_12,
	sin_o_13,
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
	data_out_10,
	data_out_11,
	data_out_12,
	data_out_13,
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
input 	sin_o_10;
input 	sin_o_11;
input 	sin_o_12;
input 	sin_o_13;
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
output 	data_out_10;
output 	data_out_11;
output 	data_out_12;
output 	data_out_13;
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
wire \data_out~11_combout ;
wire \data_out~12_combout ;
wire \data_out~13_combout ;
wire \data_out~14_combout ;


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

dffeas \data_out[10] (
	.clk(clk),
	.d(\data_out~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_10),
	.prn(vcc));
defparam \data_out[10] .is_wysiwyg = "true";
defparam \data_out[10] .power_up = "low";

dffeas \data_out[11] (
	.clk(clk),
	.d(\data_out~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_11),
	.prn(vcc));
defparam \data_out[11] .is_wysiwyg = "true";
defparam \data_out[11] .power_up = "low";

dffeas \data_out[12] (
	.clk(clk),
	.d(\data_out~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_12),
	.prn(vcc));
defparam \data_out[12] .is_wysiwyg = "true";
defparam \data_out[12] .power_up = "low";

dffeas \data_out[13] (
	.clk(clk),
	.d(\data_out~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_13),
	.prn(vcc));
defparam \data_out[13] .is_wysiwyg = "true";
defparam \data_out[13] .power_up = "low";

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

cycloneive_lcell_comb \data_out~11 (
	.dataa(reset_n),
	.datab(sin_o_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~11_combout ),
	.cout());
defparam \data_out~11 .lut_mask = 16'hEEEE;
defparam \data_out~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~12 (
	.dataa(reset_n),
	.datab(sin_o_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~12_combout ),
	.cout());
defparam \data_out~12 .lut_mask = 16'hEEEE;
defparam \data_out~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~13 (
	.dataa(reset_n),
	.datab(sin_o_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~13_combout ),
	.cout());
defparam \data_out~13 .lut_mask = 16'hEEEE;
defparam \data_out~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~14 (
	.dataa(reset_n),
	.datab(sin_o_13),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~14_combout ),
	.cout());
defparam \data_out~14 .lut_mask = 16'hEEEE;
defparam \data_out~14 .sum_lutc_input = "datac";

endmodule

module carrier_segment_arr_tdl (
	data_out_0,
	seg_rot_2,
	seg_rot_1,
	seg_rot_0,
	dxxpdo_16,
	dxxpdo_18,
	dxxpdo_17,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	data_out_0;
output 	seg_rot_2;
output 	seg_rot_1;
output 	seg_rot_0;
input 	dxxpdo_16;
input 	dxxpdo_18;
input 	dxxpdo_17;
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
	.datab(dxxpdo_18),
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
	.datab(dxxpdo_17),
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
	.datab(dxxpdo_16),
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

module carrier_segment_sel (
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
	sin_o_10,
	sin_o_11,
	sin_o_12,
	sin_o_13,
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
	sin_rom_2c_9,
	cos_rom_2c_9,
	sin_rom_2c_10,
	cos_rom_2c_10,
	sin_rom_2c_11,
	cos_rom_2c_11,
	sin_rom_2c_12,
	cos_rom_2c_12,
	cos_rom_2c_13,
	sin_rom_2c_13,
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
	cos_rom_d_9,
	sin_rom_d_9,
	cos_rom_d_10,
	sin_rom_d_10,
	cos_rom_d_11,
	sin_rom_d_11,
	cos_rom_d_12,
	sin_rom_d_12,
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
output 	sin_o_10;
output 	sin_o_11;
output 	sin_o_12;
output 	sin_o_13;
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
input 	sin_rom_2c_9;
input 	cos_rom_2c_9;
input 	sin_rom_2c_10;
input 	cos_rom_2c_10;
input 	sin_rom_2c_11;
input 	cos_rom_2c_11;
input 	sin_rom_2c_12;
input 	cos_rom_2c_12;
input 	cos_rom_2c_13;
input 	sin_rom_2c_13;
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
input 	cos_rom_d_9;
input 	sin_rom_d_9;
input 	cos_rom_d_10;
input 	sin_rom_d_10;
input 	cos_rom_d_11;
input 	sin_rom_d_11;
input 	cos_rom_d_12;
input 	sin_rom_d_12;
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
wire \sin_o~19_combout ;
wire \sin_o~20_combout ;
wire \sin_o~21_combout ;
wire \sin_o~22_combout ;
wire \sin_o~23_combout ;
wire \sin_o~24_combout ;
wire \sin_o~25_combout ;
wire \sin_o~26_combout ;
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
	.d(\sin_o~20_combout ),
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

dffeas \sin_o[10] (
	.clk(clk),
	.d(\sin_o~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_10),
	.prn(vcc));
defparam \sin_o[10] .is_wysiwyg = "true";
defparam \sin_o[10] .power_up = "low";

dffeas \sin_o[11] (
	.clk(clk),
	.d(\sin_o~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_11),
	.prn(vcc));
defparam \sin_o[11] .is_wysiwyg = "true";
defparam \sin_o[11] .power_up = "low";

dffeas \sin_o[12] (
	.clk(clk),
	.d(\sin_o~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_12),
	.prn(vcc));
defparam \sin_o[12] .is_wysiwyg = "true";
defparam \sin_o[12] .power_up = "low";

dffeas \sin_o[13] (
	.clk(clk),
	.d(\Mux0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_o_13),
	.prn(vcc));
defparam \sin_o[13] .is_wysiwyg = "true";
defparam \sin_o[13] .power_up = "low";

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

cycloneive_lcell_comb \sin_o~19 (
	.dataa(\sin_o[0]~0_combout ),
	.datab(sin_rom_2c_9),
	.datac(seg_rot_2),
	.datad(sin_rom_d_9),
	.cin(gnd),
	.combout(\sin_o~19_combout ),
	.cout());
defparam \sin_o~19 .lut_mask = 16'hFFDE;
defparam \sin_o~19 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~20 (
	.dataa(cos_rom_d_9),
	.datab(\sin_o[0]~0_combout ),
	.datac(\sin_o~19_combout ),
	.datad(cos_rom_2c_9),
	.cin(gnd),
	.combout(\sin_o~20_combout ),
	.cout());
defparam \sin_o~20 .lut_mask = 16'hFFBE;
defparam \sin_o~20 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~21 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_10),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_10),
	.cin(gnd),
	.combout(\sin_o~21_combout ),
	.cout());
defparam \sin_o~21 .lut_mask = 16'hFFDE;
defparam \sin_o~21 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~22 (
	.dataa(sin_rom_2c_10),
	.datab(seg_rot_2),
	.datac(\sin_o~21_combout ),
	.datad(cos_rom_2c_10),
	.cin(gnd),
	.combout(\sin_o~22_combout ),
	.cout());
defparam \sin_o~22 .lut_mask = 16'hFFBE;
defparam \sin_o~22 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~23 (
	.dataa(\sin_o[0]~0_combout ),
	.datab(sin_rom_2c_11),
	.datac(seg_rot_2),
	.datad(sin_rom_d_11),
	.cin(gnd),
	.combout(\sin_o~23_combout ),
	.cout());
defparam \sin_o~23 .lut_mask = 16'hFFDE;
defparam \sin_o~23 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~24 (
	.dataa(cos_rom_d_11),
	.datab(\sin_o[0]~0_combout ),
	.datac(\sin_o~23_combout ),
	.datad(cos_rom_2c_11),
	.cin(gnd),
	.combout(\sin_o~24_combout ),
	.cout());
defparam \sin_o~24 .lut_mask = 16'hFFBE;
defparam \sin_o~24 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~25 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_12),
	.datac(\sin_o[0]~0_combout ),
	.datad(sin_rom_d_12),
	.cin(gnd),
	.combout(\sin_o~25_combout ),
	.cout());
defparam \sin_o~25 .lut_mask = 16'hFFDE;
defparam \sin_o~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~26 (
	.dataa(sin_rom_2c_12),
	.datab(seg_rot_2),
	.datac(\sin_o~25_combout ),
	.datad(cos_rom_2c_12),
	.cin(gnd),
	.combout(\sin_o~26_combout ),
	.cout());
defparam \sin_o~26 .lut_mask = 16'hFFBE;
defparam \sin_o~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux0~0 (
	.dataa(seg_rot_2),
	.datab(cos_rom_2c_13),
	.datac(sin_rom_2c_13),
	.datad(\sin_o[0]~0_combout ),
	.cin(gnd),
	.combout(\Mux0~0_combout ),
	.cout());
defparam \Mux0~0 .lut_mask = 16'hFAFC;
defparam \Mux0~0 .sum_lutc_input = "datac";

endmodule

module carrier_sid_2c_1p (
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
	sin_rom_2c_9,
	cos_rom_2c_9,
	sin_rom_2c_10,
	cos_rom_2c_10,
	sin_rom_2c_11,
	cos_rom_2c_11,
	sin_rom_2c_12,
	cos_rom_2c_12,
	cos_rom_2c_13,
	sin_rom_2c_13,
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
	q_a_9,
	q_a_91,
	q_a_10,
	q_a_101,
	q_a_111,
	q_a_112,
	q_a_12,
	q_a_121,
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
	cos_rom_d_9,
	sin_rom_d_9,
	cos_rom_d_10,
	sin_rom_d_10,
	cos_rom_d_11,
	sin_rom_d_11,
	cos_rom_d_12,
	sin_rom_d_12,
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
output 	sin_rom_2c_9;
output 	cos_rom_2c_9;
output 	sin_rom_2c_10;
output 	cos_rom_2c_10;
output 	sin_rom_2c_11;
output 	cos_rom_2c_11;
output 	sin_rom_2c_12;
output 	cos_rom_2c_12;
output 	cos_rom_2c_13;
output 	sin_rom_2c_13;
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
input 	q_a_9;
input 	q_a_91;
input 	q_a_10;
input 	q_a_101;
input 	q_a_111;
input 	q_a_112;
input 	q_a_12;
input 	q_a_121;
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
output 	cos_rom_d_9;
output 	sin_rom_d_9;
output 	cos_rom_d_10;
output 	sin_rom_d_10;
output 	cos_rom_d_11;
output 	sin_rom_d_11;
output 	cos_rom_d_12;
output 	sin_rom_d_12;
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
wire \sin_rom_2c[0]~14_combout ;
wire \cos_reg~0_combout ;
wire \cos_reg[0]~q ;
wire \cos_rom_2c[0]~14_combout ;
wire \sin_reg~1_combout ;
wire \sin_reg[1]~q ;
wire \sin_rom_2c[0]~15 ;
wire \sin_rom_2c[1]~16_combout ;
wire \cos_reg~1_combout ;
wire \cos_reg[1]~q ;
wire \cos_rom_2c[0]~15 ;
wire \cos_rom_2c[1]~16_combout ;
wire \sin_reg~2_combout ;
wire \sin_reg[2]~q ;
wire \sin_rom_2c[1]~17 ;
wire \sin_rom_2c[2]~18_combout ;
wire \cos_reg~2_combout ;
wire \cos_reg[2]~q ;
wire \cos_rom_2c[1]~17 ;
wire \cos_rom_2c[2]~18_combout ;
wire \sin_reg~3_combout ;
wire \sin_reg[3]~q ;
wire \sin_rom_2c[2]~19 ;
wire \sin_rom_2c[3]~20_combout ;
wire \cos_reg~3_combout ;
wire \cos_reg[3]~q ;
wire \cos_rom_2c[2]~19 ;
wire \cos_rom_2c[3]~20_combout ;
wire \sin_reg~4_combout ;
wire \sin_reg[4]~q ;
wire \sin_rom_2c[3]~21 ;
wire \sin_rom_2c[4]~22_combout ;
wire \cos_reg~4_combout ;
wire \cos_reg[4]~q ;
wire \cos_rom_2c[3]~21 ;
wire \cos_rom_2c[4]~22_combout ;
wire \sin_reg~5_combout ;
wire \sin_reg[5]~q ;
wire \sin_rom_2c[4]~23 ;
wire \sin_rom_2c[5]~24_combout ;
wire \cos_reg~5_combout ;
wire \cos_reg[5]~q ;
wire \cos_rom_2c[4]~23 ;
wire \cos_rom_2c[5]~24_combout ;
wire \sin_reg~6_combout ;
wire \sin_reg[6]~q ;
wire \sin_rom_2c[5]~25 ;
wire \sin_rom_2c[6]~26_combout ;
wire \cos_reg~6_combout ;
wire \cos_reg[6]~q ;
wire \cos_rom_2c[5]~25 ;
wire \cos_rom_2c[6]~26_combout ;
wire \sin_reg~7_combout ;
wire \sin_reg[7]~q ;
wire \sin_rom_2c[6]~27 ;
wire \sin_rom_2c[7]~28_combout ;
wire \cos_reg~7_combout ;
wire \cos_reg[7]~q ;
wire \cos_rom_2c[6]~27 ;
wire \cos_rom_2c[7]~28_combout ;
wire \sin_reg~8_combout ;
wire \sin_reg[8]~q ;
wire \sin_rom_2c[7]~29 ;
wire \sin_rom_2c[8]~30_combout ;
wire \cos_reg~8_combout ;
wire \cos_reg[8]~q ;
wire \cos_rom_2c[7]~29 ;
wire \cos_rom_2c[8]~30_combout ;
wire \sin_reg~9_combout ;
wire \sin_reg[9]~q ;
wire \sin_rom_2c[8]~31 ;
wire \sin_rom_2c[9]~32_combout ;
wire \cos_reg~9_combout ;
wire \cos_reg[9]~q ;
wire \cos_rom_2c[8]~31 ;
wire \cos_rom_2c[9]~32_combout ;
wire \sin_reg~10_combout ;
wire \sin_reg[10]~q ;
wire \sin_rom_2c[9]~33 ;
wire \sin_rom_2c[10]~34_combout ;
wire \cos_reg~10_combout ;
wire \cos_reg[10]~q ;
wire \cos_rom_2c[9]~33 ;
wire \cos_rom_2c[10]~34_combout ;
wire \sin_reg~11_combout ;
wire \sin_reg[11]~q ;
wire \sin_rom_2c[10]~35 ;
wire \sin_rom_2c[11]~36_combout ;
wire \cos_reg~11_combout ;
wire \cos_reg[11]~q ;
wire \cos_rom_2c[10]~35 ;
wire \cos_rom_2c[11]~36_combout ;
wire \sin_reg~12_combout ;
wire \sin_reg[12]~q ;
wire \sin_rom_2c[11]~37 ;
wire \sin_rom_2c[12]~38_combout ;
wire \cos_reg~12_combout ;
wire \cos_reg[12]~q ;
wire \cos_rom_2c[11]~37 ;
wire \cos_rom_2c[12]~38_combout ;
wire \cos_rom_2c[12]~39 ;
wire \cos_rom_2c[13]~40_combout ;
wire \sin_rom_2c[12]~39 ;
wire \sin_rom_2c[13]~40_combout ;
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
wire \cos_rom_d~9_combout ;
wire \sin_rom_d~9_combout ;
wire \cos_rom_d~10_combout ;
wire \sin_rom_d~10_combout ;
wire \cos_rom_d~11_combout ;
wire \sin_rom_d~11_combout ;
wire \cos_rom_d~12_combout ;
wire \sin_rom_d~12_combout ;


dffeas \sin_rom_2c[0] (
	.clk(clk),
	.d(\sin_rom_2c[0]~14_combout ),
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
	.d(\cos_rom_2c[0]~14_combout ),
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
	.d(\sin_rom_2c[1]~16_combout ),
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
	.d(\cos_rom_2c[1]~16_combout ),
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
	.d(\sin_rom_2c[2]~18_combout ),
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
	.d(\cos_rom_2c[2]~18_combout ),
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
	.d(\sin_rom_2c[3]~20_combout ),
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
	.d(\cos_rom_2c[3]~20_combout ),
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
	.d(\sin_rom_2c[4]~22_combout ),
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
	.d(\cos_rom_2c[4]~22_combout ),
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
	.d(\sin_rom_2c[5]~24_combout ),
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
	.d(\cos_rom_2c[5]~24_combout ),
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
	.d(\sin_rom_2c[6]~26_combout ),
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
	.d(\cos_rom_2c[6]~26_combout ),
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
	.d(\sin_rom_2c[7]~28_combout ),
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
	.d(\cos_rom_2c[7]~28_combout ),
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
	.d(\sin_rom_2c[8]~30_combout ),
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
	.d(\cos_rom_2c[8]~30_combout ),
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

dffeas \sin_rom_2c[9] (
	.clk(clk),
	.d(\sin_rom_2c[9]~32_combout ),
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

dffeas \cos_rom_2c[9] (
	.clk(clk),
	.d(\cos_rom_2c[9]~32_combout ),
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

dffeas \sin_rom_2c[10] (
	.clk(clk),
	.d(\sin_rom_2c[10]~34_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_10),
	.prn(vcc));
defparam \sin_rom_2c[10] .is_wysiwyg = "true";
defparam \sin_rom_2c[10] .power_up = "low";

dffeas \cos_rom_2c[10] (
	.clk(clk),
	.d(\cos_rom_2c[10]~34_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_10),
	.prn(vcc));
defparam \cos_rom_2c[10] .is_wysiwyg = "true";
defparam \cos_rom_2c[10] .power_up = "low";

dffeas \sin_rom_2c[11] (
	.clk(clk),
	.d(\sin_rom_2c[11]~36_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_11),
	.prn(vcc));
defparam \sin_rom_2c[11] .is_wysiwyg = "true";
defparam \sin_rom_2c[11] .power_up = "low";

dffeas \cos_rom_2c[11] (
	.clk(clk),
	.d(\cos_rom_2c[11]~36_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_11),
	.prn(vcc));
defparam \cos_rom_2c[11] .is_wysiwyg = "true";
defparam \cos_rom_2c[11] .power_up = "low";

dffeas \sin_rom_2c[12] (
	.clk(clk),
	.d(\sin_rom_2c[12]~38_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_12),
	.prn(vcc));
defparam \sin_rom_2c[12] .is_wysiwyg = "true";
defparam \sin_rom_2c[12] .power_up = "low";

dffeas \cos_rom_2c[12] (
	.clk(clk),
	.d(\cos_rom_2c[12]~38_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_12),
	.prn(vcc));
defparam \cos_rom_2c[12] .is_wysiwyg = "true";
defparam \cos_rom_2c[12] .power_up = "low";

dffeas \cos_rom_2c[13] (
	.clk(clk),
	.d(\cos_rom_2c[13]~40_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_2c_13),
	.prn(vcc));
defparam \cos_rom_2c[13] .is_wysiwyg = "true";
defparam \cos_rom_2c[13] .power_up = "low";

dffeas \sin_rom_2c[13] (
	.clk(clk),
	.d(\sin_rom_2c[13]~40_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_2c_13),
	.prn(vcc));
defparam \sin_rom_2c[13] .is_wysiwyg = "true";
defparam \sin_rom_2c[13] .power_up = "low";

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

dffeas \cos_rom_d[9] (
	.clk(clk),
	.d(\cos_rom_d~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_9),
	.prn(vcc));
defparam \cos_rom_d[9] .is_wysiwyg = "true";
defparam \cos_rom_d[9] .power_up = "low";

dffeas \sin_rom_d[9] (
	.clk(clk),
	.d(\sin_rom_d~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_9),
	.prn(vcc));
defparam \sin_rom_d[9] .is_wysiwyg = "true";
defparam \sin_rom_d[9] .power_up = "low";

dffeas \cos_rom_d[10] (
	.clk(clk),
	.d(\cos_rom_d~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_10),
	.prn(vcc));
defparam \cos_rom_d[10] .is_wysiwyg = "true";
defparam \cos_rom_d[10] .power_up = "low";

dffeas \sin_rom_d[10] (
	.clk(clk),
	.d(\sin_rom_d~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_10),
	.prn(vcc));
defparam \sin_rom_d[10] .is_wysiwyg = "true";
defparam \sin_rom_d[10] .power_up = "low";

dffeas \cos_rom_d[11] (
	.clk(clk),
	.d(\cos_rom_d~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_11),
	.prn(vcc));
defparam \cos_rom_d[11] .is_wysiwyg = "true";
defparam \cos_rom_d[11] .power_up = "low";

dffeas \sin_rom_d[11] (
	.clk(clk),
	.d(\sin_rom_d~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_11),
	.prn(vcc));
defparam \sin_rom_d[11] .is_wysiwyg = "true";
defparam \sin_rom_d[11] .power_up = "low";

dffeas \cos_rom_d[12] (
	.clk(clk),
	.d(\cos_rom_d~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(cos_rom_d_12),
	.prn(vcc));
defparam \cos_rom_d[12] .is_wysiwyg = "true";
defparam \cos_rom_d[12] .power_up = "low";

dffeas \sin_rom_d[12] (
	.clk(clk),
	.d(\sin_rom_d~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(sin_rom_d_12),
	.prn(vcc));
defparam \sin_rom_d[12] .is_wysiwyg = "true";
defparam \sin_rom_d[12] .power_up = "low";

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

cycloneive_lcell_comb \sin_rom_2c[0]~14 (
	.dataa(\sin_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\sin_rom_2c[0]~14_combout ),
	.cout(\sin_rom_2c[0]~15 ));
defparam \sin_rom_2c[0]~14 .lut_mask = 16'hAA55;
defparam \sin_rom_2c[0]~14 .sum_lutc_input = "datac";

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

cycloneive_lcell_comb \cos_rom_2c[0]~14 (
	.dataa(\cos_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\cos_rom_2c[0]~14_combout ),
	.cout(\cos_rom_2c[0]~15 ));
defparam \cos_rom_2c[0]~14 .lut_mask = 16'hAA55;
defparam \cos_rom_2c[0]~14 .sum_lutc_input = "datac";

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

cycloneive_lcell_comb \sin_rom_2c[1]~16 (
	.dataa(\sin_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[0]~15 ),
	.combout(\sin_rom_2c[1]~16_combout ),
	.cout(\sin_rom_2c[1]~17 ));
defparam \sin_rom_2c[1]~16 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[1]~16 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[1]~16 (
	.dataa(\cos_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[0]~15 ),
	.combout(\cos_rom_2c[1]~16_combout ),
	.cout(\cos_rom_2c[1]~17 ));
defparam \cos_rom_2c[1]~16 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[1]~16 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[2]~18 (
	.dataa(\sin_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[1]~17 ),
	.combout(\sin_rom_2c[2]~18_combout ),
	.cout(\sin_rom_2c[2]~19 ));
defparam \sin_rom_2c[2]~18 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[2]~18 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[2]~18 (
	.dataa(\cos_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[1]~17 ),
	.combout(\cos_rom_2c[2]~18_combout ),
	.cout(\cos_rom_2c[2]~19 ));
defparam \cos_rom_2c[2]~18 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[2]~18 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[3]~20 (
	.dataa(\sin_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[2]~19 ),
	.combout(\sin_rom_2c[3]~20_combout ),
	.cout(\sin_rom_2c[3]~21 ));
defparam \sin_rom_2c[3]~20 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[3]~20 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[3]~20 (
	.dataa(\cos_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[2]~19 ),
	.combout(\cos_rom_2c[3]~20_combout ),
	.cout(\cos_rom_2c[3]~21 ));
defparam \cos_rom_2c[3]~20 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[3]~20 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[4]~22 (
	.dataa(\sin_reg[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[3]~21 ),
	.combout(\sin_rom_2c[4]~22_combout ),
	.cout(\sin_rom_2c[4]~23 ));
defparam \sin_rom_2c[4]~22 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[4]~22 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[4]~22 (
	.dataa(\cos_reg[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[3]~21 ),
	.combout(\cos_rom_2c[4]~22_combout ),
	.cout(\cos_rom_2c[4]~23 ));
defparam \cos_rom_2c[4]~22 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[4]~22 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[5]~24 (
	.dataa(\sin_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[4]~23 ),
	.combout(\sin_rom_2c[5]~24_combout ),
	.cout(\sin_rom_2c[5]~25 ));
defparam \sin_rom_2c[5]~24 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[5]~24 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[5]~24 (
	.dataa(\cos_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[4]~23 ),
	.combout(\cos_rom_2c[5]~24_combout ),
	.cout(\cos_rom_2c[5]~25 ));
defparam \cos_rom_2c[5]~24 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[5]~24 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[6]~26 (
	.dataa(\sin_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[5]~25 ),
	.combout(\sin_rom_2c[6]~26_combout ),
	.cout(\sin_rom_2c[6]~27 ));
defparam \sin_rom_2c[6]~26 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[6]~26 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[6]~26 (
	.dataa(\cos_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[5]~25 ),
	.combout(\cos_rom_2c[6]~26_combout ),
	.cout(\cos_rom_2c[6]~27 ));
defparam \cos_rom_2c[6]~26 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[6]~26 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[7]~28 (
	.dataa(\sin_reg[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[6]~27 ),
	.combout(\sin_rom_2c[7]~28_combout ),
	.cout(\sin_rom_2c[7]~29 ));
defparam \sin_rom_2c[7]~28 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[7]~28 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[7]~28 (
	.dataa(\cos_reg[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[6]~27 ),
	.combout(\cos_rom_2c[7]~28_combout ),
	.cout(\cos_rom_2c[7]~29 ));
defparam \cos_rom_2c[7]~28 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[7]~28 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \sin_rom_2c[8]~30 (
	.dataa(\sin_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[7]~29 ),
	.combout(\sin_rom_2c[8]~30_combout ),
	.cout(\sin_rom_2c[8]~31 ));
defparam \sin_rom_2c[8]~30 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[8]~30 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_2c[8]~30 (
	.dataa(\cos_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[7]~29 ),
	.combout(\cos_rom_2c[8]~30_combout ),
	.cout(\cos_rom_2c[8]~31 ));
defparam \cos_rom_2c[8]~30 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[8]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~9 (
	.dataa(reset_n),
	.datab(q_a_91),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~9_combout ),
	.cout());
defparam \sin_reg~9 .lut_mask = 16'hEEEE;
defparam \sin_reg~9 .sum_lutc_input = "datac";

dffeas \sin_reg[9] (
	.clk(clk),
	.d(\sin_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[9]~q ),
	.prn(vcc));
defparam \sin_reg[9] .is_wysiwyg = "true";
defparam \sin_reg[9] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[9]~32 (
	.dataa(\sin_reg[9]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[8]~31 ),
	.combout(\sin_rom_2c[9]~32_combout ),
	.cout(\sin_rom_2c[9]~33 ));
defparam \sin_rom_2c[9]~32 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[9]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~9 (
	.dataa(reset_n),
	.datab(q_a_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~9_combout ),
	.cout());
defparam \cos_reg~9 .lut_mask = 16'hEEEE;
defparam \cos_reg~9 .sum_lutc_input = "datac";

dffeas \cos_reg[9] (
	.clk(clk),
	.d(\cos_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[9]~q ),
	.prn(vcc));
defparam \cos_reg[9] .is_wysiwyg = "true";
defparam \cos_reg[9] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[9]~32 (
	.dataa(\cos_reg[9]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[8]~31 ),
	.combout(\cos_rom_2c[9]~32_combout ),
	.cout(\cos_rom_2c[9]~33 ));
defparam \cos_rom_2c[9]~32 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[9]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~10 (
	.dataa(reset_n),
	.datab(q_a_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~10_combout ),
	.cout());
defparam \sin_reg~10 .lut_mask = 16'hEEEE;
defparam \sin_reg~10 .sum_lutc_input = "datac";

dffeas \sin_reg[10] (
	.clk(clk),
	.d(\sin_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[10]~q ),
	.prn(vcc));
defparam \sin_reg[10] .is_wysiwyg = "true";
defparam \sin_reg[10] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[10]~34 (
	.dataa(\sin_reg[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[9]~33 ),
	.combout(\sin_rom_2c[10]~34_combout ),
	.cout(\sin_rom_2c[10]~35 ));
defparam \sin_rom_2c[10]~34 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[10]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~10 (
	.dataa(reset_n),
	.datab(q_a_101),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~10_combout ),
	.cout());
defparam \cos_reg~10 .lut_mask = 16'hEEEE;
defparam \cos_reg~10 .sum_lutc_input = "datac";

dffeas \cos_reg[10] (
	.clk(clk),
	.d(\cos_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[10]~q ),
	.prn(vcc));
defparam \cos_reg[10] .is_wysiwyg = "true";
defparam \cos_reg[10] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[10]~34 (
	.dataa(\cos_reg[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[9]~33 ),
	.combout(\cos_rom_2c[10]~34_combout ),
	.cout(\cos_rom_2c[10]~35 ));
defparam \cos_rom_2c[10]~34 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[10]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~11 (
	.dataa(reset_n),
	.datab(q_a_112),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~11_combout ),
	.cout());
defparam \sin_reg~11 .lut_mask = 16'hEEEE;
defparam \sin_reg~11 .sum_lutc_input = "datac";

dffeas \sin_reg[11] (
	.clk(clk),
	.d(\sin_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[11]~q ),
	.prn(vcc));
defparam \sin_reg[11] .is_wysiwyg = "true";
defparam \sin_reg[11] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[11]~36 (
	.dataa(\sin_reg[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[10]~35 ),
	.combout(\sin_rom_2c[11]~36_combout ),
	.cout(\sin_rom_2c[11]~37 ));
defparam \sin_rom_2c[11]~36 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[11]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~11 (
	.dataa(reset_n),
	.datab(q_a_111),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~11_combout ),
	.cout());
defparam \cos_reg~11 .lut_mask = 16'hEEEE;
defparam \cos_reg~11 .sum_lutc_input = "datac";

dffeas \cos_reg[11] (
	.clk(clk),
	.d(\cos_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[11]~q ),
	.prn(vcc));
defparam \cos_reg[11] .is_wysiwyg = "true";
defparam \cos_reg[11] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[11]~36 (
	.dataa(\cos_reg[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[10]~35 ),
	.combout(\cos_rom_2c[11]~36_combout ),
	.cout(\cos_rom_2c[11]~37 ));
defparam \cos_rom_2c[11]~36 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[11]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~12 (
	.dataa(reset_n),
	.datab(q_a_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~12_combout ),
	.cout());
defparam \sin_reg~12 .lut_mask = 16'hEEEE;
defparam \sin_reg~12 .sum_lutc_input = "datac";

dffeas \sin_reg[12] (
	.clk(clk),
	.d(\sin_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\sin_reg[12]~q ),
	.prn(vcc));
defparam \sin_reg[12] .is_wysiwyg = "true";
defparam \sin_reg[12] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[12]~38 (
	.dataa(\sin_reg[12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[11]~37 ),
	.combout(\sin_rom_2c[12]~38_combout ),
	.cout(\sin_rom_2c[12]~39 ));
defparam \sin_rom_2c[12]~38 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[12]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~12 (
	.dataa(reset_n),
	.datab(q_a_121),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~12_combout ),
	.cout());
defparam \cos_reg~12 .lut_mask = 16'hEEEE;
defparam \cos_reg~12 .sum_lutc_input = "datac";

dffeas \cos_reg[12] (
	.clk(clk),
	.d(\cos_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\cos_reg[12]~q ),
	.prn(vcc));
defparam \cos_reg[12] .is_wysiwyg = "true";
defparam \cos_reg[12] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[12]~38 (
	.dataa(\cos_reg[12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[11]~37 ),
	.combout(\cos_rom_2c[12]~38_combout ),
	.cout(\cos_rom_2c[12]~39 ));
defparam \cos_rom_2c[12]~38 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[12]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_rom_2c[13]~40 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\cos_rom_2c[12]~39 ),
	.combout(\cos_rom_2c[13]~40_combout ),
	.cout());
defparam \cos_rom_2c[13]~40 .lut_mask = 16'h0F0F;
defparam \cos_rom_2c[13]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_rom_2c[13]~40 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\sin_rom_2c[12]~39 ),
	.combout(\sin_rom_2c[13]~40_combout ),
	.cout());
defparam \sin_rom_2c[13]~40 .lut_mask = 16'h0F0F;
defparam \sin_rom_2c[13]~40 .sum_lutc_input = "cin";

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

cycloneive_lcell_comb \cos_rom_d~9 (
	.dataa(reset_n),
	.datab(\cos_reg[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~9_combout ),
	.cout());
defparam \cos_rom_d~9 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~9 (
	.dataa(reset_n),
	.datab(\sin_reg[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~9_combout ),
	.cout());
defparam \sin_rom_d~9 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~10 (
	.dataa(reset_n),
	.datab(\cos_reg[10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~10_combout ),
	.cout());
defparam \cos_rom_d~10 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~10 (
	.dataa(reset_n),
	.datab(\sin_reg[10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~10_combout ),
	.cout());
defparam \sin_rom_d~10 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~11 (
	.dataa(reset_n),
	.datab(\cos_reg[11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~11_combout ),
	.cout());
defparam \cos_rom_d~11 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~11 (
	.dataa(reset_n),
	.datab(\sin_reg[11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~11_combout ),
	.cout());
defparam \sin_rom_d~11 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~12 (
	.dataa(reset_n),
	.datab(\cos_reg[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~12_combout ),
	.cout());
defparam \cos_rom_d~12 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~12 (
	.dataa(reset_n),
	.datab(\sin_reg[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~12_combout ),
	.cout());
defparam \sin_rom_d~12 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~12 .sum_lutc_input = "datac";

endmodule
