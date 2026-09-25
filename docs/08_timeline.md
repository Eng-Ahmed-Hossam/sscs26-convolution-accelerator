# 08 — Timeline (Aug 24 → Sep 15, 2026)

22 days. Three hard internal milestones — treat them as immovable:
**integration Sep 2 · regression green Sep 6 · reports frozen Sep 13.**
Submission: **Sep 15.**

## Week 1 — Aug 24 → Aug 30: foundations in parallel

- Aug 24: assign WP owners in [README.md](../README.md); everyone reads docs/
  00–05; repo scaffolding committed (empty modules with frozen ports from
  [04_interfaces.md](04_interfaces.md) so everything elaborates from day 1).
- Aug 24–27: WP1 golden model + first 6 directed vectors (impulse first —
  hand-checked). WP2 line_window + mac_array + unit TBs. WP3 ctrl_fsm +
  kernel_regfile. WP4 TB skeleton + regression runner against golden model
  only (model-vs-model self-test).
- Aug 27–30: WP2 adder_tree + normalize + unit TBs green. WP1 random + real
  vectors done. WP5 drafts `build.tcl`, runs first OOC synthesis on whatever
  elaborates (early LUT-count and BRAM/DSP-inference sanity — do **not** wait
  for correct RTL to learn the tools).
- **Exit criteria Aug 30:** all unit TBs green; all vectors generated;
  `build.tcl` produces a utilization report showing BRAM=0/DSP=0 on the draft
  netlist. If SRLs are inferring to BRAM, fix it now, not in week 3.

## Week 2 — Aug 31 → Sep 6: integrate and verify

- Aug 31–Sep 2: WP3 integrates `conv_top`; impulse vector passes end-to-end.
  **Milestone Sep 2: integration** — full pipeline runs one vector bit-exact.
- Sep 2–6: WP4 brings the full matrix online (all vectors × relu × bubbles ×
  multi-kernel); SVAs active; debug cycle. WP6 starts CNN training + Sobel
  assets (pure Python, no HW dependency). WP5 iterates timing at 125 MHz.
- **Milestone Sep 6: regression green** — `run_regression.py` exit 0, full
  matrix, on `main`. This is the single most important date in the project:
  everything downstream (implementation numbers, demo, report results) consumes
  a green regression.

## Week 3 — Sep 7 → Sep 13: numbers, demo, report

- Sep 7–9: WP5 final builds both variants, SAIF power, FoM worksheet, variant
  comparison. WP4 captures the five waveform PNGs. WP6 runs INT8 kernels
  through the accelerator (bit-exact check), full-network agreement, edge maps.
- Sep 9–12: WP7 report assembly (prose already exists in docs/ — this week is
  numbers, figures, and editing). Board demo bring-up **only if** everything
  above is done (cut-list below). Presentation drafted Sep 11–12.
- **Milestone Sep 13: reports frozen.** Full team read-through. Only typo-level
  edits after this point.

## Sep 13–15: buffer

Buffer is for submission mechanics, rendering issues, and disaster recovery —
not for features. Rehearse the presentation once. Submit **Sep 14**, not the
last hour of Sep 15.

## Cut-list (cut in this order when behind; never touch mandatory items)

1. **UART board demo** (bonus B4) — first to cut. The FoM and all mandatory
   evidence come from simulation + implementation reports, not the board.
2. Full-network agreement study (keep the first-layer bit-exact demo, which is
   the core of bonus B5).
3. NEU-trained CNN → fall back to MNIST ([09_bonus_and_stretch.md](09_bonus_and_stretch.md)).
4. DSP-variant *power* run (keep DSP utilization/timing so the tradeoff table
   survives with an estimated-power footnote).
5. Random vector count 20 → 10.

**Never cut:** golden model, directed + saturation vectors, self-checking
regression with nonzero-exit contract, both-variant utilization/timing, LUT
variant SAIF power, latency formulas, report, presentation, compliance matrix.

## Standing rules

- Daily 15-minute sync; each owner reports against their WP's definition of
  done ([07_work_packages.md](07_work_packages.md)).
- Slip protocol: the moment a milestone is projected to slip ≥1 day, apply the
  cut-list — do not compress verification or the report.
- Anything merged to `main` after Sep 6 must keep regression green
  ([CONTRIBUTING.md](../CONTRIBUTING.md)).
