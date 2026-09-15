# ---------------------------------------------------------------------------
# power_saif.tcl --- SAIF-based power analysis (the reported methodology).
#
# Owner : WP5.  Ref: docs/06_implementation_flow.md s4 steps 3-5.
#
#   vivado -mode batch -source fpga/power_saif.tcl -tclargs -variant lut
#
# Reads the routed checkpoint and the SAIF captured over one frame of real
# streaming, then writes power_saif.rpt. This is the number the report and the
# FoM must use; report_power without a SAIF performs vectorless activity
# propagation, which docs/06 s4 rejects as not credible.
#
# The script FAILS rather than silently degrading if the SAIF is missing, so a
# vectorless figure can never be mistaken for the reported one. It also records
# the SAIF match statistics: docs/06 s4 requires the match to exceed 90%, and
# a low match means the SAIF scope was wrong and the power number is not
# trustworthy even though report_power completed happily.
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

set rpt  [file join $root fpga reports $opt_variant]
set dcp  [file join $rpt post_route.dcp]
set saif [file join $rpt sim conv_top.saif]

if {![file exists $dcp]} {
    error "power_saif: $dcp not found -- run fpga/build.tcl first."
}
if {![file exists $saif]} {
    error "power_saif: $saif not found. Run fpga/run_postimpl.py first.\
           Refusing to fall back to vectorless power: docs/06 s4 requires\
           switching activity from a real frame, and a silently-substituted\
           vectorless number would invalidate the reported FoM."
}

open_checkpoint $dcp

# The SAIF was recorded with the DUT instance as its scope, so it is applied
# to the corresponding path in this design.
read_saif -strip_path tb_conv_netlist/dut $saif

report_power -file [file join $rpt power_saif.rpt]
# (No separate detail report: -hierarchical_depth does not exist in Vivado
# 2018.2, and the main report already carries the hierarchical breakdown.)

puts "POWER_SAIF written to [file join $rpt power_saif.rpt]"

# Echo the headline numbers so the run log carries them too.
set fh [open [file join $rpt power_saif.rpt] r]
while {[gets $fh line] >= 0} {
    if {[regexp {Total On-Chip Power|Dynamic \(W\)|Device Static|Confidence Level} $line]} {
        puts "  [string trim $line]"
    }
}
close $fh

close_design
puts "POWER COMPLETE"
