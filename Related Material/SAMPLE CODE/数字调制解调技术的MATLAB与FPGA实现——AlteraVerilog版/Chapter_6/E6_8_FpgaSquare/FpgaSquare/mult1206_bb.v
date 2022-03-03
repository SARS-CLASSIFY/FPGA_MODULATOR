// megafunction wizard: %LPM_MULT%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: mult1206.v
// Megafunction Name(s):
// 			lpm_mult
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 12.1 Build 177 11/07/2012 SJ Full Version
// ************************************************************

//Copyright (C) 1991-2012 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module mult1206 (
	dataa,
	result);

	input	[14:0]  dataa;
	output	[28:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AutoSizeResult NUMERIC "1"
// Retrieval info: PRIVATE: B_isConstant NUMERIC "1"
// Retrieval info: PRIVATE: ConstantB NUMERIC "1206"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: SignedMult NUMERIC "1"
// Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
// Retrieval info: PRIVATE: ValidConstant NUMERIC "1"
// Retrieval info: PRIVATE: WidthA NUMERIC "15"
// Retrieval info: PRIVATE: WidthB NUMERIC "14"
// Retrieval info: PRIVATE: WidthP NUMERIC "29"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: optimize NUMERIC "0"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_HINT STRING "INPUT_B_IS_CONSTANT=YES,MAXIMIZE_SPEED=5"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
// Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "15"
// Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "14"
// Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "29"
// Retrieval info: USED_PORT: dataa 0 0 15 0 INPUT NODEFVAL "dataa[14..0]"
// Retrieval info: USED_PORT: result 0 0 29 0 OUTPUT NODEFVAL "result[28..0]"
// Retrieval info: CONNECT: @dataa 0 0 15 0 dataa 0 0 15 0
// Retrieval info: CONNECT: @datab 0 0 14 0 1206 0 0 14 0
// Retrieval info: CONNECT: result 0 0 29 0 @result 0 0 29 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mult1206.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult1206.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult1206.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult1206.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult1206_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult1206_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
