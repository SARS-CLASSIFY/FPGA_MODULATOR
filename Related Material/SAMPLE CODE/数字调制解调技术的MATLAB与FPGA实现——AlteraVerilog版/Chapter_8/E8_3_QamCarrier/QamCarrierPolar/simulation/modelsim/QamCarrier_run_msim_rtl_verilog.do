transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/fir_lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/nco.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/mult8_8.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/source {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/source/QamCarrier.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/source {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/source/LoopFilter.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/source {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/source/PolarDetect.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/simulation/modelsim {D:/ModemPrograms/Chapter_8/E8_3_QamCarrier/QamCarrierPolar/simulation/modelsim/QamCarrier.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  QamCarrier_vlg_tst

add wave *
view structure
view signals
run -all
