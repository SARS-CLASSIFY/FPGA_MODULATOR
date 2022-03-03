transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/source {D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/source/FirstTap.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/source {D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/source/SecondTap.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/source {D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/source/IIRCas.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/simulation/modelsim {D:/ModemPrograms/Chapter_4/E4_6_IIRCas/IIRCas/simulation/modelsim/IIRCas.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  IIRCas_vlg_tst

add wave *
view structure
view signals
run -all
