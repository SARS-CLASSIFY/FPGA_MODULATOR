
cp -f C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/fskmode_nco_ii_0_sin.hex ./
cp -f C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/fskmode_nco_ii_0_cos.hex ./

ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/dspba_library_package.vhd"                                                            
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/dspba_library.vhd"                                                                    
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_math_pkg_hpfir.vhd"                                                         
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_lib_pkg_hpfir.vhd"                                                          
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"                                      
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"                                            
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"                                          
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/auk_dspip_roundsat_hpfir.vhd"                                                         
ncvlog      "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/altera_avalon_sc_fifo.v"                                                              
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip_rtl_core.vhd"                                                                   
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip_ast.vhd"                                                                        
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip.vhd"                                                                            
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filter/firip_sim/firip_tb.vhd"                                                                         
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/dspba_library_package.vhd"                                                          
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/dspba_library.vhd"                                                                  
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_math_pkg_hpfir.vhd"                                                       
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_lib_pkg_hpfir.vhd"                                                        
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"                                    
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"                                          
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"                                        
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/auk_dspip_roundsat_hpfir.vhd"                                                       
ncvlog      "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/altera_avalon_sc_fifo.v"                                                            
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx_rtl_core.vhd"                                                                
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx_ast.vhd"                                                                     
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx.vhd"                                                                         
ncvhdl -v93 "C:/Users/86150/Desktop/Fir_test/ip/filterx/firipx_sim/firipx_tb.vhd"                                                                      
ncvlog      "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/submodules/fskmode_nco_ii_0.v"               -work nco_ii_0 -cdslib <<nco_ii_0>>
ncvlog      "C:/Users/86150/Desktop/Fir_test/ip/nco/fskmode/simulation/fskmode.v"                                                                      