#!/usr/bin/env python3
"""One-command regression: RTL vs golden model over the whole vector suite.

    python tb/run_regression.py                  # everything
    python tb/run_regression.py --vector impulse
    python tb/run_regression.py --seed 42
    python tb/run_regression.py --sim modelsim

Contract (docs/05_verification_plan.md s4):
  * generates the vectors if they are missing,
  * compiles pkg_params.sv explicitly first, then the rest in order,
  * runs every vector x both ReLU modes, with px_valid bubbles in half the runs,
  * runs the unit testbenches and the directed corner tests as well,
  * prints a pass/fail matrix,
  * **exits 0 if and only if every run passes**,
  * archives the matrix to tb/results/regression_<date>.log.

On a mismatch the testbench prints the failing output index; this runner then
re-runs the golden model with `--trace` on that exact output so the report
carries the source window, the nine products and every adder-tree stage
(the Phase 5 localisation requirement) rather than just a bad number.

SIMULATOR NOTE, stated plainly: the only simulator installed here is ModelSim
ASE 10.1d, which supports neither SystemVerilog assertions nor covergroups.
The docs/05 s6 properties are therefore implemented as PROCEDURAL checkers
inside tb_conv_top and reported as such -- they check the same behaviour, but
concurrent-assertion and coverage-closure evidence needs Questa, Verilator or
xsim. This runner reports what it actually ran; it never reports SVA or
functional-coverage numbers it did not produce.
"""

from __future__ import annotations

import argparse
import datetime as _dt
import json
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Sequence

ROOT = Path(__file__).resolve().parent.parent
VECTORS = ROOT.joinpath("model", "vectors")
RESULTS = ROOT.joinpath("tb", "results")
DEFAULT_SIM_ROOT = Path("C:/altera/13.0sp1/modelsim_ase/win32aloem")

RTL_SOURCES = [
    "rtl/pkg_params.sv",          # explicitly first (CONTRIBUTING rule 2)
    "rtl/line_window.sv",
    "rtl/mac_array.sv",
    "rtl/adder_tree.sv",
    "rtl/normalize.sv",
    "rtl/kernel_regfile.sv",
    "rtl/ctrl_fsm.sv",
    "rtl/conv_top.sv",
]
TB_SOURCES = [
    "tb/tb_pkg_params.sv",
    "tb/tb_line_window.sv",
    "tb/tb_mac_array.sv",
    "tb/tb_adder_tree.sv",
    "tb/tb_normalize.sv",
    "tb/tb_kernel_regfile.sv",
    "tb/tb_conv_top.sv",
    "tb/tb_conv_directed.sv",
]
STAGE_DUMP = ROOT.joinpath("tb", "stage_dumps", "datapath.txt")


# ---------------------------------------------------------------------------
# Functional coverage model (docs/05 s6).
#
# ModelSim ASE has no covergroups, so tb_conv_top emits one `COVER <bin>` line
# per bin it hit and this runner takes the union across every run. The bins
# below are the closure target; anything listed in EXCLUSIONS is a hole with a
# written justification, as docs/05 s6 requires.
# ---------------------------------------------------------------------------
COVERAGE_BINS = {
    "FSM states":      [f"fsm_state_{i}" for i in range(5)],
    "Kernel banks":    [f"bank_{i}" for i in range(4)],
    "ReLU mode":       ["relu_0", "relu_1"],
    "Output shift":    ["shift_0", "shift_4", "shift_7"],
    "Bank count":      [f"numbanks_{i}" for i in range(1, 5)],
    "Input gapping":   ["bubbles_0", "bubbles_1"],
    "Saturation rail": ["sat_rail_pos", "sat_rail_neg"],
    "Activation":      ["relu_clip"],
    "Kernel classes":  ["kernel_zero", "kernel_maxpos", "kernel_maxneg",
                        "kernel_mixed"],
}

#: Justified exclusions, printed with the coverage report so a hole is never
#: silently dropped.
EXCLUSIONS = {
    "shift_1/2/3/5/6":
        "The vector suite fixes cfg_out_shift to {0, 4, 7} (docs/05 s2: 0 for "
        "integer filters, 7 for Q1.7 CNN kernels, 4 as a midpoint). The "
        "remaining shift values are exercised exhaustively at the unit level "
        "instead: model/export_stage_dumps.py sweeps every shift 0..7 with "
        "exact half-LSB ties in both signs, and tb_normalize checks all 710 "
        "records. Shift is a static config field consumed entirely inside "
        "normalize, so unit-level closure is equivalent to top-level closure.",
}


#: The three real-image vectors docs/05_verification_plan.md s2.3 requires.
REAL_FAMILY = ("real_lena32", "real_neu32", "real_pcb32")


