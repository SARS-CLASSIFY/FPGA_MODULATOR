transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/fir_lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/controldivfreq.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/monostable.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/differpd.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/clktrans.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/BitSync.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/cd2ab.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/Polar.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/PolarCostas.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/source/PhaseDetect.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/mult8_8.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/simulation/modelsim {D:/ModemPrograms/Chapter_7/E7_7_FpgaDqpskDemod/simulation/modelsim/PolarCostas.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  PolarCostas_vlg_tst

add wave *
view structure
view signals
run -all
