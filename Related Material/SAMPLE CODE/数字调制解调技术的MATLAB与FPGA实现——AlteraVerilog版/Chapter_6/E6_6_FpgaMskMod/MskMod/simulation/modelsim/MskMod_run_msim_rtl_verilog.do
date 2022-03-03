transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod {D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/dds.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/source {D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/source/FskMod.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/source {D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/source/Code.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/source {D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/source/MskMod.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/simulation/modelsim {D:/ModemPrograms/Chapter_6/E6_6_FpgaMskMod/MskMod/simulation/modelsim/MskMod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  MskMod_vlg_tst

add wave *
view structure
view signals
run -all
