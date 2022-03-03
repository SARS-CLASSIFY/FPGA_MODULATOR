transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/fir_lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/PhaseDetect.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/mult18_18.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/mult8_8.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/counter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/pn.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/PnSync.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/pn_code.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/PN_adjust.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/integrator_col.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/integrator.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/source/DsssDemod.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/simulation/modelsim {D:/ModemPrograms/Chapter_9/E9_4/DsssDemod/simulation/modelsim/DsssDemod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  DsssDemod_vlg_tst

add wave *
view structure
view signals
run -all
