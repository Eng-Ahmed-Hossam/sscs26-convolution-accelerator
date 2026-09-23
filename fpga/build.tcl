# ---------------------------------------------------------------------------
# build.tcl --- scripted Vivado flow for conv_top (Phase 6 / WP5).
#
# Ref: docs/06_implementation_flow.md (the whole file is the spec).
# Target: Zynq-7000 xc7z020clg400-1 (PYNQ-Z2).
#
#   vivado -mode batch -source fpga/build.tcl                        ;# both variants
#   vivado -mode batch -source fpga/build.tcl -tclargs -variant lut  ;# LUT only
#   vivado -mode batch -source fpga/build.tcl -tclargs -variant dsp
#   vivado -mode batch -source fpga/build.tcl -tclargs -period 6.667 ;# try 150 MHz
#
# Per variant (USE_DSP=0 named "lut", USE_DSP=1 named "dsp"):
#   1. read rtl/pkg_params.sv explicitly FIRST, then an explicit ordered list
#      (never glob -- ordering matters and CONTRIBUTING rule 2 requires it),
#   2. out-of-context synthesis on conv_top -- core-only numbers, uncontaminated
#      by I/O buffers, which is what the FoM should be computed from,
#   3. opt_design, place_design, phys_opt_design, route_design,
#   4. utilization / timing / power / clocks reports into fpga/reports/<variant>/,
#   5. COMPLIANCE GATE on the LUT variant: DSP != 0 or BRAM != 0 is a hard
#      error. This is the FoM strategy enforced automatically -- removing it is
#      an auto-reject under CONTRIBUTING s5.
#
# Everything is scripted: no GUI-only step may produce a reported number.
# ---------------------------------------------------------------------------

set script_dir [file dirname [file normalize [info script]]]
set root       [file dirname $script_dir]

# --- argument parsing -------------------------------------------------------
set opt_variant "both"
set opt_period  6.667      ;# 150 MHz, matching fpga/constraints.xdc.
                            ;# Overriding this re-applies the I/O delays too.
set opt_impl    1          ;# run place & route, not synthesis alone
set opt_w       ""         ;# optional W override for a parameter smoke build
# "core" = out-of-context conv_top -- the FoM flow (docs/06 s1.2).
# "chip" = pin-level conv_top_chip with registered I/O, for the board demo.
set opt_mode    "core"

for {set i 0} {$i < [llength $argv]} {incr i} {
    set a [lindex $argv $i]
    switch -- $a {
        -variant { incr i; set opt_variant [lindex $argv $i] }
        -period  { incr i; set opt_period  [lindex $argv $i] }
        -w       { incr i; set opt_w       [lindex $argv $i] }
        -synth-only { set opt_impl 0 }
        -mode    { incr i; set opt_mode [lindex $argv $i] }
        default  { puts "WARNING: ignoring unknown argument '$a'" }
    }
}

# --- source list: pkg_params FIRST, then dependency order -------------------
set rtl_sources [list \
    [file join $root rtl pkg_params.sv]     \
    [file join $root rtl line_window.sv]    \
    [file join $root rtl mac_array.sv]      \
    [file join $root rtl adder_tree.sv]     \
    [file join $root rtl normalize.sv]      \
    [file join $root rtl kernel_regfile.sv] \
    [file join $root rtl ctrl_fsm.sv]       \
    [file join $root rtl conv_top.sv]       \
]

#: Read only for -mode chip; the core flow must not see a second top.
set chip_source [file join $root rtl conv_top_chip.sv]

set part "xc7z020clg400-1"

# ---------------------------------------------------------------------------
# Count the primitives the FoM penalises. Queried from the netlist directly
# rather than parsed out of a report -- a text parse silently returns 0 when
# the report format shifts, which would turn the compliance gate into a no-op.
# ---------------------------------------------------------------------------
proc count_primitive {pattern} {
    return [llength [get_cells -quiet -hierarchical -filter "REF_NAME =~ $pattern"]]
}

