// ---------------------------------------------------------------------------
// adder_tree.sv --- exact N*N-term reduction with odd-product alignment.
//
// Owner : WP2.  Refs: docs/02_architecture.md s5 (topology),
//         docs/04_interfaces.md s5, docs/03_fixed_point.md s3 (exactness proof),
//         s7 (empirical range of every level).
//
// FUNCTION
//   Sums the nine PROD_W products into one ACC_W accumulator in three
//   REGISTERED stages. Terms without a partner in a stage ride an ALIGNMENT
//   REGISTER so every product experiences identical latency -- that is what
//   makes the whole datapath a pure fixed-latency delay line:
//
//     stage 1 (reg):  p0+p1  p2+p3  p4+p5  p6+p7   [p8 -> align]  -> 4 + 1
//     stage 2 (reg):  s0+s1  s2+s3                 [p8' -> align] -> 2 + 1
//     stage 3 (reg):  (t0+t1) + p8''                              -> acc
//
//   Stage 3 performs two adds combinationally before its register; if that
//   path ever fails timing, the playbook in docs/06 s2 splits it and bumps
//   P_PIPE, which the latency formula and TB checks track automatically.
//
// EXACTNESS
//   No overflow is possible at ANY node. |acc| <= N*N*PIX_MAX*2^(COEF_W-1)
//   = 293,760 < 2^19, so ACC_W = 20 signed bits represent every reachable sum
//   exactly (docs/03 s3). The intermediate widths T1_W/T2_W follow the
//   add-one-bit-per-level rule and each carry one unreachable bit, quantified
//   in docs/03 s7. The sum is therefore exact regardless of grouping.
//
// INTERFACE / LATENCY / THROUGHPUT
//   Latency TREE_STAGES = 3 enabled cycles, throughput one accumulator per
//   enabled cycle. `en` is the shared pipeline advance: every tree register
//   AND every alignment register advances on it and holds when it is low, so
//   the alignment cannot drift across a bubble.
//
// PIPELINE DEPTH CONTRIBUTED: TREE_STAGES = 3 of P_PIPE = 6.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module adder_tree
  import pkg_params::*;
(
  input  logic                     clk,
  input  logic                     rst_n,
  input  logic                     en,        // shared pipeline advance
  input  logic signed [PROD_W-1:0] prod [0:N*N-1],
  output logic signed [ACC_W-1:0]  acc
);

  // -------------------------------------------------------------------------
  // Stage 1: four pairwise sums, plus the odd product p8 on the alignment path.
  // -------------------------------------------------------------------------
  logic signed [T1_W-1:0]   s1   [0:3];
  logic signed [PROD_W-1:0] p8_a1;            // alignment register, stage 1

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      for (int i = 0; i < 4; i++) s1[i] <= '0;
      p8_a1 <= '0;
    end else if (en) begin
      for (int i = 0; i < 4; i++)
        // All operands are signed and the LHS is wider, so the addition is
        // evaluated at T1_W with sign extension (context-determined width).
        // Written without a size cast: ModelSim ASE 10.1d rejects the
        // parameterised T1_W'(...) form.
        s1[i] <= prod[2*i] + prod[2*i + 1];
      p8_a1 <= prod[8];
    end
  end

  // -------------------------------------------------------------------------
  // Stage 2: two pairwise sums, p8 rides a second alignment register.
  // -------------------------------------------------------------------------
  logic signed [T2_W-1:0]   s2   [0:1];
  logic signed [PROD_W-1:0] p8_a2;            // alignment register, stage 2

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      for (int i = 0; i < 2; i++) s2[i] <= '0;
      p8_a2 <= '0;
    end else if (en) begin
      for (int i = 0; i < 2; i++)
        s2[i] <= s1[2*i] + s1[2*i + 1];
      p8_a2 <= p8_a1;
    end
  end

  // -------------------------------------------------------------------------
  // Stage 3: two combinational adds into the accumulator register. p8 has now
  // passed through exactly TREE_STAGES-1 = 2 alignment registers, so it is
  // cycle-aligned with the tree sums it joins -- asserted, not assumed, by
  // tb_adder_tree and by the pipeline-alignment checks of docs/05 s6.
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      acc <= '0;
    else if (en)
      acc <= (s2[0] + s2[1]) + p8_a2;
  end

`ifndef SYNTHESIS
  initial begin
    if (N != 3)
      $fatal(1, "adder_tree: this topology is the fixed N=3 tree (A6), got N=%0d", N);
    if (ACC_W < PROD_W + TREE_STAGES)
      $fatal(1, "adder_tree: ACC_W=%0d too narrow for %0d stages of growth from %0d",
             ACC_W, TREE_STAGES, PROD_W);
  end
`endif

endmodule
