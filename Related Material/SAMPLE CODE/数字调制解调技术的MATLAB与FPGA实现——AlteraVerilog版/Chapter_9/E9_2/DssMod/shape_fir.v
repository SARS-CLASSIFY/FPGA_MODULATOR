// megafunction wizard: %FIR Compiler v12.1%
// GENERATION: XML

// ============================================================
// Megafunction Name(s):
// 			shape_fir_ast
// ============================================================
// Generated by FIR Compiler 12.1 [Altera, IP Toolbench 1.3.0 Build 177]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2014 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.


module shape_fir (
	clk,
	reset_n,
	ast_sink_data,
	ast_sink_valid,
	ast_source_ready,
	ast_sink_error,
	ast_source_data,
	ast_sink_ready,
	ast_source_valid,
	ast_source_error);


	input		clk;
	input		reset_n;
	input	[1:0]	ast_sink_data;
	input		ast_sink_valid;
	input		ast_source_ready;
	input	[1:0]	ast_sink_error;
	output	[14:0]	ast_source_data;
	output		ast_sink_ready;
	output		ast_source_valid;
	output	[1:0]	ast_source_error;


	shape_fir_ast	shape_fir_ast_inst(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(ast_sink_data),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(ast_source_data),
		.ast_sink_ready(ast_sink_ready),
		.ast_source_valid(ast_source_valid),
		.ast_source_error(ast_source_error));
endmodule

// =========================================================
// FIR Compiler Wizard Data
// ===============================
// DO NOT EDIT FOLLOWING DATA
// @Altera, IP Toolbench@
// Warning: If you modify this section, FIR Compiler Wizard may not be able to reproduce your chosen configuration.
// 
// Retrieval info: <?xml version="1.0"?>
// Retrieval info: <MEGACORE title="FIR Compiler"  version="12.1"  build="177"  iptb_version="1.3.0 Build 177"  format_version="120" >
// Retrieval info:  <NETLIST_SECTION class="altera.ipbu.flowbase.netlist.model.FIRModelClass"  active_core="shape_fir_ast" >
// Retrieval info:   <STATIC_SECTION>
// Retrieval info:    <PRIVATES>
// Retrieval info:     <NAMESPACE name = "parameterization">
// Retrieval info:      <PRIVATE name = "use_mem" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_type" value="M512"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "filter_rate" value="Single Rate"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "filter_factor" value="2"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "coefficient_scaling_type" value="Auto"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "coefficient_scaling_factor" value="511.0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "coefficient_bit_width" value="10"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "coefficient_binary_point_position" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "number_of_input_channels" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "input_number_system" value="Signed Binary"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "input_bit_width" value="2"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "input_binary_point_position" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "output_bit_width_method" value="Actual Coefficients"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_number_system" value="Full Resolution"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_bit_width" value="15"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_bits_right_of_binary_point" value="9"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "output_bits_removed_from_lsb" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "output_lsb_remove_type" value="Truncate"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_msb_remove_type" value="Truncate"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "flow_control" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "flow_control_input" value="Slave Sink"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "flow_control_output" value="Master Source"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "device_family" value="Cyclone IV E"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "structure" value="Distributed Arithmetic : Fully Parallel Filter"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "pipeline_level" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "clocks_to_compute" value="1"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "number_of_serial_units" value="2"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "data_storage" value="Logic Cells"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "coefficient_storage" value="Logic Cells"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "multiplier_storage" value="Logic Cells"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "force_non_symmetric_structure" value="0"  type="BOOLEAN"  enable="0" />
// Retrieval info:      <PRIVATE name = "coefficients_reload" value="0"  type="BOOLEAN"  enable="0" />
// Retrieval info:      <PRIVATE name = "coefficients_reload_sgl_clock" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "max_clocks_to_compute" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "set_1" value="Low Pass Set, Imported, D:\ModemPrograms\Chapter_9\E9_1\tra_lpf.txt, 0.0, -0.0, -0.0058106314, -0.018467508, -0.03606696, -0.052970964, -0.060021088, -0.04597223, 0.0, 0.085237205, 0.21076746, 0.3695518, 0.546462, 0.72023284, 0.8671086, 0.96541685, 1.0, 0.96541685, 0.8671086, 0.72023284, 0.546462, 0.3695518, 0.21076746, 0.085237205, 0.0, -0.04597223, -0.060021088, -0.052970964, -0.03606696, -0.018467508, -0.0058106314, -0.0, 0.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "number_of_sets" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_full_bit_width" value="15"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_full_bits_right_of_binary_point" value="9"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "coefficient_reload_bit_width" value="13"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "logic_cell" value="372"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "m512" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "m4k" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "m144k" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "m9k" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "m20k" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "mlab" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "megaram" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "dsp_block" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "input_clock_period" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_clock_period" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "throughput" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "memory_units" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_enable">
// Retrieval info:      <PRIVATE name = "matlab_enable" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "testbench_enable" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "testbench_simulation_clock_period" value="10.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "language" value="Verilog HDL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "enabled" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen">
// Retrieval info:      <PRIVATE name = "filename" value="shape_fir.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "quartus_settings">
// Retrieval info:      <PRIVATE name = "DEVICE" value="EP4CE15F17C8"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FAMILY" value="Cyclone IV E"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "serializer"/>
// Retrieval info:    </PRIVATES>
// Retrieval info:    <FILES/>
// Retrieval info:    <PORTS/>
// Retrieval info:    <LIBRARIES/>
// Retrieval info:   </STATIC_SECTION>
// Retrieval info:  </NETLIST_SECTION>
// Retrieval info: </MEGACORE>
// =========================================================
// RELATED_FILES: shape_fir_st.v, shape_fir_constraints.tcl, shape_fir_ast.vhd, shape_fir.v, shape_fir_ast.vhd, shape_fir.v;
// IPFS_FILES: shape_fir.vo;
// =========================================================
