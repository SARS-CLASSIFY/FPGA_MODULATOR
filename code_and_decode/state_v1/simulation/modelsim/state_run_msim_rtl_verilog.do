transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/source {C:/Users/86150/Desktop/FPGA MODULATION/state/source/shift_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/source {C:/Users/86150/Desktop/FPGA MODULATION/state/source/tmm_c.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/source {C:/Users/86150/Desktop/FPGA MODULATION/state/source/shift_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/source {C:/Users/86150/Desktop/FPGA MODULATION/state/source/decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/source {C:/Users/86150/Desktop/FPGA MODULATION/state/source/tmm_c1.v}
vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/source {C:/Users/86150/Desktop/FPGA MODULATION/state/source/tmm_c2.v}

vlog -vlog01compat -work work +incdir+C:/Users/86150/Desktop/FPGA\ MODULATION/state/simulation/modelsim {C:/Users/86150/Desktop/FPGA MODULATION/state/simulation/modelsim/shift_top.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  shift_top_vlg_tst

add wave *
view structure
view signals
run -all
