transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/bpf2.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/bpf1.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/dds.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/source {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/source/FskMod.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/source {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/source/FskDemod.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/simulation/modelsim {D:/ModemPrograms/Chapter_6/E6_5_FpgaFskDemod/fskmodem/simulation/modelsim/FskDemod.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FskDemod_vlg_tst

add wave *
view structure
view signals
run -all
