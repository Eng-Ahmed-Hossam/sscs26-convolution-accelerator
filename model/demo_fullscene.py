#!/usr/bin/env python3
"""W=256 full-scene demo: one RTL run, bit-exact, and the headline figure (WP6).

Owner: WP6.  Refs: docs/09_bonus_and_stretch.md s3 (demo figure from HW, not
Python), docs/06_implementation_flow.md s4 (this run's trace is the
switching-activity source for SAIF), docs/assumptions.md A1 (W is
compile-time).

    python model/demo_fullscene.py --prepare     # crop + golden expectations
    python model/demo_fullscene.py --run         # elaborate W=256 and simulate
    python model/demo_fullscene.py --figure      # render from the RTL output
    python model/demo_fullscene.py --all

WHY W=256 IS CHEAP TO TRY
    W enters the design in exactly one place: the depth of the two line-buffer
    delay lines, W-N (assumption A1). Nothing else in the datapath, the control
    FSM or the arithmetic depends on it -- the adder tree, the widths and
    P_PIPE are all fixed by N. So a 256-wide build is the same design with
    deeper SRLs, and proving it bit-exact at 256 demonstrates the
    parameterisation is real rather than nominal.

WHAT THIS PRODUCES
    * a 256x256 NATIVE-RESOLUTION crop (never resized -- see prepare_assets.py
      and assumption A11),
    * golden expectations for Sobel Gx/Gy and identity,
    * one full RTL simulation at W=256 with a WLF archived for Phase 6, and
    * the headline figure, rendered from the RTL output and captioned as such.

    64,516 output pixels per bank, all compared bit-exact. The figure is drawn
    only if that comparison passes.
"""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Sequence

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gen_vectors import IDENTITY, SOBEL_GX, SOBEL_GY, _json_dump  # noqa: E402
from golden_conv import ConvSpec, convolve_traced, save_values_txt  # noqa: E402
from pkg_params import PARAMS  # noqa: E402
from prepare_assets import (ASSETS, collect_sources, detail_origin,  # noqa: E402
                            sobel_magnitude, toggle_density_milli)

ROOT = Path(__file__).resolve().parent.parent
VECTORS = ROOT.joinpath("model", "vectors")
FIGURES = ROOT.joinpath("docs", "report", "figures")
WAVES = ROOT.joinpath("tb", "results", "waves")
SIM_ROOT = Path("C:/altera/13.0sp1/modelsim_ase/win32aloem")

DEMO_W = 256
VECTOR_NAME = f"real_fullscene{DEMO_W}_edge"
BANKS = [("gx", list(SOBEL_GX)), ("gy", list(SOBEL_GY)), ("id", list(IDENTITY))]
SHIFT = 0

RTL_SOURCES = ["rtl/pkg_params.sv", "rtl/line_window.sv", "rtl/mac_array.sv",
               "rtl/adder_tree.sv", "rtl/normalize.sv", "rtl/kernel_regfile.sv",
               "rtl/ctrl_fsm.sv", "rtl/conv_top.sv"]


def _tool(name: str) -> str:
    for cand in (SIM_ROOT.joinpath(f"{name}.exe"), SIM_ROOT.joinpath(name)):
        if cand.is_file():
            return str(cand)
    return name


