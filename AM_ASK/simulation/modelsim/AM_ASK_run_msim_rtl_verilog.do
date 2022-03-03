transcript on
if ![file isdirectory AM_ASK_iputf_libs] {
	file mkdir AM_ASK_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib AM_ASK_iputf_libs/nco_ii_0
vmap nco_ii_0 ./AM_ASK_iputf_libs/nco_ii_0
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 

file copy -force C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0_sin.hex ./
file copy -force C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0_cos.hex ./

vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/sid_2c_1p.v"        -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_nco_fxx.v"      -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_gar.v"          -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_nco_apr_dxx.v"  -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_dxx_g.v"        -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_nco_as_m_cen.v" -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_altqmcpipe.v"   -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_nco_mob_rw.v"   -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_nco_isdr.v"     -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/segment_arr_tdl.v"  -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/segment_sel.v"      -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_dxx.v"          -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/mentor/asj_xnqg.v"         -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0.v"            -work nco_ii_0
vlog "C:/Users/86150/Desktop/AM_ASK/ip/fsk/fsk/simulation/fsk.v"                                              

vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/ip/rom {C:/Users/86150/Desktop/AM_ASK/ip/rom/sin.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/source {C:/Users/86150/Desktop/AM_ASK/source/addr_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/source {C:/Users/86150/Desktop/AM_ASK/source/source_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/ip/mult {C:/Users/86150/Desktop/AM_ASK/ip/mult/mult.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK {C:/Users/86150/Desktop/AM_ASK/AM_MODE.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/ip/add {C:/Users/86150/Desktop/AM_ASK/ip/add/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/ip/pll200 {C:/Users/86150/Desktop/AM_ASK/ip/pll200/pll200.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/source/fsk {C:/Users/86150/Desktop/AM_ASK/source/fsk/FskMod.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/db {C:/Users/86150/Desktop/AM_ASK/db/pll200_altpll.v}

vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/AM_ASK/simulation/modelsim {C:/Users/86150/Desktop/AM_ASK/simulation/modelsim/AM_MODE.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L nco_ii_0 -voptargs="+acc"  AM_MODE_vlg_tst

add wave *
view structure
view signals
run -all
