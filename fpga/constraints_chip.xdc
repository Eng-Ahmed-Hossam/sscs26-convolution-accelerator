# ---------------------------------------------------------------------------
# constraints_chip.xdc --- constraints for a PIN-LEVEL build of conv_top_chip.
#
# Owner : WP5.  Refs: docs/06_implementation_flow.md s1-s2,
#         docs/09_bonus_and_stretch.md s4 (board demo).
#
# THIS IS NOT THE FoM FLOW. The competition numbers come from the
# out-of-context build of `conv_top` with fpga/constraints.xdc, which is the
# honest way to characterise a core (docs/06 s1.2). This file exists for the
# board-demo bitstream, where the design is a real chip with real pads.
#
# WHY THE I/O PATHS ARE NOT TIMED AGAINST AN EXTERNAL REFERENCE
#   Measured on this design, timing conv_top's ports as pads against a virtual
#   external clock gives WNS -4.714 ns with 27 failing endpoints. Every one of
#   those violations touches a port; there are ZERO internal
#   register-to-register violations. The cause is visible in the report:
#
#       Clock Path Skew:        -5.246 ns
#         Source Clock Delay:    5.246 ns   (IBUF 1.075 + route 2.205
#                                            + BUFG 0.101 + route 1.865)
#         Destination Clock Delay: 0.000 ns (an output pad has no clock)
#
#   The clock enters a general-purpose pin, crosses the die to a BUFG and
#   returns, and that 5.246 ns of insertion delay is charged in full against
#   every output path. At a 6.667 ns period there is nothing left. This
#   measures the pin-out and the clock tree, not the accelerator.
#
#   More importantly it measures something that does not exist in the real
#   system: `px_data`, `out_data` and the rest are NOT chip pins. They connect
#   to on-chip logic -- the UART shell of docs/09 s4. The only real pads in the
#   board design are the UART pair, the clock and reset, and a 115200-baud
#   serial link is trivially timed. Timing these ports as pads is therefore
#   modelling a system that will never be built.
#
#   So they are declared false paths here, and the build then reports what
#   actually matters: the register-to-register timing of the logic. With this
#   file the pin-level build reports "All user specified timing constraints are
#   met" at 150 MHz.
#
# WHEN A REAL BOARD TARGET EXISTS, replace the false paths below with genuine
# set_input_delay/set_output_delay against the actual driving and receiving
# devices, add pin LOCs and I/O standards, and clock the design through an
# MMCM so the insertion delay is compensated rather than charged.
# ---------------------------------------------------------------------------

set clk_period 6.667

create_clock -period $clk_period -name clk [get_ports clk]

# Reset: asynchronously asserted, synchronously deasserted (assumption A8).
set_false_path -from [get_ports rst_n]

# Core ports are internal nets in the real system -- see the note above.
set_false_path -from [all_inputs]
set_false_path -to   [all_outputs]
