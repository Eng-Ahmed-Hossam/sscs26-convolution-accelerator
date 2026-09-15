// ---------------------------------------------------------------------------
// conv_top.sv --- streaming NxN convolution accelerator, top level.
//
// Owner : WP3.  Refs: docs/02_architecture.md s1 (topology), docs/04_interfaces.md
//         s1 (frozen external interface), docs/00_charter.md (FoM strategy).
//
//   px_data --> line_window --> mac_array --> adder_tree --> normalize --> out_data
//   px_valid    (9 taps, 8u)    (9 LUT mults) (9->1, 20s)   (round, sat,   out_valid
//        ^                                                   optional ReLU) out_last
//        |            coef[0..8] (8s)
//   ctrl_fsm <---- kernel_regfile (4 banks x 9 x 8s)
//
// THE ONLY SUPPORTED BUILD OVERRIDES are the two module parameters below
// (docs/04 s0, CONTRIBUTING rule 2). Their defaults come from pkg_params; the
// package constants themselves are never overridden. Vivado selects a variant
// with e.g. `synth_design -generic USE_DSP=1`, never by editing source.
//
// CONTRACT SUMMARY (full text in docs/04_interfaces.md s1)
//   * No backpressure: there is no px_ready. One pixel is accepted on every
//     PRIME/RUN cycle where px_valid is high; gaps are legal and hold the whole
//     pipeline coherently.
//   * Exactly W*W valid pixels per frame, px_last on and only on the last one.
//   * All kernel banks loaded before cfg_start (A2).
//   * cfg_* sampled once at the cfg_start edge and static for the run.
//   * Multi-kernel: the host re-streams the identical frame after each
//     nonfinal out_last (A5).
//
// NUMBERS (defaults N=3, W=32)
//   Latency   T_first = (N-1)*W + N + P_PIPE = 73 enabled cycles
//   Outputs   (W-N+1)^2 = 900 per kernel bank
//   Throughput 1.0 output pixel/cycle under continuous px_valid
//   Storage   9 window FFs + 2 x (W-N) SRL stages per pixel bit; zero BRAM
//   Multipliers 9, LUT-mapped by default; zero DSP
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module conv_top
  import pkg_params::*;
#(
  parameter int W       = W_DEFAULT,        // image edge (A1, compile-time)
  parameter int USE_DSP = USE_DSP_DEFAULT   // 0 = LUT multipliers (FoM default)
) (
  input  logic                     clk,
  input  logic                     rst_n,

  // ---- pixel input stream (valid-only, no ready) -------------------------
  input  logic [PIX_W-1:0]         px_data,
  input  logic                     px_valid,
  input  logic                     px_last,

  // ---- kernel load port --------------------------------------------------
  input  logic                     kl_valid,
  input  logic [BANK_W-1:0]        kl_bank,
  input  logic [KADDR_W-1:0]       kl_addr,
  input  logic signed [COEF_W-1:0] kl_coef,

  // ---- configuration (sampled at the cfg_start edge) ---------------------
  input  logic                     cfg_start,
  input  logic                     cfg_relu_en,
  input  logic [SHIFT_W-1:0]       cfg_out_shift,
  input  logic [NUM_KERN_W-1:0]    cfg_num_kernels,

  // ---- output stream + status --------------------------------------------
  output logic signed [OUT_W-1:0]  out_data,
  output logic                     out_valid,
  output logic                     out_last,
  output logic [BANK_W-1:0]        out_bank,
  output logic                     sat_flag,
  output logic                     busy,
  output logic                     done
);

  // ---- inter-module nets (names match docs/04_interfaces.md) -------------
  logic [PIX_W-1:0]         win  [0:N-1][0:N-1];
  logic signed [COEF_W-1:0] coef [0:N*N-1];
  logic signed [PROD_W-1:0] prod [0:N*N-1];
  logic signed [ACC_W-1:0]  acc;

  logic                     shift_en;
  logic [BANK_W-1:0]        bank_sel;
  logic                     relu_en;
  logic [SHIFT_W-1:0]       out_shift;

  // -------------------------------------------------------------------------
  // Control. Owns all masking and the shared pipeline advance; never applies
  // backpressure.
  // -------------------------------------------------------------------------
  ctrl_fsm #(.W(W)) u_ctrl_fsm (
    .clk             (clk),
    .rst_n           (rst_n),
    .cfg_start       (cfg_start),
    .cfg_relu_en     (cfg_relu_en),
    .cfg_out_shift   (cfg_out_shift),
    .cfg_num_kernels (cfg_num_kernels),
    .px_valid        (px_valid),
    .px_last         (px_last),
    .shift_en        (shift_en),
    .bank_sel        (bank_sel),
    .relu_en         (relu_en),
    .out_shift       (out_shift),
    .out_valid       (out_valid),
    .out_last        (out_last),
    .out_bank        (out_bank),
    .busy            (busy),
    .done            (done)
  );

  // -------------------------------------------------------------------------
  // Coefficient banks. Combinational full-bank read of the active bank.
  // -------------------------------------------------------------------------
  kernel_regfile u_kernel_regfile (
    .clk      (clk),
    .rst_n    (rst_n),
    .kl_valid (kl_valid),
    .kl_bank  (kl_bank),
    .kl_addr  (kl_addr),
    .kl_coef  (kl_coef),
    .bank_sel (bank_sel),
    .coef     (coef)
  );

  // -------------------------------------------------------------------------
  // Datapath. Every stage shares the single shift_en advance, which is what
  // keeps the window, the products, the tree, the normalize stage and the
  // in-flight metadata aligned across input bubbles and through FLUSH.
  // -------------------------------------------------------------------------
  line_window #(.W(W)) u_line_window (
    .clk      (clk),
    .rst_n    (rst_n),
    .px_data  (px_data),
    .px_valid (px_valid),
    .shift_en (shift_en),
    .win      (win)
  );

  mac_array #(.USE_DSP(USE_DSP)) u_mac_array (
    .clk   (clk),
    .rst_n (rst_n),
    .en    (shift_en),
    .win   (win),
    .coef  (coef),
    .prod  (prod)
  );

  adder_tree u_adder_tree (
    .clk   (clk),
    .rst_n (rst_n),
    .en    (shift_en),
    .prod  (prod),
    .acc   (acc)
  );

  normalize u_normalize (
    .clk       (clk),
    .rst_n     (rst_n),
    .en        (shift_en),
    .acc       (acc),
    .relu_en   (relu_en),
    .out_shift (out_shift),
    .res       (out_data),
    .sat_flag  (sat_flag)
  );

`ifndef SYNTHESIS
  initial begin
    if (W < N)
      $fatal(1, "conv_top: W=%0d must be >= N=%0d", W, N);
    if (USE_DSP != 0 && USE_DSP != 1)
      $fatal(1, "conv_top: USE_DSP=%0d must be 0 or 1", USE_DSP);
  end
`endif

endmodule
