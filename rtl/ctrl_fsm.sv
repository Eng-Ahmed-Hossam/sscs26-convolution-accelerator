// ---------------------------------------------------------------------------
// ctrl_fsm.sv --- pipeline advance, border masking, bank sequencing, status.
//
// Owner : WP3.  Refs: docs/02_architecture.md s7 (state diagram) and s8
//         (latency), docs/04_interfaces.md s1 and s7 (frozen semantics),
//         docs/assumptions.md A2, A3, A5.
//
// FUNCTION
//   The only control in the design. It never applies backpressure -- there is
//   no px_ready -- it only qualifies which outputs are real:
//
//     IDLE --cfg_start--> LOAD_KERNEL --1 cycle--> PRIME --window--> RUN
//                                                                     | px_last
//       RUN <--banks pending-- FLUSH <-------------------------------- +
//                                 | no banks pending
//                                 v
//                               IDLE (done pulse)
//
//   BORDER MASKING IS POSITIONAL, NOT DATA-DEPENDENT (A3). An output is
//   qualified exactly when the pixel that completed its window sat at
//   row_cnt >= N-1 and col_cnt >= N-1, giving exactly (W-N+1)^2 outputs per
//   bank. This is also what makes the reset-free line buffer safe (A10):
//   undefined post-reset delay-line contents are masked by position and can
//   never reach a qualified output.
//
// THE SHARED PIPELINE ADVANCE
//   shift_en is high for every accepted pixel in PRIME/RUN and for exactly
//   P_PIPE advances in FLUSH. Everything downstream -- line_window, mac_array,
//   adder_tree, normalize and the in-flight metadata here -- advances on it and
//   holds together when it is low. That single shared enable is what keeps an
//   input bubble from breaking alignment.
//
// METADATA ALIGNMENT
//   On an accepted edge the just-formed window is registered while the MAC
//   samples the PRE-edge window, so the window entering the MAC is one edge
//   behind. The pending tuple mirrors that: it is captured at the forming edge
//   and enters metadata stage 0 on the next enabled edge, then rides P_PIPE
//   stages beside the data. out_bank therefore comes from the aligned
//   metadata, never from a freshly incremented bank_sel.
//
// LATENCY (docs/02 s8, enabled cycles, first accepted pixel numbered 1)
//   T_first = (N-1)*W + N + P_PIPE = 73 at the defaults.
//   Final valid = W^2 + P_PIPE = 1030. Outputs = (W-N+1)^2 = 900 per bank.
//   Throughput = 1.0 output pixel per cycle under continuous px_valid.
//
// FOOTPRINT / PIPELINE DEPTH
//   Two clog2(W) counters, a flush counter, a bank counter, and a P_PIPE-deep
//   metadata shift register of (1 valid + 1 last + BANK_W bank) bits.
//   Contributes 0 stages to the datapath P_PIPE -- it runs alongside it.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module ctrl_fsm
  import pkg_params::*;
