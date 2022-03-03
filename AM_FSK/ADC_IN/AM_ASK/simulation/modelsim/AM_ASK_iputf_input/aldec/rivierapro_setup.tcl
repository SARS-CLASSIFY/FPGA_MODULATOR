
file copy -force J:/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0_sin.hex ./
file copy -force J:/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0_cos.hex ./

vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/sid_2c_1p.v"        -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_nco_fxx.v"      -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_gar.v"          -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_nco_apr_dxx.v"  -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_dxx_g.v"        -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_nco_as_m_cen.v" -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_altqmcpipe.v"   -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_nco_mob_rw.v"   -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_nco_isdr.v"     -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/segment_arr_tdl.v"  -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/segment_sel.v"      -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_dxx.v"          -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/aldec/asj_xnqg.v"         -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0.v"           -work nco_ii_0
vlog -v2k5 "J:/AM_ASK/ip/fsk/fsk/simulation/fsk.v"                                             
