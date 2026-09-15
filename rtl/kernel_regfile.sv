// ---------------------------------------------------------------------------
// kernel_regfile.sv --- NUM_BANKS x N*N programmable coefficient banks.
//
// Owner : WP3.  Refs: docs/02_architecture.md s3, docs/04_interfaces.md s3,
//         docs/assumptions.md A2 (load before cfg_start).
//
// FUNCTION
//   Four banks of nine 8-bit signed coefficients -- 36 bytes total, so it is
//   built from flip-flops, NOT a memory primitive. Inferring a BRAM here would
//   cost 100x in the FoM for 288 bits of storage, and inferring distributed RAM
//   would serialise the read; the whole active bank must be readable in one
//   cycle because all N*N multipliers consume it simultaneously.
//
//   Write port : synchronous, one coefficient per cycle, addressed by
//                {kl_bank, kl_addr}. Writes to a NON-active bank are legal at
//                any time, which is what makes the multi-kernel bonus work
//                without a shadow register file.
//   Read port  : combinational, the whole active bank at once, selected by
//                bank_sel from ctrl_fsm (which changes only in FLUSH).
//
//   coef[r*N+c] pairs with window tap win[r][c] (docs/04 s3).
//
// A2: writing the ACTIVE bank during PRIME/RUN/FLUSH gives undefined results
//   for pixels already in flight. That is a documented protocol restriction,
//   not a defect -- arbitrating it would add LUTs and a timing arc for no FoM
//   benefit. tb_kernel_regfile checks that a write to a non-active bank leaves
//   the active bank untouched, which is the property the protocol relies on.
//
// LATENCY / THROUGHPUT / FOOTPRINT
//   Write latency 1 cycle; read is combinational (0 cycles, contributes 0 to
//   P_PIPE). NUM_BANKS * N*N * COEF_W = 4*9*8 = 288 flip-flops plus the
//   read mux; no DSP, no BRAM.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module kernel_regfile
  import pkg_params::*;
(
  input  logic                     clk,
  input  logic                     rst_n,
  // Load port (pass-through of the conv_top kernel load port)
  input  logic                     kl_valid,
  input  logic [BANK_W-1:0]        kl_bank,
  input  logic [KADDR_W-1:0]       kl_addr,
  input  logic signed [COEF_W-1:0] kl_coef,
  // Active bank selection and combinational read
  input  logic [BANK_W-1:0]        bank_sel,
  output logic signed [COEF_W-1:0] coef [0:N*N-1]
);

  // Sized constant rather than a parameterised size cast: ModelSim ASE 10.1d
  // rejects KADDR_W'(N*N).
  localparam logic [KADDR_W-1:0] COEF_COUNT = N*N;

  logic signed [COEF_W-1:0] bank [0:NUM_BANKS-1][0:N*N-1];

  // -------------------------------------------------------------------------
  // Synchronous write. kl_addr is KADDR_W = clog2(N*N) = 4 bits, so it can
  // address 16 locations while only N*N = 9 exist; out-of-range writes are
  // ignored rather than aliasing onto a real coefficient.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      for (int b = 0; b < NUM_BANKS; b++)
        for (int i = 0; i < N*N; i++)
          bank[b][i] <= '0;
    end else if (kl_valid && (kl_addr < COEF_COUNT)) begin
      bank[kl_bank][kl_addr] <= kl_coef;
    end
  end

  // -------------------------------------------------------------------------
  // Combinational full-bank read: all N*N coefficients of the active bank are
  // presented at once, because all N*N multipliers consume them in the same
  // cycle.
  // -------------------------------------------------------------------------
  genvar i;
  generate
    for (i = 0; i < N*N; i++) begin : g_read
      assign coef[i] = bank[bank_sel][i];
    end
  endgenerate

`ifndef SYNTHESIS
  initial begin
    if ((1 << KADDR_W) < N*N)
      $fatal(1, "kernel_regfile: KADDR_W=%0d cannot address N*N=%0d coefficients",
             KADDR_W, N*N);
    if ((1 << BANK_W) < NUM_BANKS)
      $fatal(1, "kernel_regfile: BANK_W=%0d cannot address NUM_BANKS=%0d",
             BANK_W, NUM_BANKS);
  end
`endif

endmodule
