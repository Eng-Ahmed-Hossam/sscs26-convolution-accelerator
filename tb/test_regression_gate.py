"""The sign-off gate must reject an incomplete real-image family."""
import importlib.util
from pathlib import Path

spec = importlib.util.spec_from_file_location(
    "runner", Path(__file__).with_name("run_regression.py"))
runner = importlib.util.module_from_spec(spec)
spec.loader.exec_module(runner)


def test_skipped_real_family_is_rejected():
    assert runner.real_family_error({"real_family_included": False, "vectors": []})


def test_true_flag_cannot_hide_missing_vectors():
    assert runner.real_family_error({"real_family_included": True, "vectors": []})


def test_complete_family_passes_manifest_gate():
    manifest = {"real_family_included": True, "vectors": [
        {"name": name} for name in ("real_lena32", "real_neu32", "real_pcb32")]}
    assert runner.real_family_error(manifest) is None