# ---------------------------------------------------------------------------
# Pull WNS / TNS / failing-endpoint count out of the Design Timing Summary that
# report_timing_summary just wrote.
#
# Deliberately parsed from the REPORT rather than queried with get_timing_paths:
# the report is the artefact the submission quotes, so reading the same file
# guarantees the summary and the report cannot disagree. An earlier version of
# this script used get_timing_paths and silently recorded "n/a" while the report
# showed a perfectly good +0.323 ns -- exactly the quiet disagreement this
# avoids.
# ---------------------------------------------------------------------------
# ---------------------------------------------------------------------------
# Pull the official utilization figures out of the FLAT report_utilization
# output.
#
# WHY THIS EXISTS: counting LUT* primitive cells with get_cells is NOT the LUT
# number anyone means. Vivado packs two small LUTs into one physical LUT6 site,
# so the raw cell count runs well above the "Slice LUTs" figure the tool (and
# every published utilization table) reports -- on this design 1214 cells
# against 937 slice LUTs, a 30% overstatement. The FoM cost term is
# LUTs + 50*DSPs + 100*BRAMs, so using the cell count would inflate the cost
# and understate the design. docs/06 s3 says to record Slice LUTs; this reads
# exactly that row.
# ---------------------------------------------------------------------------
proc parse_utilization {path} {
    set res [dict create luts "n/a" ffs "n/a" srls "n/a" dsps "n/a" brams "n/a"]
    if {![file exists $path]} { return $res }
    set fh [open $path r]
    while {[gets $fh line] >= 0} {
        # Rows look like:  | Slice LUTs | 937 | 0 | 53200 | 1.76 |
        #
        # The trailing \* is NOT optional decoration: a POST-SYNTHESIS report
        # writes "Slice LUTs*" (the asterisk marks an estimate) while a
        # POST-ROUTE report writes "Slice LUTs". A regex that demanded the
        # bare name silently returned "n/a" for every synthesis-only run --
        # a missing number rather than a wrong one, but still a parse that
        # failed quietly. Accept both and let the caller say which stage it
        # read.
        if {[regexp {^\|\s*Slice LUTs\*?\s*\|\s*([0-9]+)\s*\|} $line -> v]} {
            dict set res luts $v
        } elseif {[regexp {^\|\s*Slice Registers\*?\s*\|\s*([0-9]+)\s*\|} $line -> v]} {
            dict set res ffs $v
        } elseif {[regexp {^\|\s*LUT as Shift Register\*?\s*\|\s*([0-9]+)\s*\|} $line -> v]} {
            dict set res srls $v
        } elseif {[regexp {^\|\s*DSPs\*?\s*\|\s*([0-9]+)\s*\|} $line -> v]} {
            dict set res dsps $v
        } elseif {[regexp {^\|\s*Block RAM Tile\*?\s*\|\s*([0-9.]+)\s*\|} $line -> v]} {
            dict set res brams $v
        }
    }
    close $fh
    return $res
}

proc parse_timing_summary {path} {
    if {![file exists $path]} { return [list "n/a" "n/a" "n/a" "n/a"] }
    set fh [open $path r]
    set data [read $fh]
    close $fh
    set lines [split $data "\n"]
    set n [llength $lines]
    for {set i 0} {$i < $n} {incr i} {
        if {[string match "*WNS(ns)*TNS(ns)*" [lindex $lines $i]]} {
            for {set j [expr {$i + 1}]} {$j < $n && $j < [expr {$i + 4}]} {incr j} {
                set row [string trim [lindex $lines $j]]
                # WNS TNS TNS-failing TNS-total WHS THS THS-failing ...
                if {[regexp {^(-?[0-9]+\.[0-9]+)\s+(-?[0-9]+\.[0-9]+)\s+([0-9]+)\s+([0-9]+)\s+(-?[0-9]+\.[0-9]+)} $row -> wns tns fep tot whs]} {
                    return [list $wns $tns $fep $whs]
                }
                if {[regexp {^(-?[0-9]+\.[0-9]+)\s+(-?[0-9]+\.[0-9]+)\s+([0-9]+)} $row -> wns tns fep]} {
                    return [list $wns $tns $fep "n/a"]
                }
            }
        }
    }
    return [list "n/a" "n/a" "n/a" "n/a"]
}

