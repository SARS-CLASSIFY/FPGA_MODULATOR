transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync {D:/ModemPrograms/Chapter_9/E9_3/PnSync/pn.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync/source {D:/ModemPrograms/Chapter_9/E9_3/PnSync/source/PnSync.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync/source {D:/ModemPrograms/Chapter_9/E9_3/PnSync/source/pn_code.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync {D:/ModemPrograms/Chapter_9/E9_3/PnSync/counter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync/source {D:/ModemPrograms/Chapter_9/E9_3/PnSync/source/integrator.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync/source {D:/ModemPrograms/Chapter_9/E9_3/PnSync/source/integrator_col.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync/source {D:/ModemPrograms/Chapter_9/E9_3/PnSync/source/PN_adjust.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync {D:/ModemPrograms/Chapter_9/E9_3/PnSync/mult18_18.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_3/PnSync/simulation/modelsim {D:/ModemPrograms/Chapter_9/E9_3/PnSync/simulation/modelsim/PnSync.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  PnSync_vlg_tst

add wave *
view structure
view signals
run -all
