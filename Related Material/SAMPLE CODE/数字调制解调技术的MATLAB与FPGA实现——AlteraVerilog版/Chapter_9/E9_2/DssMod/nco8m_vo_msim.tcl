transcript on 
write transcript nco_vo_transcript
if {[file exist [project env]] > 0} {
project close
}
if {[file exist "D:/ModemPrograms/Chapter_9/E9_2/DssMod/nco8m.mpf"] == 0} {
  project new [pwd] nco8m
} else	{
project open nco8m
}
# Create default work directory if not present
if {[file exist work] ==0} 	{
  exec vlib work
  exec vmap work work
}
# Map lpm library
if {[file exist lpm] ==0} 	{
  exec vlib lpm
  exec vmap lpm lpm}
vlog -93 -work lpm $env(QUARTUS_ROOTDIR)/eda/sim_lib/220model.v

# Map altera_mf library
if {[file exist altera_mf] ==0} 	{
  exec vlib altera_mf
  exec vmap altera_mf altera_mf}
vlog -93 -work altera_mf $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v

# Map sgate library
if {[file exist sgate] ==0} 	{
  exec vlib sgate
  exec vmap sgate sgate}
vlog -93 -work sgate $env(QUARTUS_ROOTDIR)/eda/sim_lib/sgate.v

vlog nco8m.vo
vlog nco8m_tb.v
vsim -L lpm -L altera_mf -L sgate -novopt nco8m_tb
do nco8m_wave.do
run 22000 ns
