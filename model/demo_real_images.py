#!/usr/bin/env python3
"""Render the real-image demo figures from HARDWARE outputs (WP6).

Owner: WP6.  Refs: docs/09_bonus_and_stretch.md s3 (Sobel visual demo, which
requires edge maps from HW outputs, not Python), docs/05_verification_plan.md
s3 (the hw_out_* dumps this reads).

    python tb/run_regression.py            # must run first: writes the HW dumps
    python model/demo_real_images.py
    python model/demo_real_images.py --list

WHERE THE PIXELS COME FROM
    Every edge map in these figures is the accelerator's own output, read back
    from `tb/results/<vector>/hw_out_b<k>_relu<r>.txt` -- the files the
    testbench writes as it streams. Nothing here re-computes convolution in
    Python for display purposes. docs/09 s3 is explicit that the demo figure
    must come from hardware, and a figure rendered from the model would prove
    only that the model works.

THE ORDER OF OPERATIONS MATTERS
    1. Load the HW output.
    2. Compare it against the golden model expectation -- BIT-EXACT, zero
       tolerance. If it differs, this script REFUSES to draw anything.
    3. Only then apply display normalisation.

    Normalisation is the one place a lossy transform is allowed, and it is
    allowed only because it happens strictly after the pass/fail decision has
    already been made on the raw 16-bit values. It is presentation, never a
    criterion: a figure can never turn a mismatching run into a pretty picture,
    because step 2 stops it first.

DISPLAY NORMALISATION, STATED EXACTLY
    Signed maps (Sobel Gx, Gy, learned features):
        d = 128 + (v * 127) // max(1, peak)        where peak = max|v| over the map
    so 0 maps to mid-grey and the extremes to 1 and 255.
    Unsigned maps (gradient magnitude |Gx| + |Gy|):
        d = (v * 255) // max(1, peak)
    Both are integer, both are per-map, and the peak used is printed in the
    caption file so any figure can be traced back to its raw values.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Sequence

sys.path.insert(0, str(Path(__file__).resolve().parent))

from pkg_params import PARAMS  # noqa: E402

ROOT = Path(__file__).resolve().parent.parent
VECTORS = ROOT.joinpath("model", "vectors")
RESULTS = ROOT.joinpath("tb", "results")
FIGURES = ROOT.joinpath("docs", "report", "figures")

TILE_GAP = 8
LABEL_H = 14


def _read_ints(path: Path) -> list[int]:
    return [int(t) for t in path.read_text(encoding="utf-8").split()]


def normalise_signed(vals: Sequence[int]) -> tuple[list[int], int]:
    """Signed map -> 0..255 with 0 at mid-grey. Returns (pixels, peak)."""
    peak = max((abs(v) for v in vals), default=0)
    d = max(1, peak)
    return [128 + (v * 127) // d for v in vals], peak


def normalise_unsigned(vals: Sequence[int]) -> tuple[list[int], int]:
    """Non-negative map -> 0..255. Returns (pixels, peak)."""
    peak = max((v for v in vals), default=0)
    d = max(1, peak)
    return [(v * 255) // d for v in vals], peak


def load_hw_verified(vector: str, bank: int, relu: int) -> list[int]:
    """HW output for one bank, verified bit-exact against the model first.

    Raises rather than returning data whenever the two disagree: a demo figure
    must never be drawn from a run that did not pass.
    """
    hw_path = RESULTS.joinpath(vector, f"hw_out_b{bank}_relu{relu}.txt")
    exp_path = VECTORS.joinpath(vector, f"expected_b{bank}_relu{relu}.txt")
    if not hw_path.is_file():
        raise FileNotFoundError(
            f"{hw_path} missing -- run `python tb/run_regression.py` first so the "
            f"testbench writes the hardware outputs this figure is made from.")
    hw = _read_ints(hw_path)
    exp = _read_ints(exp_path)
    if hw != exp:
        diff = sum(1 for a, b in zip(hw, exp) if a != b)
        raise SystemExit(
            f"REFUSING TO RENDER: {vector} bank {bank} relu {relu} differs from the "
            f"golden model in {diff} of {len(exp)} outputs.\n"
            f"  A demo figure is not allowed to paper over a mismatch. Fix the "
            f"mismatch first (Phase 5 discrepancy procedure), then re-render.")
    return hw


def make_tile(vals: Sequence[int], edge: int, kind: str):
    """One normalised grayscale tile plus the peak used, for the caption."""
    from PIL import Image
    if kind == "signed":
        px, peak = normalise_signed(vals)
    elif kind == "unsigned":
        px, peak = normalise_unsigned(vals)
    else:                                   # raw 8-bit input, no transform
        px, peak = list(vals), PARAMS.PIX_MAX
    img = Image.new("L", (edge, edge))
    img.putdata([max(0, min(255, v)) for v in px])
    return img, peak


def compose(tiles, labels, scale: int):
    """Lay tiles out in a labelled row."""
    from PIL import Image, ImageDraw
    w = tiles[0].width * scale
    h = tiles[0].height * scale
    total_w = len(tiles) * w + (len(tiles) - 1) * TILE_GAP
    canvas = Image.new("L", (total_w, h + LABEL_H), color=255)
    draw = ImageDraw.Draw(canvas)
    for i, (t, lab) in enumerate(zip(tiles, labels)):
        x = i * (w + TILE_GAP)
        canvas.paste(t.resize((w, h), Image.NEAREST), (x, LABEL_H))
        draw.text((x + 1, 2), lab, fill=0)
    return canvas


def build(scale: int, quiet: bool = False) -> int:
    real_manifest = VECTORS.joinpath("manifest_real.json")
    if not real_manifest.is_file():
        print("no manifest_real.json -- run model/gen_real_vectors.py first",
              file=sys.stderr)
        return 2
    man = json.loads(real_manifest.read_text(encoding="utf-8"))
    edge_vectors = [e for e in man["vectors"] if e["family"] == "edge"]
    if not edge_vectors:
        print("no real edge vectors found", file=sys.stderr)
        return 2

    FIGURES.mkdir(parents=True, exist_ok=True)
    captions: list[str] = [
        "# Real-image demo figures",
        "",
        "Rendered by `model/demo_real_images.py` from **hardware outputs**",
        "(`tb/results/<vector>/hw_out_*.txt`), not from the golden model.",
        "",
        "Every map below was verified **bit-exact against the golden model**",
        "before any display transform was applied. Normalisation is presentation",
        "only and is never a pass criterion -- the script refuses to draw a",
        "figure for a vector that does not match.",
        "",
        "Display normalisation (integer, per map):",
        "",
        "* signed maps: `d = 128 + (v * 127) // max|v|` (0 -> mid-grey)",
        "* magnitude:   `d = (v * 255) // max(v)`",
        "",
    ]

    rendered = 0
    for entry in sorted(edge_vectors, key=lambda e: e["name"]):
        name = entry["name"]
        cfg = json.loads(VECTORS.joinpath(name, "config.json").read_text(encoding="utf-8"))
        W = cfg["W"]
        edge = W - PARAMS.N + 1

        img = _read_ints(VECTORS.joinpath(name, "image.txt"))
        # Interior of the input, so it aligns pixel-for-pixel with the outputs.
        interior = [img[(r + 1) * W + (c + 1)] for r in range(edge) for c in range(edge)]

        gx = load_hw_verified(name, 0, 0)
        gy = load_hw_verified(name, 1, 0)
        ident = load_hw_verified(name, 2, 0)
        # Host-side combination, exactly as docs/09 s3 specifies.
        mag = [abs(a) + abs(b) for a, b in zip(gx, gy)]

        # The identity bank is the strongest correctness statement in the whole
        # figure: it must be the input interior, pixel for pixel.
        if ident != interior:
            raise SystemExit(
                f"REFUSING TO RENDER: {name} identity bank does not reproduce the "
                f"input interior. That is a blocking bug, not a display artefact.")

        tiles, labels, peaks = [], [], []
        for vals, kind, lab in (
            (interior, "raw", "input"),
            (gx, "signed", "Sobel Gx (HW)"),
            (gy, "signed", "Sobel Gy (HW)"),
            (mag, "unsigned", "|Gx|+|Gy| (HW)"),
            (ident, "raw", "identity (HW)"),
        ):
            t, peak = make_tile(vals, edge, kind)
            tiles.append(t)
            labels.append(lab)
            peaks.append(peak)

        # ReLU-on Sobel Gx, to show the activation doing something visible.
        gx_relu = load_hw_verified(name, 0, 1)
        t, peak = make_tile(gx_relu, edge, "unsigned")
        tiles.append(t)
        labels.append("Gx, ReLU on (HW)")
        peaks.append(peak)

        out = FIGURES.joinpath(f"demo_{name}.png")
        compose(tiles, labels, scale).save(out)
        rendered += 1

        captions += [
            f"## `demo_{name}.png`",
            "",
            f"* source photograph: `{entry['source_image']}`, "
            f"native crop {cfg['crop_origin']} of {cfg['source_resolution']}, "
            f"no resizing",
            f"* {edge}x{edge} output maps, W={W}, shift={cfg['shift']}",
            f"* display peaks (raw units): Gx {peaks[1]}, Gy {peaks[2]}, "
            f"|Gx|+|Gy| {peaks[3]}, Gx-ReLU {peaks[5]}",
            "* identity bank verified equal to the input interior, pixel for pixel",
            "",
        ]
        if not quiet:
            print(f"  {out.relative_to(ROOT)}  ({edge}x{edge}, peaks Gx={peaks[1]} "
                  f"Gy={peaks[2]} mag={peaks[3]})")

    FIGURES.joinpath("README.md").write_text("\n".join(captions), encoding="utf-8")
    if not quiet:
        print(f"\n{rendered} figure(s) written to {FIGURES.relative_to(ROOT)}")
        print("every map verified bit-exact against the golden model before "
              "normalisation")
    return 0


def main(argv: Sequence[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--scale", type=int, default=4, help="pixel magnification")
    ap.add_argument("--list", action="store_true")
    args = ap.parse_args(argv)

    if args.list:
        man = VECTORS.joinpath("manifest_real.json")
        if not man.is_file():
            print("no manifest_real.json", file=sys.stderr)
            return 2
        for e in json.loads(man.read_text(encoding="utf-8"))["vectors"]:
            if e["family"] == "edge":
                have = RESULTS.joinpath(e["name"], "hw_out_b0_relu0.txt").is_file()
                print(f"{e['name']:<34} W={e['W']:<4} "
                      f"{'HW outputs present' if have else 'NO HW OUTPUT (run regression)'}")
        return 0

    return build(args.scale)


if __name__ == "__main__":
    raise SystemExit(main())
