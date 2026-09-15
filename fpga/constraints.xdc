# ---------------------------------------------------------------------------
# constraints.xdc --- timing constraints for conv_top.
#
# Owner : WP5.  Ref: docs/06_implementation_flow.md s1 and s2.
#
# Used for BOTH the out-of-context core builds (the honest core-only numbers
# that feed the FoM) and, later, the board-demo implementation.
#
# Target: 125 MHz (8.0 ns). docs/06 s2 says to start here, and to try 150 MHz
# only once WNS >= 0 with at least 0.5 ns of margin. The *reported* Fmax must
# come from a clean run at the constraint, never from an extrapolation.
#
# NOTE ON BOARD PINS: docs/06 s1 lists UART pin locations for the demo build.
# conv_top has no UART ports -- the demo needs a wrapper that does not exist
# yet (docs/09_bonus_and_stretch.md). Adding pin LOCs here would fail
# elaboration against the current top, so they belong with that wrapper when
# it lands, in a separate demo XDC.
# ---------------------------------------------------------------------------

create_clock -period 8.000 -name clk [get_ports clk]

# Reset is asynchronously asserted and synchronously deasserted (A8), so it is
# not a timed path into the fabric on the assert edge. Declaring it false here
# keeps a reset fanning out to every flop from dominating the timing report and
# hiding the real critical path (expected: adder_tree stage 3, or the LUT
# multiplier -- docs/06 s2).
set_false_path -from [get_ports rst_n]

# ---------------------------------------------------------------------------
# SRL mapping fallback (docs/06 s1).
#
# rtl/line_window.sv carries (* srl_style = "srl" *) on the two (W-N)-deep
# delay lines. This is a belt-and-braces fallback in case the RTL attribute is
# ever lost in a refactor: without SRL mapping the design grows ~536 flip-flops
# and the zero-BRAM FoM claim weakens. The build gate in build.tcl is what
# actually fails the build on BRAM != 0; this just nudges the mapping.
#
# NOT DONE HERE, deliberately. An XDC is a constraint file, not general Tcl:
# Vivado rejects `if` in it with a critical warning. And SRL_STYLE has to
# influence MAPPING, so applying it to already-synthesised cells would be too
# late to change anything even if the syntax were accepted.
#
# The mechanism that actually works is the (* srl_style = "srl" *) attribute in
# rtl/line_window.sv, applied at elaboration. The mechanism that actually
# ENFORCES the outcome is the compliance gate in build.tcl, which errors the
# build out if the LUT variant ever shows BRAM != 0 or DSP != 0, plus the SRL
# count recorded in each variant summary.txt as positive evidence that the
# delay lines really did map to shift-register primitives.
# ---------------------------------------------------------------------------
