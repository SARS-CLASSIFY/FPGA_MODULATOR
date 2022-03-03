transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas {D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/fir_lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas {D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/source {D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/source {D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/source/CostasLoop.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas {D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/mult8_8.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/simulation/modelsim {D:/ModemPrograms/Chapter_7/E7_2_FpgaCostas/simulation/modelsim/CostasLoop.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  CostasLoop_vlg_tst

add wave *
view structure
view signals
run -all
