transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_5_FirIpCore/FirIPCore {D:/ModemPrograms/Chapter_4/E4_5_FirIpCore/FirIPCore/fir.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_5_FirIpCore/FirIPCore/source {D:/ModemPrograms/Chapter_4/E4_5_FirIpCore/FirIPCore/source/FirIPCore.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_5_FirIpCore/FirIPCore/simulation/modelsim {D:/ModemPrograms/Chapter_4/E4_5_FirIpCore/FirIPCore/simulation/modelsim/FirIPCore.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FirIPCore_vlg_tst

add wave *
view structure
view signals
run -all
