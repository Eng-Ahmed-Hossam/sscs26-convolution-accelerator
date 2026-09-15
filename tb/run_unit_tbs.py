#!/usr/bin/env python3
"""Compile and run every RTL unit testbench, one command (Phase 4 gate).

    python tb/run_unit_tbs.py                 # all unit TBs
    python tb/run_unit_tbs.py --tb tb_normalize
    python tb/run_unit_tbs.py --sim-root /path/to/modelsim/bin

Prints a pass/fail matrix and **exits nonzero if anything fails**, which is the
same contract `tb/run_regression.py` will carry for the top-level environment
in Phase 5.

Simulator: ModelSim ASE is the only simulator available in this environment, so
it is the default. It has real limits -- no SVA, no covergroups, and it rejects
parameterised size casts -- which is why the RTL avoids `WIDTH'(expr)` and why
the Phase 5 assertion/coverage plan of docs/05 s6 needs Verilator+cocotb or
Questa. Compilation order always puts rtl/pkg_params.sv first
(CONTRIBUTING.md rule 2).
"""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Sequence

ROOT = Path(__file__).resolve().parent.parent
DEFAULT_SIM_ROOT = Path("C:/altera/13.0sp1/modelsim_ase/win32aloem")

#: pkg_params.sv is compiled explicitly first, then the rest in dependency order.
RTL_SOURCES = [
    "rtl/pkg_params.sv",
    "rtl/line_window.sv",
    "rtl/mac_array.sv",
    "rtl/adder_tree.sv",
    "rtl/normalize.sv",
    "rtl/kernel_regfile.sv",
    "rtl/ctrl_fsm.sv",
    "rtl/conv_top.sv",
]

#: (testbench module, source file, list of extra vsim args)
UNIT_TBS = [
    ("tb_pkg_params",  "tb/tb_pkg_params.sv",  []),
    ("tb_line_window", "tb/tb_line_window.sv", ["-gTBW=8"]),
    ("tb_line_window", "tb/tb_line_window.sv", ["-gTBW=32"]),
    ("tb_mac_array",   "tb/tb_mac_array.sv",   []),
    ("tb_adder_tree",  "tb/tb_adder_tree.sv",  []),
    ("tb_normalize",   "tb/tb_normalize.sv",   []),
    ("tb_kernel_regfile", "tb/tb_kernel_regfile.sv", []),
    ("tb_conv_top",    "tb/tb_conv_top.sv",    []),
]

#: Top-level integration runs: (label, vector, banks, shift, relu, bubbles,
#: check_latency). These read the committed vector files, so conv_top is
#: checked against model/gen_vectors.py output rather than anything the TB
#: computes. Phase 5 expands this into the full suite in run_regression.py.
TOP_RUNS = [
    ("impulse    1 bank  latency", "impulse", 1, 0, 0, 0, 1),
    ("sat_neg    negative rail",   "sat_neg", 1, 0, 0, 0, 0),
    ("sat_neg    ReLU clip",       "sat_neg", 1, 0, 1, 0, 0),
    ("sat_pos    positive rail",   "sat_pos", 1, 0, 0, 0, 0),
    ("ramp       2-bank swap",     "ramp",    2, 0, 0, 0, 0),
    ("impulse    input bubbles",   "impulse", 1, 0, 0, 1, 0),
    ("rand_12    4 banks shift 7", "rand_12", 4, 7, 0, 0, 0),
    ("rand_18    4 banks bubbles", "rand_18", 4, 7, 0, 1, 0),
]

VECTORS = ROOT.joinpath("model", "vectors")


def top_run_args(vector: str, banks: int, shift: int, relu: int,
                 bubbles: int, checklat: int) -> list[str]:
    vdir = VECTORS.joinpath(vector)
    args = [f"+image={vdir.joinpath('image.txt')}", f"+banks={banks}",
            f"+shift={shift}", f"+relu={relu}", f"+bubbles={bubbles}",
            f"+checklat={checklat}"]
    for b in range(banks):
        args.append(f"+kernel{b}={vdir.joinpath(f'kernel_b{b}.txt')}")
        args.append(f"+expected{b}={vdir.joinpath(f'expected_b{b}_relu{relu}.txt')}")
    return args

STAGE_DUMP = ROOT.joinpath("tb", "stage_dumps", "datapath.txt")


def _exe(sim_root: Path, name: str) -> str:
    for candidate in (sim_root.joinpath(f"{name}.exe"), sim_root.joinpath(name)):
        if candidate.is_file():
            return str(candidate)
    return name          # fall back to PATH