# ---------------------------------------------------------------------------
# The clock period declared in the XDC, read straight from its `set clk_period`
# line so this script never keeps its own copy of a value the XDC owns.
# ---------------------------------------------------------------------------
proc xdc_clk_period {path} {
    if {![file exists $path]} { error "xdc_clk_period: $path missing" }
    set fh [open $path r]
    set data [read $fh]
    close $fh
    if {[regexp {(?m)^\s*set\s+clk_period\s+([0-9.]+)} $data -> v]} { return $v }
    error "xdc_clk_period: no `set clk_period` line in $path"
}

proc build_variant {variant use_dsp} {
    global root rtl_sources chip_source part opt_period opt_impl opt_w script_dir opt_mode
    set eff_period $opt_period

    puts "\n=============================================================="
    puts "VARIANT $variant  mode=$opt_mode  (USE_DSP=$use_dsp)"
    puts "=============================================================="

    set rpt [file join $root fpga reports [expr {$opt_mode eq "chip" ? "${variant}_chip" : $variant}]]
    file mkdir $rpt

    create_project -in_memory -part $part
    set_property target_language Verilog [current_project]

    # 1. sources, pkg_params.sv first
    foreach f $rtl_sources {
        if {![file exists $f]} { error "BUILD ERROR: missing source $f" }
        read_verilog -sv $f
    }
    if {$opt_mode eq "chip"} { read_verilog -sv $chip_source }
    # ---- constraints ------------------------------------------------------
    # The XDC owns the clock period and derives its I/O budget from it. A sweep
    # therefore cannot be done by re-issuing set_property after read_xdc: the
    # constraints must be in force during SYNTHESIS, and at read_xdc time there
    # is no open design to modify. Instead the XDC is rewritten with the new
    # period into the report directory and that file is read. Every other
    # constraint survives verbatim, the I/O budget rescales automatically
    # because the XDC computes it with expr, and the file that was actually
    # used is left on disk as an auditable artefact.
    set base_xdc [expr {$opt_mode eq "chip"
                        ? [file join $script_dir constraints_chip.xdc]
                        : [file join $script_dir constraints.xdc]}]
    set xdc_default [xdc_clk_period $base_xdc]
    set eff_period  $xdc_default
    set used_xdc    $base_xdc

    if {abs($opt_period - $xdc_default) > 0.0005} {
        set fh [open $base_xdc r]
        set txt [read $fh]
        close $fh
        regsub {(?m)^\s*set\s+clk_period\s+[0-9.]+} $txt "set clk_period $opt_period" txt
        set used_xdc [file join $rpt constraints_swept.xdc]
        set fh [open $used_xdc w]
        puts $fh "# GENERATED by build.tcl -period $opt_period -- do not edit."
        puts $fh "# Source: fpga/constraints.xdc with clk_period rewritten."
        puts $fh $txt
        close $fh
        set eff_period $opt_period
        puts "CONSTRAINT SWEEP: $xdc_default -> $opt_period ns (via [file tail $used_xdc])"
    } else {
        puts "CONSTRAINT: period $eff_period ns from constraints.xdc (I/O budget 20%)"
    }
    read_xdc $used_xdc

    # 2. out-of-context synthesis. The variant is selected by overriding the
    #    conv_top MODULE parameter -- never by editing source, and never by
    #    overriding a package constant (CONTRIBUTING rule 2).
    set generics "USE_DSP=$use_dsp"
    if {$opt_w ne ""} { append generics " W=$opt_w" }

    # -mode chip is a FULL build: I/O buffers inserted, real pads. The core
    # flow stays out-of-context, which is what the FoM is computed from.
    if {$opt_mode eq "chip"} {
        synth_design -top conv_top_chip -part $part -generic $generics
    } else {
        synth_design -mode out_of_context -top conv_top -part $part \
                     -generic $generics
    }

    # Cross-check: the period the TOOL ended up with must match what this
    # script believes it applied. A silent disagreement here is exactly what
    # produced a 5% Fmax overstatement before.
    set applied [get_property PERIOD [get_clocks clk]]
    if {abs($applied - $eff_period) > 0.0005} {
        error "CONSTRAINT MISMATCH: tool applied $applied ns but the build               recorded $eff_period ns. Fmax would be wrong; refusing to continue."
    }
    puts "CONSTRAINT VERIFIED: tool period $applied ns == recorded $eff_period ns"

    # Timing at the SYNTHESIS stage. This is an estimate -- synthesis knows
    # cell delays but not placement or routing, so Vivado uses wire-load
    # guesses. It is reported anyway because "does the design meet timing?"
    # has two answers at two stages, and a build that passes post-route but
    # was already hopeless post-synth is worth noticing.
    report_timing_summary -delay_type min_max -max_paths 10 \
        -file [file join $rpt timing_synth.rpt]
    lassign [parse_timing_summary [file join $rpt timing_synth.rpt]] \
        swns stns sfep swhs
    puts "TIMING post-synth  : WNS=$swns WHS=$swhs TNS=$stns FAILING=$sfep"

    write_checkpoint -force [file join $rpt post_synth.dcp]
    report_utilization -file [file join $rpt utilization_synth.rpt]
    report_utilization -hierarchical -file [file join $rpt utilization_synth_hier.rpt]

    # The default build additionally publishes its post-synthesis utilization
    # under the name the Phase 4 deferred gate asks for, so that gate has a
    # single artefact to point at.
    if {$variant eq "lut" && $opt_mode eq "core"} {
        report_utilization -file [file join $root fpga reports util_default_synth.rpt]
    }

    # ---- INFERRED LATCHES -------------------------------------------------
    # A latch means an always_comb path that does not assign on every branch.
    # Queried from the netlist rather than grepped from the log: the log text
    # varies between Vivado versions, a cell census does not.
    set latches [get_cells -quiet -hierarchical -filter {REF_NAME =~ LD*}]
    puts "COMPLIANCE post-synth: latches=[llength $latches]"
    if {[llength $latches] != 0} {
        foreach l $latches { puts "  LATCH: [get_property NAME $l] ([get_property REF_NAME $l])" }
        error "COMPLIANCE FAILURE: [llength $latches] inferred latch(es). Every\
               always_comb must assign all its outputs on all paths."
    }

    # --- COMPLIANCE GATE (docs/06 s1.5) ------------------------------------
    # Checked after synthesis so the build fails fast, and again after routing.
    set dsp_count  [count_primitive "DSP48*"]
    set bram_count [expr {[count_primitive "RAMB36*"] + [count_primitive "RAMB18*"]}]
    puts "COMPLIANCE post-synth: DSP=$dsp_count BRAM=$bram_count"
    if {$variant eq "lut"} {
        if {$dsp_count != 0 || $bram_count != 0} {
            error "COMPLIANCE FAILURE: lut variant inferred DSP=$dsp_count BRAM=$bram_count.\
                   The FoM strategy requires both to be 0 (docs/00_charter.md).\
                   Fix the synthesis attributes -- this is a scoring failure, not cosmetic."
        }
    }

    # 3. implementation
    if {$opt_impl} {
        opt_design
        place_design
        phys_opt_design
        route_design
        write_checkpoint -force [file join $rpt post_route.dcp]
    }

    # 4. reports
    # Flat report first: it carries the Slice LUTs / Slice Registers / DSPs /
    # Block RAM summary tables that docs/06 s3 says to record. The hierarchical
    # report is kept alongside it for the per-module breakdown in the report,
    # but it does NOT contain those summary tables.
    report_utilization -file [file join $rpt utilization.rpt]
    report_utilization -hierarchical -file [file join $rpt utilization_hier.rpt]
    report_timing_summary -delay_type min_max -max_paths 10 -input_pins \
        -file [file join $rpt timing.rpt]
    report_clocks -file [file join $rpt clocks.rpt]
    # Vectorless power for now. docs/06 s4 requires SAIF-based power from a real
    # frame for the REPORTED number; fpga/power_saif.tcl produces that once a
    # post-implementation simulation has been run. This file is explicitly
    # labelled so it can never be mistaken for the reported methodology.
    report_power -file [file join $rpt power_vectorless.rpt]

    # Resource figures come from the FLAT utilization report -- these are the
    # numbers docs/06 s3 requires and the ones the FoM cost term uses.
    set util [parse_utilization [file join $rpt utilization.rpt]]
    set lut_count  [dict get $util luts]
    set ff_count   [dict get $util ffs]
    set srl_count  [dict get $util srls]
    set dsp_count  [dict get $util dsps]
    set bram_count [dict get $util brams]

    # The compliance gate still queries the NETLIST directly rather than
    # trusting the parse: if the report format ever shifts, the parse degrades
    # to "n/a" while this stays exact, so the gate cannot silently pass.
    set dsp_cells  [count_primitive "DSP48*"]
    set bram_cells [expr {[count_primitive "RAMB36*"] + [count_primitive "RAMB18*"]}]
    set lut_cells  [llength [get_cells -quiet -hierarchical -filter {REF_NAME =~ LUT*}]]
    puts "NOTE $variant: $lut_cells LUT primitive cells pack into $lut_count slice LUTs"

    if {$variant eq "lut" && ($dsp_cells != 0 || $bram_cells != 0)} {
        error "COMPLIANCE FAILURE after routing: DSP=$dsp_cells BRAM=$bram_cells"
    }

    # 5. machine-readable summary for the FoM worksheet
    # WNS is the slack of the worst setup path. TNS is the SUM of negative
    # slacks, accumulated over the failing paths -- a timing_path object has no
    # TNS property of its own, so it must be summed explicitly. A design that
    # meets timing has no failing paths and therefore TNS = 0.
    set wns "n/a"
    set tns "n/a"
    set failing_ep "n/a"
    set whs "n/a"
    if {$opt_impl} {
        lassign [parse_timing_summary [file join $rpt timing.rpt]] wns tns failing_ep whs
    }

    set fh [open [file join $rpt summary.txt] w]
    puts $fh "variant      $variant"
    puts $fh "use_dsp      $use_dsp"
    puts $fh "part         $part"
    puts $fh "period_ns    $eff_period"
    puts $fh "fmax_mhz     [expr {($eff_period - $wns) > 0 ? 1000.0/($eff_period - $wns) : 0}]"
    puts $fh "luts         $lut_count"
    puts $fh "lut_cells    $lut_cells"
    puts $fh "ffs          $ff_count"
    puts $fh "srls         $srl_count"
    puts $fh "dsps         $dsp_count"
    puts $fh "brams        $bram_count"
    puts $fh "wns_ns       $wns"
    puts $fh "tns_ns       $tns"
    puts $fh "failing_eps  $failing_ep"
    puts $fh "synth_wns_ns $swns"
    puts $fh "synth_whs_ns $swhs"
    puts $fh "synth_tns_ns $stns"
    puts $fh "synth_failing_eps $sfep"
    puts $fh "whs_ns       $whs"
    close $fh

    puts "TIMING post-route  : WNS=$wns WHS=$whs TNS=$tns FAILING=$failing_ep"
    puts "SUMMARY $variant: LUT=$lut_count FF=$ff_count SRL=$srl_count\
          DSP=$dsp_count BRAM=$bram_count WNS=$wns WHS=$whs TNS=$tns FAILING=$failing_ep"

    close_project
}

# --- run --------------------------------------------------------------------
switch -- $opt_variant {
    lut  { build_variant lut 0 }
    dsp  { build_variant dsp 1 }
    both { build_variant lut 0 ; build_variant dsp 1 }
    default { error "unknown -variant '$opt_variant' (use lut, dsp or both)" }
}

puts "\nBUILD COMPLETE"