#(
  parameter int W = W_DEFAULT
) (
  input  logic                    clk,
  input  logic                    rst_n,
  // Configuration, sampled once at the cfg_start edge (docs/04 s1)
  input  logic                    cfg_start,
  input  logic                    cfg_relu_en,
  input  logic [SHIFT_W-1:0]      cfg_out_shift,
  input  logic [NUM_KERN_W-1:0]   cfg_num_kernels,
  // Pixel stream events
  input  logic                    px_valid,
  input  logic                    px_last,
  // Shared pipeline advance and datapath configuration
  output logic                    shift_en,
  output logic [BANK_W-1:0]       bank_sel,
  output logic                    relu_en,
  output logic [SHIFT_W-1:0]      out_shift,
  // Output qualifiers
  output logic                    out_valid,
  output logic                    out_last,
  output logic [BANK_W-1:0]       out_bank,
  // Status
  output logic                    busy,
  output logic                    done
);

  localparam int CNT_W = $clog2(W);

  // Sized constants rather than parameterised size casts (CNT_W'(...)),
  // which ModelSim ASE 10.1d rejects. BORDER is the first in-bounds row and
  // column index; LAST_IDX is the final index of a raster row.
  localparam logic [CNT_W-1:0] BORDER   = N - 1;
  localparam logic [CNT_W-1:0] LAST_IDX = W - 1;

  typedef enum logic [2:0] {
    IDLE        = 3'd0,
    LOAD_KERNEL = 3'd1,
    PRIME       = 3'd2,
    RUN         = 3'd3,
    FLUSH       = 3'd4
  } state_e;

  state_e state, next_state;

  logic [CNT_W-1:0]      row_cnt, col_cnt;
  logic [$clog2(P_PIPE+1)-1:0] flush_cnt;      // counts advances 0..P_PIPE
  logic [NUM_KERN_W-1:0] kernel_cnt;

  // Pending tuple: describes the window formed by the pixel accepted this edge.
  logic                  pending_valid;
  logic                  pending_last;
  logic [BANK_W-1:0]     pending_bank;

  // In-flight metadata, P_PIPE stages, advanced only by shift_en.
  logic [P_PIPE-1:0]     meta_valid;
  logic [P_PIPE-1:0]     meta_last;
  logic [BANK_W-1:0]     meta_bank [0:P_PIPE-1];

  // Registered copy of shift_en: turns the held metadata into a single-cycle
  // EVENT so a held result is never counted twice (docs/04 s7, SVA
  // a_no_event_hold).
  logic                  advanced_q;

  // -------------------------------------------------------------------------
  // Convenience
  // -------------------------------------------------------------------------
  logic streaming;      // PRIME or RUN: pixels may be accepted
  logic accepted;       // a pixel is accepted on this edge
  logic in_bounds;      // the window completed by that pixel is fully in bounds
  logic last_col, last_row;
  logic flush_active;   // FLUSH still owes pipeline advances
  logic more_banks;

  assign streaming    = (state == PRIME) || (state == RUN);
  assign accepted     = streaming && px_valid;
  assign in_bounds    = (row_cnt >= BORDER) && (col_cnt >= BORDER);
  assign last_col     = (col_cnt == LAST_IDX);
  assign last_row     = (row_cnt == LAST_IDX);
  assign flush_active = (state == FLUSH) && (flush_cnt < P_PIPE);
  assign more_banks   = ((kernel_cnt + 1'b1) < cfg_num_kernels);

  // The shared pipeline advance (docs/04 s7).
  assign shift_en = accepted || flush_active;

  // -------------------------------------------------------------------------
  // State register and next-state logic
  // -------------------------------------------------------------------------
  always_comb begin
    next_state = state;
    unique case (state)
      IDLE:        if (cfg_start) next_state = LOAD_KERNEL;
      // Exactly one arming cycle; no coefficient transfer happens here (A2).
      LOAD_KERNEL: next_state = PRIME;
      // PRIME is behaviourally identical to RUN; it ends when the first
      // complete window is formed, which is kept as a distinct state for
      // report clarity and FSM coverage (docs/02 s7).
      PRIME:       if (accepted && in_bounds) next_state = RUN;
      RUN:         if (accepted && px_last)   next_state = FLUSH;
      FLUSH:       if (flush_cnt == P_PIPE)
                     next_state = more_banks ? RUN : IDLE;
      default:     next_state = IDLE;
    endcase
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) state <= IDLE;
    else        state <= next_state;
  end

  // -------------------------------------------------------------------------
  // Configuration latch (sampled once, static for the whole run -- docs/04 s1)
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      relu_en   <= 1'b0;
      out_shift <= '0;
    end else if ((state == IDLE) && cfg_start) begin
      relu_en   <= cfg_relu_en;
      out_shift <= cfg_out_shift;
    end
  end

  // -------------------------------------------------------------------------
  // Raster counters: advance only on accepted pixels in PRIME/RUN, and reset
  // at every FLUSH->RUN bank swap so the re-streamed frame is masked from its
  // own origin (A5).
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      row_cnt <= '0;
      col_cnt <= '0;
    end else if ((state == IDLE) && cfg_start) begin
      row_cnt <= '0;
      col_cnt <= '0;
    end else if ((state == FLUSH) && (flush_cnt == P_PIPE)) begin
      row_cnt <= '0;
      col_cnt <= '0;
    end else if (accepted) begin
      if (last_col) begin
        col_cnt <= '0;
        row_cnt <= last_row ? '0 : (row_cnt + 1'b1);
      end else begin
        col_cnt <= col_cnt + 1'b1;
      end
    end
  end

  // -------------------------------------------------------------------------
  // Bank sequencing. bank_sel changes only at a FLUSH->RUN transition, so the
  // kernel_regfile read is stable for a whole frame.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      bank_sel   <= '0;
      kernel_cnt <= '0;
    end else if ((state == IDLE) && cfg_start) begin
      bank_sel   <= '0;
      kernel_cnt <= '0;
    end else if ((state == FLUSH) && (flush_cnt == P_PIPE) && more_banks) begin
      bank_sel   <= bank_sel + 1'b1;
      kernel_cnt <= kernel_cnt + 1'b1;
    end
  end

  // -------------------------------------------------------------------------
  // FLUSH advance counter: exactly P_PIPE advances, then one resident cycle in
  // which the final out_valid/out_last event is visible before the transition.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)                                        flush_cnt <= '0;
    else if (state != FLUSH)                           flush_cnt <= '0;
    else if (flush_cnt < P_PIPE)                       flush_cnt <= flush_cnt + 1'b1;
  end

  // -------------------------------------------------------------------------
  // Pending tuple: captured at the edge that forms a window, consumed by
  // metadata stage 0 on the NEXT enabled edge.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pending_valid <= 1'b0;
      pending_last  <= 1'b0;
      pending_bank  <= '0;
    end else if (accepted) begin
      pending_valid <= in_bounds;
      pending_last  <= px_last;
      pending_bank  <= bank_sel;
    end else if (shift_en) begin
      // A FLUSH advance consumes the pending tuple exactly once; subsequent
      // advances inject invalid metadata while the pipeline drains.
      pending_valid <= 1'b0;
      pending_last  <= 1'b0;
    end
  end

  // -------------------------------------------------------------------------
  // Metadata pipeline: P_PIPE stages beside the datapath, same enable.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      meta_valid <= '0;
      meta_last  <= '0;
      for (int i = 0; i < P_PIPE; i++) meta_bank[i] <= '0;
    end else if (shift_en) begin
      meta_valid <= {meta_valid[P_PIPE-2:0], pending_valid};
      meta_last  <= {meta_last[P_PIPE-2:0],  pending_last};
      for (int i = P_PIPE-1; i > 0; i--) meta_bank[i] <= meta_bank[i-1];
      meta_bank[0] <= pending_bank;
    end
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) advanced_q <= 1'b0;
    else        advanced_q <= shift_en;
  end

  // -------------------------------------------------------------------------
  // Outputs. out_valid/out_last are EVENT qualifiers gated by advanced_q, so
  // they are low on a non-advance clock; out_bank may hold (docs/04 s7).
  // -------------------------------------------------------------------------
  assign out_valid = meta_valid[P_PIPE-1] && advanced_q;
  assign out_last  = meta_last [P_PIPE-1] && advanced_q;
  assign out_bank  = meta_bank [P_PIPE-1];

  // -------------------------------------------------------------------------
  // Status
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      busy <= 1'b0;
      done <= 1'b0;
    end else begin
      done <= (state == FLUSH) && (flush_cnt == P_PIPE) && !more_banks;
      if ((state == IDLE) && cfg_start)
        busy <= 1'b1;
      else if ((state == FLUSH) && (flush_cnt == P_PIPE) && !more_banks)
        busy <= 1'b0;
    end
  end

`ifndef SYNTHESIS
  initial begin
    if (W < N) $fatal(1, "ctrl_fsm: W=%0d must be >= N=%0d", W, N);
    if (P_PIPE < 1) $fatal(1, "ctrl_fsm: P_PIPE=%0d must be >= 1", P_PIPE);
  end
`endif

endmodule
