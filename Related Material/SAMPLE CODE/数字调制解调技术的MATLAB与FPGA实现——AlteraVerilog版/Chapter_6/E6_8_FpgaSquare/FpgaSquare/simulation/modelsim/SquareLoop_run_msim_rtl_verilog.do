transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare {D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare {D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/locklpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/source {D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/source/SquareLoop.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/source {D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare {D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/mult8_8.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/simulation/modelsim {D:/ModemPrograms/Chapter_6/E6_8_FpgaSquare/FpgaSquare/simulation/modelsim/SquareLoop.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  SquareLoop_vlg_tst

add wave *
view structure
view signals
run -all
