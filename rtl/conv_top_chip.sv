// ---------------------------------------------------------------------------
// conv_top_chip.sv --- chip-level wrapper with registered I/O.
//
// Owner : WP5.  Refs: docs/06_implementation_flow.md s1 (OOC is the FoM flow),
//         docs/04_interfaces.md s1 (the core interface this preserves),
//         docs/09_bonus_and_stretch.md s4 (board demo).
//
// WHY THIS EXISTS
//   `conv_top` is a CORE, not a chip. Its ports are meant to be driven by other
//   logic on the same die -- in the board demo, a UART shell. The FoM numbers
//   therefore come from an out-of-context build, which is the honest way to
//   characterise a core: no I/O buffers, no pad delays, no pin assignment
//   accidents contaminating the measurement (docs/06 s1.2).
//
//   But a full, non-OOC build of `conv_top` AS the top level does something
//   quite different: Vivado inserts an IBUF or OBUF on all 59 ports, places
//   them in I/O banks at the die edge, and times every path from pad to flop
//   and flop to pad. Measured on this design, that build reports
//
//       WNS -5.005 ns, TNS -113.695 ns, 46 failing endpoints
//
//   and EVERY violating path touches a port -- zero internal
//   register-to-register violations. The core is fine; the pads are not. The
//   worst offender is `out_valid`, which is combinational
//   (meta_valid[P_PIPE-1] && advanced_q), so its path is FF -> LUT -> OBUF ->
//   pad and cannot be absorbed into an I/O flip-flop.
//
//   This wrapper is the standard answer: register every input and every
//   output, so each pad path becomes a single hop (PAD -> IBUF -> FF, or
//   FF -> OBUF -> PAD) that the tool can pack into the I/O tile.
//
// WHAT IT COSTS, STATED PLAINLY
//   One cycle of latency entering and one leaving, at the PINS only:
//       T_first(chip) = T_first(core) + 2 = 75 cycles at W=32.
//   The core's own latency, P_PIPE, throughput and every verified property are
//   untouched -- this wrapper adds no logic to the datapath, only boundary
//   registers. The competition's reported latency and FoM remain the CORE
//   numbers from the OOC build, because that is what the accelerator is.
//
// WHICH BUILD TO USE
//   FoM / results table  ->  conv_top, out-of-context   (fpga/build.tcl)
//   Board demo bitstream ->  this wrapper, full flow    (build.tcl -mode chip)
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module conv_top_chip
  import pkg_params::*;
#(
  parameter int W       = W_DEFAULT,
  parameter int USE_DSP = USE_DSP_DEFAULT
) (
  input  logic                     clk,
  input  logic                     rst_n,

  input  logic [PIX_W-1:0]         px_data,
  input  logic                     px_valid,
  input  logic                     px_last,

  input  logic                     kl_valid,
  input  logic [BANK_W-1:0]        kl_bank,
  input  logic [KADDR_W-1:0]       kl_addr,
  input  logic signed [COEF_W-1:0] kl_coef,

  input  logic                     cfg_start,
  input  logic                     cfg_relu_en,
  input  logic [SHIFT_W-1:0]       cfg_out_shift,
  input  logic [NUM_KERN_W-1:0]    cfg_num_kernels,

  output logic signed [OUT_W-1:0]  out_data,
  output logic                     out_valid,
  output logic                     out_last,
  output logic [BANK_W-1:0]        out_bank,
  output logic                     sat_flag,
  output logic                     busy,
  output logic                     done
);

  // -------------------------------------------------------------------------
  // Input boundary registers. Every stream signal is delayed by exactly one
  // cycle TOGETHER, so px_data/px_valid/px_last stay mutually aligned and the
  // protocol of docs/04 s1 is preserved verbatim at the core's pins.
  // -------------------------------------------------------------------------
  logic [PIX_W-1:0]         px_data_q;
  logic                     px_valid_q, px_last_q;
  logic                     kl_valid_q;
  logic [BANK_W-1:0]        kl_bank_q;
  logic [KADDR_W-1:0]       kl_addr_q;
  logic signed [COEF_W-1:0] kl_coef_q;
  logic                     cfg_start_q, cfg_relu_en_q;
  logic [SHIFT_W-1:0]       cfg_out_shift_q;
  logic [NUM_KERN_W-1:0]    cfg_num_kernels_q;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      px_data_q         <= '0;
      px_valid_q        <= 1'b0;
      px_last_q         <= 1'b0;
      kl_valid_q        <= 1'b0;
      kl_bank_q         <= '0;
      kl_addr_q         <= '0;
      kl_coef_q         <= '0;
      cfg_start_q       <= 1'b0;
      cfg_relu_en_q     <= 1'b0;
      cfg_out_shift_q   <= '0;
      cfg_num_kernels_q <= '0;
    end else begin
      px_data_q         <= px_data;
      px_valid_q        <= px_valid;
      px_last_q         <= px_last;
      kl_valid_q        <= kl_valid;
      kl_bank_q         <= kl_bank;
      kl_addr_q         <= kl_addr;
      kl_coef_q         <= kl_coef;
      cfg_start_q       <= cfg_start;
      cfg_relu_en_q     <= cfg_relu_en;
      cfg_out_shift_q   <= cfg_out_shift;
      cfg_num_kernels_q <= cfg_num_kernels;
    end
  end

  // -------------------------------------------------------------------------
  // The core, completely unmodified.
  // -------------------------------------------------------------------------
  logic signed [OUT_W-1:0] core_out_data;
  logic                    core_out_valid, core_out_last;
  logic [BANK_W-1:0]       core_out_bank;
  logic                    core_sat_flag, core_busy, core_done;

  conv_top #(.W(W), .USE_DSP(USE_DSP)) u_core (
    .clk             (clk),
    .rst_n           (rst_n),
    .px_data         (px_data_q),
    .px_valid        (px_valid_q),
    .px_last         (px_last_q),
    .kl_valid        (kl_valid_q),
    .kl_bank         (kl_bank_q),
    .kl_addr         (kl_addr_q),
    .kl_coef         (kl_coef_q),
    .cfg_start       (cfg_start_q),
    .cfg_relu_en     (cfg_relu_en_q),
    .cfg_out_shift   (cfg_out_shift_q),
    .cfg_num_kernels (cfg_num_kernels_q),
    .out_data        (core_out_data),
    .out_valid       (core_out_valid),
    .out_last        (core_out_last),
    .out_bank        (core_out_bank),
    .sat_flag        (core_sat_flag),
    .busy            (core_busy),
    .done            (core_done)
  );

  // -------------------------------------------------------------------------
  // Output boundary registers. This is what removes the FF -> LUT -> OBUF path
  // that dominated the non-OOC build: out_valid and out_last are combinational
  // inside the core (a held result must not be replayed as a second
  // transaction, docs/04 s7), and that combinational term now settles one
  // cycle before the pad instead of on the way to it.
  //
  // Event semantics are preserved exactly: a one-cycle pulse registered once
  // is still a one-cycle pulse, and all seven outputs shift together so their
  // mutual alignment is unchanged.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      out_data  <= '0;
      out_valid <= 1'b0;
      out_last  <= 1'b0;
      out_bank  <= '0;
      sat_flag  <= 1'b0;
      busy      <= 1'b0;
      done      <= 1'b0;
    end else begin
      out_data  <= core_out_data;
      out_valid <= core_out_valid;
      out_last  <= core_out_last;
      out_bank  <= core_out_bank;
      sat_flag  <= core_sat_flag;
      busy      <= core_busy;
      done      <= core_done;
    end
  end

endmodule
