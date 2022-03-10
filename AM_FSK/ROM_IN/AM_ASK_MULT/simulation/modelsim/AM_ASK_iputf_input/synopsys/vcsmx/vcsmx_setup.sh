
cp -f J:/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0_sin.hex ./
cp -f J:/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0_cos.hex ./

vlogan +v2k "J:/AM_ASK/ip/fsk/fsk/simulation/submodules/fsk_nco_ii_0.v" -work nco_ii_0
vlogan +v2k "J:/AM_ASK/ip/fsk/fsk/simulation/fsk.v"                                   