def prepare(source_hint: str | None) -> dict:
    """Cut a 256x256 native crop and compute the golden expectations."""
    sources, mode = collect_sources(include_fallback=True)
    by_name = {n: g for n, g, _p in sources}
    usable = {n: g for n, g in by_name.items()
              if g.shape[0] >= DEMO_W and g.shape[1] >= DEMO_W}
    if not usable:
        raise SystemExit(
            f"demo_fullscene: no source is at least {DEMO_W}x{DEMO_W}. "
            f"Add a larger photograph to model/vectors/assets/raw/.")

    if source_hint and source_hint in usable:
        name = source_hint
    else:
        # Highest total gradient energy: the most interesting full scene, and
        # the most switching activity for the SAIF that follows.
        name = max(sorted(usable), key=lambda n: int(sobel_magnitude(usable[n]).sum()))
    gray = usable[name]

    origin = detail_origin(sobel_magnitude(gray), DEMO_W) or (0, 0)
    crop = gray[origin[0]:origin[0] + DEMO_W, origin[1]:origin[1] + DEMO_W]
    flat = crop.reshape(-1).tolist()

    spec = ConvSpec.from_package(W=DEMO_W)
    vdir = VECTORS.joinpath(VECTOR_NAME)
    if vdir.exists():
        shutil.rmtree(vdir)
    vdir.mkdir(parents=True)
    save_values_txt(vdir.joinpath("image.txt"), flat)

    per_bank = {}
    for k, (label, coef) in enumerate(BANKS):
        save_values_txt(vdir.joinpath(f"kernel_b{k}.txt"), coef)
        for relu in (0, 1):
            out, stats = convolve_traced(crop.tolist(), coef, SHIFT, relu, spec)
            save_values_txt(vdir.joinpath(f"expected_b{k}_relu{relu}.txt"), out)
            per_bank[f"b{k}_relu{relu}"] = {
                "acc_peak_abs": stats.acc_peak_abs,
                "sat_pos": stats.sat_pos, "sat_neg": stats.sat_neg,
                "relu_clips": stats.relu_clips,
                "out_min": stats.out_min, "out_max": stats.out_max,
            }

    cfg = {
        "name": VECTOR_NAME, "N": spec.N, "W": DEMO_W, "shift": SHIFT,
        "num_kernels": len(BANKS), "banks": list(range(len(BANKS))),
        "relu_modes": [0, 1], "outputs_per_bank": spec.OUT_COUNT,
        "asset": f"{name}_fullscene{DEMO_W}", "source_image": name,
        "source_resolution": [int(gray.shape[0]), int(gray.shape[1])],
        "crop_origin": [int(origin[0]), int(origin[1])],
        "resized": False,
        "toggle_density_milli": toggle_density_milli(flat),
        "bank_labels": [b[0] for b in BANKS],
        "tags": ["real", "fullscene", f"w{DEMO_W}"],
        "source_mode": mode,
    }
    _json_dump(vdir.joinpath("config.json"), cfg)
    _json_dump(vdir.joinpath("stats.json"), per_bank)

    print(f"source      : {name} {gray.shape[0]}x{gray.shape[1]}")
    print(f"crop        : {DEMO_W}x{DEMO_W} at {origin}, native resolution")
    print(f"toggle/bit  : {cfg['toggle_density_milli']/1000:.3f}")
    print(f"outputs/bank: {spec.OUT_COUNT}")
    print(f"acc peak    : {max(v['acc_peak_abs'] for v in per_bank.values())} "
          f"of {PARAMS.ACC_MAX_ABS}")
    return cfg


def run_rtl(verbose: bool) -> int:
    """Elaborate at W=256 and run one full simulation, checked bit-exact."""
    vdir = VECTORS.joinpath(VECTOR_NAME)
    cfg = json.loads(vdir.joinpath("config.json").read_text(encoding="utf-8"))
    work = Path(tempfile.mkdtemp(prefix="fullscene_"))
    WAVES.mkdir(parents=True, exist_ok=True)
    results = ROOT.joinpath("tb", "results", VECTOR_NAME)
    results.mkdir(parents=True, exist_ok=True)

    try:
        rc = subprocess.run([_tool("vlib"), "work"], cwd=work,
                            capture_output=True, text=True).returncode
        if rc != 0:
            print("vlib failed", file=sys.stderr)
            return 2
        srcs = [str(ROOT.joinpath(s)) for s in RTL_SOURCES]
        srcs.append(str(ROOT.joinpath("tb", "tb_conv_top.sv")))
        proc = subprocess.run([_tool("vlog"), "-sv", *srcs], cwd=work,
                              capture_output=True, text=True)
        if proc.returncode != 0:
            print("COMPILE FAILED\n" + (proc.stdout + proc.stderr)[-3000:],
                  file=sys.stderr)
            return 2

        wlf = WAVES.joinpath(f"fullscene{DEMO_W}.wlf")
        pargs = [f"+image={vdir.joinpath('image.txt')}",
                 f"+banks={cfg['num_kernels']}", f"+shift={SHIFT}",
                 "+relu=0", "+bubbles=0", "+checklat=1",
                 f"+hwout={results}"]
        for b in range(cfg["num_kernels"]):
            pargs.append(f"+kernel{b}={vdir.joinpath(f'kernel_b{b}.txt')}")
            pargs.append(f"+expected{b}={vdir.joinpath(f'expected_b{b}_relu0.txt')}")

        print(f"\nsimulating W={DEMO_W}: {cfg['num_kernels']} banks x "
              f"{cfg['outputs_per_bank']} outputs "
              f"= {cfg['num_kernels']*cfg['outputs_per_bank']} comparisons ...")
        # "tb_conv_top" must be the LAST argument. Without it vsim prints
        # "No Design Loaded!" and exits cleanly, which reads as a failing run
        # rather than a malformed command.
        proc = subprocess.run(
            [_tool("vsim"), "-c", f"-gTBW={DEMO_W}", "-wlf", str(wlf), *pargs,
             "-do", "add wave -r /*; run -all; quit -f", "tb_conv_top"],
            cwd=work, capture_output=True, text=True)
        out = proc.stdout + proc.stderr
        if verbose:
            print(out)
        shown = [l for l in out.splitlines()
                 if any(k in l for k in ("ok  ", "FAIL", "RESULT", "PASSED", "T_first"))]
        for line in shown:
            print("  " + line.lstrip("# ").rstrip())
        ok = "tb_conv_top PASSED" in out
        if not shown:
            # Nothing recognisable came back: the testbench never ran. Print the
            # raw tail rather than reporting a bare failure with no evidence.
            print("  (testbench produced no recognisable output -- raw tail:)")
            for line in out.strip().splitlines()[-12:]:
                print("   " + line.rstrip())
        if wlf.is_file():
            print(f"  archived {wlf.relative_to(ROOT)} "
                  f"({wlf.stat().st_size//1024} KB) -- Phase 6 SAIF source")
        return 0 if ok else 1
    finally:
        shutil.rmtree(work, ignore_errors=True)