def real_family_error(manifest: dict) -> str | None:
    """Return why the real-image family fails the sign-off gate, or None.

    docs/05 s2.3 is explicit: a skipped real-image family is "a FAILURE of the
    Phase 2 gate, not a pass". The suite may legitimately run synthetic-only
    during development, but a submission cannot -- the SAIF power methodology
    of docs/06 s4 needs switching activity from a real frame, so a synthetic-only
    suite silently invalidates the reported power and therefore the FoM.

    Both conditions are checked, not just the manifest flag: the flag records
    intent, while the vector list records fact, and a flag that says "included"
    over an empty list is exactly the failure mode worth catching.
    """
    present = {v.get("name") for v in manifest.get("vectors", [])}
    missing = [name for name in REAL_FAMILY if name not in present]
    if missing:
        return ("real-image family incomplete: missing "
                + ", ".join(missing)
                + ". docs/05 s2.3 and assumption A9 forbid substituting synthetic "
                  "data; supply the source assets under model/vectors/assets/.")
    if not manifest.get("real_family_included", False):
        return ("manifest reports real_family_included=false, so the suite was "
                "generated with --skip-real. docs/05 s2.3 treats that as a gate "
                "failure, not a pass.")
    return None


def _exe(sim_root: Path, name: str) -> str:
    for cand in (sim_root.joinpath(f"{name}.exe"), sim_root.joinpath(name)):
        if cand.is_file():
            return str(cand)
    return name


def _run(cmd: Sequence[str], cwd: Path) -> tuple[int, str]:
    proc = subprocess.run(cmd, cwd=str(cwd), capture_output=True, text=True)
    return proc.returncode, proc.stdout + proc.stderr


class Row:
    """One line of the pass/fail matrix."""

    def __init__(self, vector: str, relu: str, banks: str, outputs: str,
                 mismatch: str, result: str, note: str = "") -> None:
        self.vector, self.relu, self.banks = vector, relu, banks
        self.outputs, self.mismatch, self.result, self.note = outputs, mismatch, result, note

    def render(self, w: int) -> str:
        return (f"{self.vector:<{w}} {self.relu:>4}  {self.banks:>5}  "
                f"{self.outputs:>7}  {self.mismatch:>8}  {self.result}"
                + (f"  {self.note}" if self.note else ""))


def localise(vector: str, bank: int, index: int, shift: int, relu: int) -> str:
    """Re-run the golden model with --trace on the failing output pixel."""
    vdir = VECTORS.joinpath(vector)
    cmd = [sys.executable, str(ROOT.joinpath("model", "golden_conv.py")),
           "--image", str(vdir.joinpath("image.txt")),
           "--kernel", str(vdir.joinpath(f"kernel_b{bank}.txt")),
           "--shift", str(shift), "--relu", str(relu),
           "--out", str(Path(tempfile.gettempdir()).joinpath("trace_discard.txt")),
           "--trace", str(index)]
    proc = subprocess.run(cmd, capture_output=True, text=True, cwd=str(ROOT))
    return proc.stdout + proc.stderr


