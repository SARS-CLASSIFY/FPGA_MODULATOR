transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/source {D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/source/QamCodeModem.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/source {D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/source/DeCodeMap.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/source {D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/source/CodeMap.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/simulation/modelsim {D:/ModemPrograms/Chapter_8/E8_2_QamCodeModem/QamCodeModem/simulation/modelsim/QamCodeModem.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  QamCodeModem_vlg_tst

add wave *
view structure
view signals
run -all
