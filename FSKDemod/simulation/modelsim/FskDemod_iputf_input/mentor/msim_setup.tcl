
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