def parse_failure(out: str) -> tuple[int, int] | None:
    """Extract (bank, output index) from the first testbench FAIL line."""
    for line in out.splitlines():
        if "FAIL  bank" in line and "output" in line:
            parts = line.split()
            try:
                return int(parts[parts.index("bank") + 1]), int(parts[parts.index("output") + 1].rstrip(":"))
            except (ValueError, IndexError):
                return None
    return None


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    parser.add_argument("--vector", help="run a single named vector")
    parser.add_argument("--sim", default="modelsim", choices=("modelsim",),
                        help="simulator (only ModelSim is installed here)")
    parser.add_argument("--sim-root", default=str(DEFAULT_SIM_ROOT))
    parser.add_argument("--seed", type=int, default=1,
                        help="selects which runs get px_valid bubbles")
    parser.add_argument("--no-units", action="store_true",
                        help="skip the unit testbenches")
    parser.add_argument("--keep", action="store_true", help="keep the work library")
    parser.add_argument("--signoff", action="store_true",
                        help="enforce the full submission deliverable set, including "
                             "the real-image family (docs/05 s2.3). Development runs "
                             "may be synthetic-only; a submission may not.")
    args = parser.parse_args(argv)

    sim_root = Path(args.sim_root)
    vlib, vlog, vsim = (_exe(sim_root, n) for n in ("vlib", "vlog", "vsim"))

    # --- 1. generate vectors if missing -------------------------------------
    if not VECTORS.joinpath("manifest.json").is_file():
        print("vectors missing; generating...")
        rc = subprocess.run([sys.executable, str(ROOT.joinpath("model", "gen_vectors.py")),
                             "--all", "--skip-real"], cwd=str(ROOT)).returncode
        if rc != 0:
            print("ERROR: vector generation failed", file=sys.stderr)
            return 2
    if not STAGE_DUMP.is_file():
        subprocess.run([sys.executable, str(ROOT.joinpath("model", "export_stage_dumps.py"))],
                       cwd=str(ROOT))

    manifest = json.loads(VECTORS.joinpath("manifest.json").read_text(encoding="utf-8"))
    vectors = [e for e in manifest["vectors"]
               if args.vector is None or e["name"] == args.vector]
    if not vectors:
        parser.error(f"unknown vector {args.vector!r}")

    workdir = Path(tempfile.mkdtemp(prefix="regression_"))
    rows: list[Row] = []
    covered: set[str] = set()
    started = _dt.datetime.now()

    try:
        # --- 2. compile ------------------------------------------------------
        rc, out = _run([vlib, "work"], workdir)
        if rc != 0:
            print(f"vlib failed:\n{out}", file=sys.stderr)
            return 2
        sources = [str(ROOT.joinpath(s)) for s in RTL_SOURCES + TB_SOURCES]
        rc, out = _run([vlog, "-sv", "-lint", *sources], workdir)
        if rc != 0:
            print(f"COMPILE FAILED\n{out}", file=sys.stderr)
            return 2
        print(f"compiled {len(sources)} sources (pkg_params.sv first), lint clean\n")

        # --- 3. unit testbenches --------------------------------------------
        if not args.no_units:
            units = [("tb_pkg_params", []), ("tb_line_window", ["-gTBW=8"]),
                     ("tb_line_window", ["-gTBW=32"]), ("tb_mac_array", []),
                     ("tb_adder_tree", []), ("tb_normalize", []),
                     ("tb_kernel_regfile", [])]
            for module, extra in units:
                cmd = [vsim, "-c", f"+dump={STAGE_DUMP}", *extra,
                       "-do", "run -all; quit -f", module]
                rc, out = _run(cmd, workdir)
                ok = f"{module} PASSED" in out and "FAILED" not in out
                label = module + (f" {' '.join(extra)}" if extra else "")
                rows.append(Row(label, "-", "-", "-", "0" if ok else "?",
                                "PASS" if ok else "FAIL"))
                if not ok:
                    print(out)

        # --- 3b. directed corner tests --------------------------------------
        # Mid-frame reset, back-to-back frames and the prime/flush + row-wrap
        # boundaries: stimulus the vector suite cannot express.
        if not args.no_units:
            dvec = VECTORS.joinpath("laplacian")
            cmd = [vsim, "-c",
                   f"+image={dvec.joinpath('image.txt')}",
                   f"+kernel0={dvec.joinpath('kernel_b0.txt')}",
                   f"+expected0={dvec.joinpath('expected_b0_relu0.txt')}",
                   "-do", "run -all; quit -f", "tb_conv_directed"]
            rc, out = _run(cmd, workdir)
            ok = "tb_conv_directed PASSED" in out and "FAILED" not in out
            rows.append(Row("tb_conv_directed", "-", "-", "-", "0" if ok else "?",
                            "PASS" if ok else "FAIL", "midreset/b2b/rowwrap"))
            if not ok:
                print(out)

        # --- 4. the vector suite, both ReLU modes ---------------------------
        for n, entry in enumerate(vectors):
            name, banks, shift = entry["name"], entry["num_kernels"], entry["shift"]
            vdir = VECTORS.joinpath(name)
            outdir = RESULTS.joinpath(name)
            outdir.mkdir(parents=True, exist_ok=True)
            for relu in (0, 1):
                # Bubbles in half the runs (docs/05 s3), deterministically
                # selected from the seed so a failure is reproducible.
                bubbles = ((n + relu + args.seed) % 2)
                checklat = 1 if (bubbles == 0 and banks == 1) else 0
                pargs = [f"+image={vdir.joinpath('image.txt')}", f"+banks={banks}",
                         f"+shift={shift}", f"+relu={relu}", f"+bubbles={bubbles}",
                         f"+checklat={checklat}", f"+hwout={outdir}"]
                for b in range(banks):
                    pargs.append(f"+kernel{b}={vdir.joinpath(f'kernel_b{b}.txt')}")
                    pargs.append(f"+expected{b}={vdir.joinpath(f'expected_b{b}_relu{relu}.txt')}")
                cmd = [vsim, "-c", *pargs, "-do", "run -all; quit -f", "tb_conv_top"]
                rc, out = _run(cmd, workdir)

                ok = "tb_conv_top PASSED" in out and "FAILED" not in out
                outputs = mismatches = "?"
                for line in out.splitlines():
                    if "RESULT outputs=" in line:
                        for tok in line.split():
                            if tok.startswith("outputs="):
                                outputs = tok.split("=")[1]
                            if tok.startswith("errors="):
                                mismatches = tok.split("=")[1]
                if not ok and mismatches == "?":
                    mismatches = str(out.count("FAIL  "))
                for line in out.splitlines():
                    if "COVER " in line:
                        covered.add(line.split("COVER ", 1)[1].strip())
                note = "bubbles" if bubbles else ("latency" if checklat else "")
                rows.append(Row(name, str(relu), str(banks), outputs, mismatches,
                                "PASS" if ok else "FAIL", note))

                if not ok:
                    print(f"\n{'='*70}\nMISMATCH in {name} relu={relu}\n{'='*70}")
                    for line in out.splitlines():
                        if "FAIL" in line:
                            print(line)
                    loc = parse_failure(out)
                    if loc:
                        bank, idx = loc
                        print(f"\n--- golden-model stage trace, bank {bank}, output {idx} ---")
                        print(localise(name, bank, idx, shift, relu))

        # --- 5. matrix -------------------------------------------------------
        # ---- sign-off gate: the real-image family ---------------------------
        # Appended BEFORE the matrix is rendered, so a failing gate is visible
        # in the table rather than only moving the exit code.
        if args.signoff:
            problem = real_family_error(manifest)
            if problem:
                rows.append(Row("SIGNOFF real-image", "-", "-", "-", "1",
                                "FAIL", problem))
            else:
                rows.append(Row("SIGNOFF real-image", "-", "-", "-", "0",
                                "PASS", "all three vectors present"))

        width = max(len(r.vector) for r in rows)
        header = (f"{'VECTOR':<{width}} {'RELU':>4}  {'BANKS':>5}  "
                  f"{'OUTPUTS':>7}  {'MISMATCH':>8}  RESULT")
        lines = [header, "-" * len(header)]
        lines += [r.render(width) for r in rows]
        failed = sum(1 for r in rows if r.result != "PASS")
        lines.append("")
        lines.append(f"TOTAL: {len(rows)} runs, {len(rows)-failed} PASS, {failed} FAIL")

        # ---- functional coverage -------------------------------------------
        lines.append("")
        lines.append("FUNCTIONAL COVERAGE (procedural bins, no covergroup support)")
        lines.append("-" * 60)
        total_bins = hit_bins = 0
        for group, bins in COVERAGE_BINS.items():
            hit = [b for b in bins if b in covered]
            miss = [b for b in bins if b not in covered]
            total_bins += len(bins)
            hit_bins += len(hit)
            status = "100%" if not miss else f"{len(hit)*100//len(bins)}%"
            lines.append(f"  {group:<16} {len(hit)}/{len(bins)} {status:>5}"
                         + (f"   MISSING: {', '.join(miss)}" if miss else ""))
        pct = hit_bins * 100 // total_bins if total_bins else 0
        lines.append(f"  {'TOTAL':<16} {hit_bins}/{total_bins} {pct:>4}%")
        lines.append("")
        lines.append("Justified exclusions:")
        for name, why in EXCLUSIONS.items():
            lines.append(f"  - {name}: {why}")
        if hit_bins != total_bins:
            lines.append("")
            if args.vector is None:
                failed += 1
                lines.append("COVERAGE INCOMPLETE -- unhit bins above are not in "
                             "the justified-exclusion list.")
            else:
                lines.append(f"(coverage not enforced: --vector {args.vector} "
                             "exercises only part of the suite by design)")
        lines.append(f"Simulator: ModelSim ASE 10.1d "
                     f"(no SVA, no covergroups -- docs/05 s6 properties run as "
                     f"procedural checkers)")
        lines.append(f"Elapsed: {(_dt.datetime.now()-started).total_seconds():.1f}s")
        report = "\n".join(lines)
        print("\n" + report)

        RESULTS.mkdir(parents=True, exist_ok=True)
        log = RESULTS.joinpath(f"regression_{started:%Y%m%d}.log")
        log.write_text(f"# regression run {started:%Y-%m-%d %H:%M:%S}\n"
                       f"# seed {args.seed}\n\n{report}\n", encoding="utf-8")
        print(f"\narchived to {log.relative_to(ROOT)}")
        return 1 if failed else 0
    finally:
        if args.keep:
            print(f"work library kept at {workdir}")
        else:
            shutil.rmtree(workdir, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
