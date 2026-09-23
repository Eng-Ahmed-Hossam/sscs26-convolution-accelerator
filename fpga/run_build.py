#!/usr/bin/env python3
"""Run fpga/build.tcl, retrying the known-transient Vivado startup failure.

    python fpga/run_build.py                          # both variants, core mode
    python fpga/run_build.py --variant lut
    python fpga/run_build.py --mode chip --variant lut
    python fpga/run_build.py --period 6.0             # closure sweep

WHY A RETRY WRAPPER EXISTS
    On this machine Vivado 2018.2 intermittently fails during synth_design with

        couldn't read file ".../scripts/rt/<something>.tcl": No error

    naming a different file from its OWN installation each time
    (unimacro_verilog.tcl, retarget_vhdl.tcl, rtSynthCleanup.tcl ...), always
    with the non-reason "No error", and always succeeding on a plain retry.
    The files exist and are readable; nothing else is holding them. The
    signature is characteristic of on-access antivirus scanning
    C:\\Xilinx while Vivado spawns its helper process.

    THE REAL FIX IS TO EXCLUDE THE VIVADO INSTALL DIRECTORY FROM REAL-TIME
    SCANNING. This wrapper only stops the flakiness from costing a manual
    retry, and it is deliberately narrow: it retries ONLY that signature, and
    any other failure is reported immediately and unretried, so a genuine
    design error is never hidden behind a retry loop.
"""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path
from typing import Sequence

ROOT = Path(__file__).resolve().parent.parent
VIVADO = Path("C:/Xilinx/Vivado/2018.2/bin/vivado.bat")

#: The one failure worth retrying. Narrow on purpose.
TRANSIENT = re.compile(
    r"couldn't read file \"[^\"]*Xilinx[^\"]*\.tcl\": No error", re.I)


def run_once(tclargs: Sequence[str]) -> tuple[int, str]:
    cmd = [str(VIVADO), "-mode", "batch", "-nojournal", "-nolog",
           "-source", str(ROOT / "fpga" / "build.tcl")]
    if tclargs:
        cmd += ["-tclargs", *tclargs]
    proc = subprocess.run(cmd, cwd=str(ROOT), capture_output=True, text=True)
    return proc.returncode, proc.stdout + proc.stderr


def main(argv: Sequence[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--variant", choices=("lut", "dsp", "both"))
    ap.add_argument("--mode", choices=("core", "chip"))
    ap.add_argument("--period", type=float)
    ap.add_argument("--synth-only", action="store_true")
    ap.add_argument("--retries", type=int, default=3)
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args(argv)

    tclargs: list[str] = []
    if args.variant:    tclargs += ["-variant", args.variant]
    if args.mode:       tclargs += ["-mode", args.mode]
    if args.period:     tclargs += ["-period", str(args.period)]
    if args.synth_only: tclargs += ["-synth-only"]

    if not VIVADO.is_file():
        print(f"ERROR: {VIVADO} not found. Vivado is required -- no other tool "
              f"produces the LUT/FF/DSP/BRAM/Fmax/power numbers the competition "
              f"asks for.", file=sys.stderr)
        return 2

    for attempt in range(1, args.retries + 1):
        rc, out = run_once(tclargs)
        if args.verbose:
            print(out)

        for line in out.splitlines():
            if re.match(r"^(VARIANT|CONSTRAINT|TIMING|COMPLIANCE|SUMMARY|NOTE|XDC)", line):
                print(line)

        if rc == 0 and "BUILD COMPLETE" in out:
            return 0

        hit = TRANSIENT.search(out)
        if hit and attempt < args.retries:
            print(f"\n[transient Vivado failure, attempt {attempt}/{args.retries}] "
                  f"{hit.group(0)}\n  retrying -- see the module docstring; the "
                  f"durable fix is an antivirus exclusion for C:\\Xilinx\n")
            continue

        print("\nBUILD FAILED", file=sys.stderr)
        if not hit:
            print("  (not the known transient signature -- not retried)",
                  file=sys.stderr)
        for line in out.splitlines():
            if line.startswith("ERROR") or "Command failed" in line:
                print("  " + line, file=sys.stderr)
        return rc or 1

    return 1


if __name__ == "__main__":
    raise SystemExit(main())
