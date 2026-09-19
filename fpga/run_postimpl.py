#!/usr/bin/env python3
"""Post-implementation simulation + SAIF capture (Phase 6, docs/06 s4).

    python fpga/run_postimpl.py                    # lut variant
    python fpga/run_postimpl.py --variant dsp
    python fpga/run_postimpl.py --vector rand_00

Does two things the project could not do before:

1. **Verifies the netlist that was actually implemented.** Every check so far
   ran against RTL. This simulates the placed-and-routed netlist through its
   top-level interface and requires every output pixel to be bit-exact against
   the golden model. A design can synthesise cleanly, meet timing, and still be
   wrong; nothing until now would have caught that.

2. **Captures SAIF switching activity over one frame**, which is what turns the
   power number from vectorless propagation (rejected by docs/06 s4) into the
   vector-based figure the FoM is allowed to use.

Flow: export the netlist from the routed checkpoint -> xvlog/xelab/xsim ->
capture SAIF over the streaming window -> Vivado read_saif + report_power.

The SAIF window is not guessed. The testbench prints `SAIF_MARK STREAM_START`
and `SAIF_MARK STREAM_END`; this script runs the simulation once to learn those
times, then re-runs capturing activity over exactly that window. Reset, the
Xilinx GSR release and the kernel load all sit outside it.

IMAGE PROVENANCE: power depends on realistic pixel statistics, so the stimulus
is a real photograph. docs/06 s4 nominates `real_camera_detail32_edge` (bank 0,
Sobel Gx) -- the highest-toggle W=32 vector in the suite at 0.464 bit-flips per
input bit per pixel transition, which makes it the most demanding realistic
activity available rather than a flattering one. Crops are native-resolution
windows, never resized, because resizing low-passes the image and would
understate switching (assumption A11).

If the real-image family has not been generated, this falls back to `rand_00`
and SAYS SO on every run: uniform-random pixels toggle more than any
photograph, so that figure overstates dynamic power -- the safe direction, but
not a representative one.
"""

from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
from pathlib import Path
from typing import Sequence

ROOT = Path(__file__).resolve().parent.parent
VECTORS = ROOT.joinpath("model", "vectors")
VIVADO_BIN = Path("C:/Xilinx/Vivado/2018.2/bin")

#: Nominated in docs/06 s4: the highest-toggle W=32 real-image vector in the
#: suite (0.464 bit-flips per input bit per pixel transition). Bank 0 is
#: Sobel Gx, which is what the single-bank netlist testbench streams.
PREFERRED_VECTOR = "real_camera_detail32_edge"
#: Only reached if the real-image family has not been generated. Uniform-random
#: pixels toggle MORE than any photograph, so this overstates dynamic power --
#: safe, but not representative, and the run says so loudly.
FALLBACK_VECTOR = "rand_00"


def tool(name: str) -> str:
    for cand in (VIVADO_BIN.joinpath(f"{name}.bat"), VIVADO_BIN.joinpath(name)):
        if cand.is_file():
            return str(cand)
    return name


def run(cmd: Sequence[str], cwd: Path, quiet: bool = True) -> tuple[int, str]:
    proc = subprocess.run(cmd, cwd=str(cwd), capture_output=True, text=True)
    out = proc.stdout + proc.stderr
    if not quiet:
        print(out)
    return proc.returncode, out


def pick_vector(requested: str | None) -> tuple[str, bool]:
    """Return (vector name, is_the_specified_one)."""
    if requested:
        return requested, requested == PREFERRED_VECTOR
    if VECTORS.joinpath(PREFERRED_VECTOR, "image.txt").is_file():
        return PREFERRED_VECTOR, True
    return FALLBACK_VECTOR, False


