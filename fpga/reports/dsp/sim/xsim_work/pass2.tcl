# run up to the start of streaming: reset, GSR release and kernel
# load all happen here and must NOT contribute switching activity.
run 455000 ps
open_saif {D:/Digital_IC_Design/SSCS_Design_Competition/fpga/reports/dsp/sim/conv_top.saif}
log_saif [get_objects -r /tb_conv_netlist/dut/*]
run 10440000 ps
close_saif
run -all
quit
