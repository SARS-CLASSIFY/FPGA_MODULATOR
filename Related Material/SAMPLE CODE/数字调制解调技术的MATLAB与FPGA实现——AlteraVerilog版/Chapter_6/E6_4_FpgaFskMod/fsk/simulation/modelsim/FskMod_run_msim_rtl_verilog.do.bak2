transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_4_FpgaFskMod/fsk {D:/ModemPrograms/Chapter_6/E6_4_FpgaFskMod/fsk/dds.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_4_FpgaFskMod/fsk/source {D:/ModemPrograms/Chapter_6/E6_4_FpgaFskMod/fsk/source/FskMod.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_4_FpgaFskMod/fsk/simulation/modelsim {D:/ModemPrograms/Chapter_6/E6_4_FpgaFskMod/fsk/simulation/modelsim/FskMod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FskMod_vlg_tst

add wave *
view structure
view signals
run -all
