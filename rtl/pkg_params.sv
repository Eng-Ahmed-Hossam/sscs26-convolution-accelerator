// ---------------------------------------------------------------------------
// pkg_params.sv --- SINGLE SOURCE OF TRUTH for every constant in the design.
//
// Project : SSCS-EDGE-CONV -- streaming NxN CNN convolution accelerator
// Owner   : WP2 (foundation created before WP1 per docs/07_work_packages.md)
// Refs    : docs/03_fixed_point.md (arithmetic contract, width derivations)
//           docs/04_interfaces.md  (frozen signal widths)
//           CONTRIBUTING.md rule 2 (no literal widths anywhere else)
//
// RULES (CONTRIBUTING.md rule 2):
//   * This package holds fixed N, all fixed widths, NUM_BANKS, P_PIPE, and the
//     DEFAULTS for the two build-selectable conv_top module parameters
//     (W, USE_DSP).
//   * Package constants are NEVER overridden. conv_top re-declares only W and
//     USE_DSP as module parameters defaulting to the *_DEFAULT values below.
//   * Compile this file explicitly, first, before every other RTL source.
//   * model/pkg_params.py parses this file; it is the only Python bridge and
//     carries no fallback numbers. Every constant therefore has exactly one
//     definition, here.
// ---------------------------------------------------------------------------
`ifndef PKG_PARAMS_SV
`define PKG_PARAMS_SV

package pkg_params;

  // -------------------------------------------------------------------------
  // 1. Geometry
  // -------------------------------------------------------------------------

  // Kernel is fixed 3x3 (docs/assumptions.md A6). Coefficients stay runtime
  // programmable; only the geometry is frozen. The golden model generalizes
  // over N to prove the width formulas below (docs/assumptions.md A7).
  localparam int N = 3;

  // Square image edge. Build-selectable via the conv_top module parameter W
  // (docs/assumptions.md A1); this is only its default.
  localparam int W_DEFAULT = 32;

  // 0 = LUT multipliers (default, zero-DSP FoM strategy, docs/00_charter.md)
  // 1 = DSP48 variant, built only for the tradeoff study (docs/06 s6).
  localparam int USE_DSP_DEFAULT = 0;

  // Programmable kernel coefficient banks (docs/02_architecture.md s3).
  localparam int NUM_BANKS = 4;

  // -------------------------------------------------------------------------
  // 2. Datapath widths --- every one derived, none written as a literal.
  //    Derivations and their proofs: docs/03_fixed_point.md s2 and s3.
  // -------------------------------------------------------------------------

  // Pixel: UQ8.0 unsigned, native 8-bit grayscale (docs/03 s1).
  localparam int PIX_W  = 8;
  // Kernel coefficient: Q8.0 signed, [-128, +127], mandated by the competition.
  localparam int COEF_W = 8;

  // Pixel zero-extended to signed before the multiply. The extension is
  // explicit in RTL ({1'b0, px}) so a true signed multiplier is inferred and
  // signed/unsigned inference is never relied upon (docs/03 s2).
  localparam int PIXS_W = PIX_W + 1;

  // Full-precision signed product width of a PIXS_W x COEF_W signed multiply.
  // This is the natural output width of the multiplier, so no operand-range
  // reasoning is needed to guarantee exactness. NOTE: because the zero-extended
  // operand is provably non-negative, the reachable product range
  // [-32640, +32385] also fits PROD_W-1 = 16 bits; the unreachable MSB is
  // pruned by synthesis. Quantified in the docs/03 minimization study.
  localparam int PROD_W = PIXS_W + COEF_W;

  // Reachable extreme magnitudes, used for the exact accumulator bound.
  localparam int PIX_MAX      = (1 << PIX_W) - 1;           // 255
  localparam int COEF_ABS_MAX = (1 << (COEF_W - 1));        // |-128|
  // Signed coefficient endpoints. Derived, so RTL and TBs never re-derive
  // them locally (CONTRIBUTING rule 2); the asymmetry is why the most
  // negative product uses COEF_MIN while the largest positive uses COEF_MAX.
  localparam int COEF_MAX     =  (1 << (COEF_W - 1)) - 1;   // +127
  localparam int COEF_MIN     = -(1 << (COEF_W - 1));       // -128
  // Worst case |sum of N*N products| = N*N * PIX_MAX * |COEF_MIN|.
  localparam int ACC_MAX_ABS  = N * N * PIX_MAX * COEF_ABS_MAX;   // 293_760

  // Minimum signed width holding +/- ACC_MAX_ABS exactly => the accumulator is
  // exact, no overflow anywhere in the tree (proof: docs/03 s3).
  localparam int ACC_W = $clog2(ACC_MAX_ABS) + 1;           // 20

  // Adder-tree intermediate widths (docs/02_architecture.md s5). Each level
  // adds one bit; ACC_W = PROD_W + TREE_STAGES holds by construction and is
  // checked by the elaboration assertion at the end of this package.
  localparam int TREE_STAGES = 3;                           // ceil(log2(N*N)) levels, 9->5->3->1
  localparam int T1_W = PROD_W + 1;                         // 18
  localparam int T2_W = PROD_W + 2;                         // 19

  // Output: 16-bit signed after round-half-up and symmetric saturation.
  localparam int OUT_W = 16;
  localparam int OUT_MAX =  (1 << (OUT_W - 1)) - 1;         // +32767
  localparam int OUT_MIN = -(1 << (OUT_W - 1));             // -32768

  // -------------------------------------------------------------------------
  // 3. Control / configuration widths (docs/04_interfaces.md s1)
  // -------------------------------------------------------------------------

  // cfg_out_shift: round-half-up right shift, 0..7 (docs/assumptions.md A4).
  localparam int SHIFT_W     = 3;
  localparam int SHIFT_MAX   = (1 << SHIFT_W) - 1;          // 7
  // kl_bank / out_bank / bank_sel
  localparam int BANK_W      = $clog2(NUM_BANKS);           // 2
  // kl_addr indexes one coefficient of a bank: 0 .. N*N-1
  localparam int KADDR_W     = $clog2(N * N);               // 4
  // cfg_num_kernels holds 1..NUM_BANKS
  localparam int NUM_KERN_W  = $clog2(NUM_BANKS + 1);       // 3

  // -------------------------------------------------------------------------
  // 4. Pipeline depth and derived timing (docs/02_architecture.md s8)
  // -------------------------------------------------------------------------

  localparam int MAC_STAGES  = 1;   // registered products
  localparam int NORM_STAGES = 2;   // round reg, saturate/ReLU reg

  // Enabled-cycle latency from a registered window entering the MAC to its
  // result appearing on out_data. Changing this ripples into the latency
  // formula, the TB self-check and the SVA automatically -- never duplicate it.
  localparam int P_PIPE = MAC_STAGES + TREE_STAGES + NORM_STAGES;   // 6

  // -------------------------------------------------------------------------
  // 5. Self-checks live OUTSIDE this file.
  //
  //    A SystemVerilog package may contain only declarations --- no procedural
  //    blocks --- so the "do the derivations still match the frozen widths in
  //    docs/04_interfaces.md?" checks cannot live here. They are enforced in
  //    two independent places instead:
  //      * tb/tb_pkg_params.sv    --- elaborates this package and checks every
  //                                   derived constant (simulator-side).
  //      * model/test_golden_conv.py::test_widths_match_frozen_package
  //                               --- checks the same values through the
  //                                   model/pkg_params.py bridge (Python-side).
  //    Both must pass before any width change is accepted (CONTRIBUTING s5).
  // -------------------------------------------------------------------------

endpackage : pkg_params

`endif
