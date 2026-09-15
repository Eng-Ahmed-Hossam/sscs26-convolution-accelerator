# ---------------------------------------------------------------------------
# export_netlist.tcl --- write the post-implementation netlist for simulation.
#
# Owner : WP5.  Ref: docs/06_implementation_flow.md s4 step 1.
#
#   vivado -mode batch -source fpga/export_netlist.tcl -tclargs -variant lut
#
# Opens the routed checkpoint produced by build.tcl and writes:
#   <variant>/sim/conv_top_funcsim.v   functional netlist (real primitives,
#                                      zero delay) -- fast, and sufficient for
#                                      both the bit-exactness check and SAIF
#                                      switching activity;
#   <variant>/sim/conv_top.sdf         SDF timing annotation, for a timing
#                                      simulation if one is wanted.
#
# docs/06 s4 permits a functional netlist simulation in place of a full timing
# simulation provided the report states which was used. The default flow uses
# funcsim: at 1060 cycles a timing sim adds runtime without changing toggle
# counts, and toggle counts are what SAIF records. The SDF is exported anyway
# so the choice stays open and the report can be backed either way.
# ---------------------------------------------------------------------------

set script_dir [file dirname [file normalize [info script]]]
set root       [file dirname $script_dir]

set opt_variant "lut"
for {set i 0} {$i < [llength $argv]} {incr i} {
    set a [lindex $argv $i]
    switch -- $a {
        -variant { incr i; set opt_variant [lindex $argv $i] }
        default  { puts "WARNING: ignoring unknown argument '$a'" }
    }
}

set rpt [file join $root fpga reports $opt_variant]
set dcp [file join $rpt post_route.dcp]
if {![file exists $dcp]} {
    error "export_netlist: $dcp not found. Run fpga/build.tcl first --\
           the netlist can only be exported from a routed checkpoint."
}

set simdir [file join $rpt sim]
file mkdir $simdir

puts "opening $dcp"
open_checkpoint $dcp

set netlist [file join $simdir conv_top_funcsim.v]
set sdf     [file join $simdir conv_top.sdf]

write_verilog -force -mode funcsim $netlist
write_sdf     -force $sdf

puts "NETLIST $netlist"
puts "SDF     $sdf"
close_design
puts "EXPORT COMPLETE"