def figure() -> int:
    """Headline figure, rendered from the RTL output and captioned as such."""
    from PIL import Image, ImageDraw
    from demo_real_images import compose, load_hw_verified, make_tile

    vdir = VECTORS.joinpath(VECTOR_NAME)
    cfg = json.loads(vdir.joinpath("config.json").read_text(encoding="utf-8"))
    W = cfg["W"]
    edge = W - PARAMS.N + 1

    img = [int(t) for t in vdir.joinpath("image.txt").read_text(encoding="utf-8").split()]
    interior = [img[(r + 1) * W + (c + 1)] for r in range(edge) for c in range(edge)]

    gx = load_hw_verified(VECTOR_NAME, 0, 0)
    gy = load_hw_verified(VECTOR_NAME, 1, 0)
    ident = load_hw_verified(VECTOR_NAME, 2, 0)
    if ident != interior:
        raise SystemExit("REFUSING TO RENDER: identity bank != input interior at W=256")
    mag = [abs(a) + abs(b) for a, b in zip(gx, gy)]

    tiles, labels, peaks = [], [], []
    for vals, kind, lab in ((interior, "raw", "input (256x256 native crop)"),
                            (gx, "signed", "Sobel Gx - RTL output"),
                            (gy, "signed", "Sobel Gy - RTL output"),
                            (mag, "unsigned", "|Gx|+|Gy| - RTL output")):
        t, peak = make_tile(vals, edge, kind)
        tiles.append(t); labels.append(lab); peaks.append(peak)

    FIGURES.mkdir(parents=True, exist_ok=True)
    out = FIGURES.joinpath(f"demo_headline_w{DEMO_W}.png")
    compose(tiles, labels, 1).save(out)

    cap = [
        f"# Headline demo figure - `demo_headline_w{DEMO_W}.png`",
        "",
        f"**Every edge map in this figure is the RTL simulation output**, read",
        f"back from `tb/results/{VECTOR_NAME}/hw_out_*.txt`. It is not the",
        "golden model's output. The model's role here was to be the reference",
        f"the RTL was checked against: all {len(gx)*3} output pixels across the",
        "three banks matched bit-exactly before this image was drawn.",
        "",
        f"* source photograph `{cfg['source_image']}`, native {cfg['source_resolution'][0]}x{cfg['source_resolution'][1]}",
        f"* {W}x{W} crop at origin {cfg['crop_origin']}, **no resizing**",
        f"* {edge}x{edge} = {edge*edge} outputs per bank, shift={SHIFT}",
        f"* display peaks (raw 16-bit units): Gx {peaks[1]}, Gy {peaks[2]}, "
        f"magnitude {peaks[3]}",
        "",
        "Display normalisation (integer, per map) is applied only AFTER the",
        "bit-exact comparison passed; it is presentation and never a pass",
        "criterion. See `model/demo_real_images.py`.",
        "",
        f"The simulation trace is archived at `tb/results/waves/fullscene{DEMO_W}.wlf`",
        "and is the switching-activity source for the Phase 6 SAIF power flow",
        "(docs/06 s4).",
        "",
    ]
    FIGURES.joinpath(f"demo_headline_w{DEMO_W}.md").write_text("\n".join(cap),
                                                               encoding="utf-8")
    print(f"wrote {out.relative_to(ROOT)} ({tiles[0].width*4 + 24}x{tiles[0].height} px)")
    print(f"wrote {FIGURES.joinpath(f'demo_headline_w{DEMO_W}.md').relative_to(ROOT)}")
    return 0


def main(argv: Sequence[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--prepare", action="store_true")
    ap.add_argument("--run", action="store_true")
    ap.add_argument("--figure", action="store_true")
    ap.add_argument("--all", action="store_true")
    ap.add_argument("--source", help="force a particular source image")
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args(argv)

    if not any((args.prepare, args.run, args.figure, args.all)):
        ap.error("choose --prepare, --run, --figure or --all")

    if args.prepare or args.all:
        prepare(args.source)
    if args.run or args.all:
        rc = run_rtl(args.verbose)
        if rc != 0:
            print("\nRTL run did not pass -- not rendering a figure from it.",
                  file=sys.stderr)
            return rc
    if args.figure or args.all:
        return figure()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