def main(argv: Sequence[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--variant", default="lut", choices=("lut", "dsp"))
    ap.add_argument("--vector",
                    help=f"stimulus vector (default: {PREFERRED_VECTOR} if present)")
    ap.add_argument("--relu", type=int, default=0, choices=(0, 1))
    ap.add_argument("--skip-export", action="store_true",
                    help="reuse an already-exported netlist")
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args(argv)

    rpt = ROOT.joinpath("fpga", "reports", args.variant)
    simdir = rpt.joinpath("sim")
    if not rpt.joinpath("post_route.dcp").is_file():
        print(f"ERROR: {rpt/'post_route.dcp'} missing. Run fpga/build.tcl first.",
              file=sys.stderr)
        return 2

    vector, is_specified = pick_vector(args.vector)
    vdir = VECTORS.joinpath(vector)
    if not vdir.joinpath("image.txt").is_file():
        print(f"ERROR: vector {vector} not found under {VECTORS}", file=sys.stderr)
        return 2

    shift = 0
    cfg = vdir.joinpath("config.json")
    if cfg.is_file():
        import json
        shift = json.loads(cfg.read_text(encoding="utf-8"))["shift"]

    print(f"variant : {args.variant}")
    print(f"vector  : {vector}  (shift={shift}, relu={args.relu})")
    if not is_specified:
        print(f"  NOTE: docs/06 s4 nominates {PREFERRED_VECTOR}, which is not")
        print( "        present. A uniform-random image toggles more than a")
        print( "        photograph, so the dynamic power below is an OVERESTIMATE")
        print( "        -- safe, but not the nominated stimulus. Generate the real")
        print( "        family with model/prepare_assets.py + gen_real_vectors.py.")

    # --- 1. export the netlist ---------------------------------------------
    if not args.skip_export:
        print("\n[1/4] exporting the routed netlist...")
        rc, out = run([tool("vivado"), "-mode", "batch", "-nojournal", "-nolog",
                       "-source", str(ROOT / "fpga" / "export_netlist.tcl"),
                       "-tclargs", "-variant", args.variant], ROOT, not args.verbose)
        if rc != 0 or "EXPORT COMPLETE" not in out:
            print("netlist export FAILED", file=sys.stderr)
            print(out[-3000:], file=sys.stderr)
            return 2

    netlist = simdir.joinpath("conv_top_funcsim.v")
    if not netlist.is_file():
        print(f"ERROR: {netlist} missing", file=sys.stderr)
        return 2

    # --- 2. compile and elaborate ------------------------------------------
    work = simdir.joinpath("xsim_work")
    shutil.rmtree(work, ignore_errors=True)
    work.mkdir(parents=True, exist_ok=True)
    stale = work.joinpath("xsim.dir", "netsim", "xsimk.exe")
    if stale.exists():
        print(f"ERROR: {stale} could not be removed -- an xsim process from an "
              f"earlier run is probably still alive and holding it. "
              f"Kill any stray xsimk/xsim processes and re-run.",
              file=sys.stderr)
        return 2

    glbl = VIVADO_BIN.parent.joinpath("data", "verilog", "src", "glbl.v")
    print("[2/4] compiling netlist + testbench...")
    rc, out = run([tool("xvlog"), str(netlist), str(glbl)], work, not args.verbose)
    if rc != 0:
        print("xvlog (netlist) FAILED\n" + out[-3000:], file=sys.stderr)
        return 2
    rc, out = run([tool("xvlog"), "-sv", str(ROOT / "tb" / "tb_conv_netlist.sv")],
                  work, not args.verbose)
    if rc != 0:
        print("xvlog (testbench) FAILED\n" + out[-3000:], file=sys.stderr)
        return 2

    # glbl is elaborated alongside the testbench so the netlist GSR is released.
    # -debug typical is REQUIRED for log_saif: without trace information xsim
    # refuses the SAIF request ("compiled without trace information"). It costs
    # simulation speed, which does not matter for a 1060-cycle frame.
    rc, out = run([tool("xelab"), "-L", "unisims_ver", "-L", "secureip",
                   "-debug", "typical",
                   "--snapshot", "netsim", "tb_conv_netlist", "glbl"],
                  work, not args.verbose)
    if rc != 0:
        print("xelab FAILED\n" + out[-4000:], file=sys.stderr)
        return 2

    # Plusargs go through an xsim OPTIONS FILE rather than the command line.
    # xsim ships as a .bat wrapper on Windows, and cmd.exe treats "=" as a token
    # delimiter, so "-testplusarg image=D:/..." arrives split and xsim reports
    # "Expected a switch but found D". An options file is parsed by xsim itself,
    # so it is immune to that. Forward slashes throughout for the same reason.
    plus = [
        f"image={(vdir / 'image.txt').as_posix()}",
        f"kernel0={(vdir / 'kernel_b0.txt').as_posix()}",
        f"expected0={(vdir / f'expected_b0_relu{args.relu}.txt').as_posix()}",
        f"relu={args.relu}",
        f"shift={shift}",
    ]

    def opts_file(name: str, tclbatch: str) -> str:
        lines = [f"-testplusarg {item}" for item in plus]
        # -onerror/-onfinish quit are NOT optional here. Without them a failing
        # Tcl command drops xsim into its interactive prompt and the process
        # hangs forever, holding a lock on xsimk.exe that makes every later run
        # fail with "Unable to remove previous simulation file" -- a failure
        # that looks nothing like its cause.
        lines.append("-onerror quit")
        lines.append("-onfinish quit")
        lines.append(f"-tclbatch {tclbatch}")
        path = work / name
        path.write_text("\n".join(lines) + "\n", encoding="utf-8")
        return name

    # --- 3. pass one: learn the streaming window ----------------------------
    print("[3/4] pass 1 -- netlist verification, and locating the SAIF window...")
    (work / "pass1.tcl").write_text("run -all\nquit\n", encoding="utf-8")
    rc, out = run([tool("xsim"), "netsim", "-f", opts_file("pass1.opts", "pass1.tcl")],
                  work, not args.verbose)

    passed = "tb_conv_netlist PASSED" in out
    marks = dict(re.findall(r"SAIF_MARK (\w+)\s+(\d+)", out))
    res = re.search(r"RESULT outputs=(\d+) errors=(\d+)", out)

    print("\n" + "=" * 62)
    if passed:
        print(f"NETLIST VERIFICATION: PASS -- "
              f"{res.group(1) if res else '?'} outputs bit-exact from the routed netlist")
    else:
        print("NETLIST VERIFICATION: FAIL")
        shown = [l for l in out.splitlines()
                 if "FAIL" in l or "Error" in l or "ERROR" in l]
        for line in shown[:15]:
            print("  " + line.strip())
        if not shown:
            # No design-level failure text at all usually means the simulator
            # never ran the testbench -- a bad invocation, not a bad design.
            print("  (no testbench failure reported -- the simulator may not "
                  "have run; raw output below)")
            print(out[-2500:])
        return 1
    print("=" * 62)

    if "STREAM_START" not in marks or "STREAM_END" not in marks:
        print("ERROR: testbench did not emit both SAIF markers", file=sys.stderr)
        return 2
    t0, t1 = int(marks["STREAM_START"]), int(marks["STREAM_END"])
    # Markers are printed in ps (xsim %0t default resolution is the timescale
    # precision, 1 ps here).
    print(f"      SAIF window: {t0} ps .. {t1} ps  ({(t1-t0)/1000:.0f} ns of streaming)")

    # --- 4. pass two: capture SAIF over exactly that window ------------------
    print("[4/4] pass 2 -- capturing SAIF over the streaming window...")
    saif = simdir.joinpath("conv_top.saif")
    tcl = f"""# run up to the start of streaming: reset, GSR release and kernel
# load all happen here and must NOT contribute switching activity.
run {t0} ps
open_saif {{{saif.as_posix()}}}
log_saif [get_objects -r /tb_conv_netlist/dut/*]
run {t1 - t0} ps
close_saif
run -all
quit
"""
    (work / "pass2.tcl").write_text(tcl, encoding="utf-8")
    rc, out = run([tool("xsim"), "netsim", "-f", opts_file("pass2.opts", "pass2.tcl")],
                  work, not args.verbose)
    if not saif.is_file():
        print("SAIF capture FAILED\n" + out[-3000:], file=sys.stderr)
        return 2
    print(f"      SAIF written: {saif.relative_to(ROOT)} "
          f"({saif.stat().st_size//1024} KB)")

    # --- 5. power ------------------------------------------------------------
    print("\n[5/5] SAIF-based power analysis...")
    rc, out = run([tool("vivado"), "-mode", "batch", "-nojournal", "-nolog",
                   "-source", str(ROOT / "fpga" / "power_saif.tcl"),
                   "-tclargs", "-variant", args.variant], ROOT, not args.verbose)
    if rc != 0 or "POWER COMPLETE" not in out:
        print("power analysis FAILED\n" + out[-3000:], file=sys.stderr)
        return 2
    for line in out.splitlines():
        if re.search(r"Total On-Chip Power|Dynamic \(W\)|Device Static|Confidence", line):
            print("   " + line.strip().lstrip("# "))

    print(f"\nDone. Re-run `vivado -mode batch -source fpga/fom.tcl` to fold the "
          f"SAIF power into the FoM worksheet.")
    if not is_specified:
        print(f"REMINDER: power came from `{vector}`, not the specified "
              f"{PREFERRED_VECTOR}. State that in the report.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
