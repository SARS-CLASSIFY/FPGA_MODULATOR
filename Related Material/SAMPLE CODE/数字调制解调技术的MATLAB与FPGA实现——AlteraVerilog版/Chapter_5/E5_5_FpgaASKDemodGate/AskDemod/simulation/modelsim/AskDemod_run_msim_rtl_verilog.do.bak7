transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod {D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/source {D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/source/AskDemod.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/source {D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/source/Gate.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/simulation/modelsim {D:/ModemPrograms/Chapter_5/E5_5_FpgaASKDemodGate/AskDemod/simulation/modelsim/AskDemod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  AskDemod_vlg_tst

add wave *
view structure
view signals
run -all
