transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/source {D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/source/CodeModem.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/source {D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/source/ab2cd.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/source {D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/source/cd2ab.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/simulation/modelsim {D:/ModemPrograms/Chapter_7/E7_4_QpskCodeTrans/simulation/modelsim/CodeModem.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  CodeModem_vlg_tst

add wave *
view structure
view signals
run -all
