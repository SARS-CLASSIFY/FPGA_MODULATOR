transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_2/DssMod {D:/ModemPrograms/Chapter_9/E9_2/DssMod/nco8m.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_2/DssMod {D:/ModemPrograms/Chapter_9/E9_2/DssMod/shape_fir.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_2/DssMod/source {D:/ModemPrograms/Chapter_9/E9_2/DssMod/source/PnCode.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_2/DssMod/source {D:/ModemPrograms/Chapter_9/E9_2/DssMod/source/DssMod.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_2/DssMod {D:/ModemPrograms/Chapter_9/E9_2/DssMod/mult8_8.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_9/E9_2/DssMod/simulation/modelsim {D:/ModemPrograms/Chapter_9/E9_2/DssMod/simulation/modelsim/DssMod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  DssMod_vlg_tst

add wave *
view structure
view signals
run -all
