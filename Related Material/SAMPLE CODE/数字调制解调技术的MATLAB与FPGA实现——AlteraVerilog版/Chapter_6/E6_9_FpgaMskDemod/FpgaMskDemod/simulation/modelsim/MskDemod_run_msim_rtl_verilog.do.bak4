transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/locklpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/msklpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/mult8_8.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source/SquareLoop.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source/MskDemod.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source/Shape.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/source/DemodOut.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/simulation/modelsim {D:/ModemPrograms/Chapter_6/E6_9_FpgaMskDemod/FpgaMskDemod/simulation/modelsim/MskDemod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  MskDemod_vlg_tst

add wave *
view structure
view signals
run -all