def run(cmd: Sequence[str], cwd: Path) -> tuple[int, str]:
    proc = subprocess.run(cmd, cwd=str(cwd), capture_output=True, text=True)
    return proc.returncode, proc.stdout + proc.stderr


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    parser.add_argument("--sim-root", default=str(DEFAULT_SIM_ROOT),
                        help="directory holding vlib/vlog/vsim")
    parser.add_argument("--tb", help="run only this testbench module")
    parser.add_argument("--keep", action="store_true", help="keep the work library")
    parser.add_argument("--verbose", action="store_true", help="print simulator output")
    args = parser.parse_args(argv)

    sim_root = Path(args.sim_root)
    vlib, vlog, vsim = (_exe(sim_root, n) for n in ("vlib", "vlog", "vsim"))

    if not STAGE_DUMP.is_file():
        print(f"ERROR: {STAGE_DUMP} is missing.\n"
              f"       Run `python model/export_stage_dumps.py` first -- the datapath\n"
              f"       TBs check against golden-model stage dumps, not against\n"
              f"       testbench-local arithmetic.", file=sys.stderr)
        return 2

    tbs = [t for t in UNIT_TBS if args.tb is None or t[0] == args.tb]
    if not tbs:
        parser.error(f"no unit TB named {args.tb!r}; known: "
                     + ", ".join(sorted({t[0] for t in UNIT_TBS})))

    workdir = Path(tempfile.mkdtemp(prefix="unit_tbs_"))
    results: list[tuple[str, str, str]] = []
    try:
        rc, out = run([vlib, "work"], workdir)
        if rc != 0:
            print(f"vlib failed:\n{out}", file=sys.stderr)
            return 2

        sources = [str(ROOT.joinpath(s)) for s in RTL_SOURCES]
        # Ordered-unique TB sources: the same module appears more than once in
        # UNIT_TBS when it is run at several parameter values.
        seen: set[str] = set()
        for _module, src, _extra in tbs:
            if src not in seen:
                seen.add(src)
                sources.append(str(ROOT.joinpath(src)))
        rc, out = run([vlog, "-sv", *sources], workdir)
        if rc != 0:
            print(f"COMPILE FAILED\n{out}", file=sys.stderr)
            return 2
        print(f"compiled {len(sources)} source(s)\n")

        for module, _src, extra in tbs:
            if module == "tb_conv_top":
                continue          # driven below, with vector plusargs
            label = module + (f" {' '.join(extra)}" if extra else "")
            cmd = [vsim, "-c", f"+dump={STAGE_DUMP}", *extra,
                   "-do", "run -all; quit -f", module]
            rc, out = run(cmd, workdir)
            passed = f"{module} PASSED" in out and "FAILED" not in out
            note = ""
            for line in out.splitlines():
                if "checked" in line and "error" in line:
                    note = line.lstrip("# ").strip()
            results.append((label, "PASS" if passed else "FAIL", note))
            if args.verbose or not passed:
                print(out)

        # ---- top-level integration runs ----------------------------------
        if args.tb in (None, "tb_conv_top"):
            if not VECTORS.joinpath("manifest.json").is_file():
                print("ERROR: model/vectors is empty. Run "
                      "`python model/gen_vectors.py --all --skip-real` first.",
                      file=sys.stderr)
                return 2
            for label, vector, banks, shift, relu, bubbles, checklat in TOP_RUNS:
                cmd = [vsim, "-c", *top_run_args(vector, banks, shift, relu,
                                                 bubbles, checklat),
                       "-do", "run -all; quit -f", "tb_conv_top"]
                rc, out = run(cmd, workdir)
                passed = "tb_conv_top PASSED" in out and "FAILED" not in out
                note = ""
                for line in out.splitlines():
                    if "output(s)" in line and "error" in line:
                        note = line.lstrip("# ").strip()
                results.append((f"tb_conv_top {label}", "PASS" if passed else "FAIL", note))
                if args.verbose or not passed:
                    print(out)

        width = max(len(r[0]) for r in results)
        print(f"{'UNIT TB':<{width}}  RESULT  DETAIL")
        for label, status, note in results:
            print(f"{label:<{width}}  {status:<6}  {note}")
        failed = sum(1 for _, s, _ in results if s != "PASS")
        print(f"\nTOTAL: {len(results)} runs, {len(results)-failed} PASS, {failed} FAIL")
        return 1 if failed else 0
    finally:
        if args.keep:
            print(f"work library kept at {workdir}")
        else:
            shutil.rmtree(workdir, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
