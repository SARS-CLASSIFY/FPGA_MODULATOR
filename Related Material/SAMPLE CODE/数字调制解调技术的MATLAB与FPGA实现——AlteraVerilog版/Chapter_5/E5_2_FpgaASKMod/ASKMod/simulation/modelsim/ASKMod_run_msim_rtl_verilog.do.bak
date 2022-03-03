transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_2_FpgaASKMod/ASKMod {D:/ModemPrograms/Chapter_5/E5_2_FpgaASKMod/ASKMod/dds.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_2_FpgaASKMod/ASKMod/source {D:/ModemPrograms/Chapter_5/E5_2_FpgaASKMod/ASKMod/source/ASKMod.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_2_FpgaASKMod/ASKMod/simulation/modelsim {D:/ModemPrograms/Chapter_5/E5_2_FpgaASKMod/ASKMod/simulation/modelsim/ASKMod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  ASKMod_vlg_tst

add wave *
view structure
view signals
run -all
