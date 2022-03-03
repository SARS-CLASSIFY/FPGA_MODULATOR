transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/fir_lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/mult18_16.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/gnco.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/FpgaGardner.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/ErrorLp.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/InterpolateFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/DD.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/QamCarrier.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/mult8_8.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/BitSync.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/simulation/modelsim {D:/ModemPrograms/Chapter_8/E8_5_FpgaGardner/QamCarrierDD/simulation/modelsim/QamCarrier.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  QamCarrier_vlg_tst

add wave *
view structure
view signals
run -all
