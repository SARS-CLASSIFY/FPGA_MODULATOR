transcript on
if ![file isdirectory FskDemod_iputf_libs] {
	file mkdir FskDemod_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib FskDemod_iputf_libs/nco_ii_0
vmap nco_ii_0 ./FskDemod_iputf_libs/nco_ii_0
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 

file copy -force C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/fskmode_nco_ii_0_sin.hex ./
file copy -force C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/fskmode_nco_ii_0_cos.hex ./

vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/dspba_library_package.vhd"                                       
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/dspba_library.vhd"                                               
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_math_pkg_hpfir.vhd"                                    
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_lib_pkg_hpfir.vhd"                                     
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"                 
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"                       
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"                     
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_roundsat_hpfir.vhd"                                    
vlog "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/altera_avalon_sc_fifo.v"                                         
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip_rtl_core.vhd"                                              
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip_ast.vhd"                                                   
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip.vhd"                                                       
vcom "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip_tb.vhd"                                                    
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/dspba_library_package.vhd"                                     
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/dspba_library.vhd"                                             
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_math_pkg_hpfir.vhd"                                  
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_lib_pkg_hpfir.vhd"                                   
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"               
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"                     
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"                   
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_roundsat_hpfir.vhd"                                  
vlog "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/altera_avalon_sc_fifo.v"                                       
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx_rtl_core.vhd"                                           
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx_ast.vhd"                                                
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx.vhd"                                                    
vcom "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx_tb.vhd"                                                 
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/sid_2c_1p.v"               -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_nco_fxx.v"             -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_gar.v"                 -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_nco_apr_dxx.v"         -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_dxx_g.v"               -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_nco_as_m_cen.v"        -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_altqmcpipe.v"          -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_nco_mob_rw.v"          -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_nco_isdr.v"            -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/segment_arr_tdl.v"         -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/segment_sel.v"             -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_dxx.v"                 -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/mentor/asj_xnqg.v"                -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/fskmode_nco_ii_0.v"               -work nco_ii_0
vlog "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/fskmode.v"                                                 

vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/Fir_test/ip/filterx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx.vo}
vlib firipx
vmap firipx firipx
vlog -vlog01compat -work firipx +incdir+C:/Users/86150/Desktop/Fir_test/ip/filterx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx.v}
vlog -vlog01compat -work firipx +incdir+C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/Fir_test/source {C:/Users/86150/Desktop/Fir_test/source/FskDemod.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/Fir_test/source {C:/Users/86150/Desktop/Fir_test/source/FskMod.v}
vlib fskmode
vmap fskmode fskmode
vlog -vlog01compat -work fskmode +incdir+C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/synthesis {C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/synthesis/fskmode.v}
vlog -vlog01compat -work fskmode +incdir+C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/synthesis/submodules {C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/synthesis/submodules/fskmode_nco_ii_0.v}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/dspba_library_package.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/auk_dspip_math_pkg_hpfir.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/auk_dspip_avalon_streaming_controller_hpfir.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/auk_dspip_roundsat_hpfir.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/dspba_library.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/auk_dspip_lib_pkg_hpfir.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/auk_dspip_avalon_streaming_source_hpfir.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/firipx_0002_rtl_core.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/auk_dspip_avalon_streaming_sink_hpfir.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/firipx_0002_ast.vhd}
vcom -93 -work firipx {C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx/firipx_0002.vhd}

vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/Fir_test/simulation/modelsim {C:/Users/86150/Desktop/Fir_test/simulation/modelsim/FskDemod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L cycloneive -L rtl_work -L work -L firipx -L fskmode -L nco_ii_0 -voptargs="+acc"  FskDemod_vlg_tst

add wave *
view structure
view signals
run -all
