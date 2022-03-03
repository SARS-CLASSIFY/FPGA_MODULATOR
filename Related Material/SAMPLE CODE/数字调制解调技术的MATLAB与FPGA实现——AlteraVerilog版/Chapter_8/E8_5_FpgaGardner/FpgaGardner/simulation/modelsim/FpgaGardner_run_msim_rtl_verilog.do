transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/mult18_16.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source/FpgaGardner.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source/InterpolateFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source/ErrorLp.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/source/gnco.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/simulation/modelsim {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/FpgaGardner/simulation/modelsim/FpgaGardner.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FpgaGardner_vlg_tst

add wave *
view structure
view signals
run -all
