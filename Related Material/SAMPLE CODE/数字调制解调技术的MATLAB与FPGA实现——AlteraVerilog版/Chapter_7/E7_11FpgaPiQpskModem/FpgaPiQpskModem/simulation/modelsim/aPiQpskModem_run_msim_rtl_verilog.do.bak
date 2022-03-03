transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/h_bpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/bpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/lpf.vo}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source/differpd.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source/controldivfreq.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source/clktrans.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source/BitSync.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source/monostable.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/source/PiQpskModem.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/Delay8.v}
vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/mult16_18.v}

vlog -vlog01compat -work work +incdir+D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/simulation/modelsim {D:/ModemPrograms/Chapter_7/E7_11FpgaPiQpskModem/FpgaPiQpskModem/simulation/modelsim/PiQpskModem.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  PiQpskModem_vlg_tst

add wave *
view structure
view signals
run -all
