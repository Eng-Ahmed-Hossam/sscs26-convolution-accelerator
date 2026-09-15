"""Read-only Python bridge to ``rtl/pkg_params.sv``.

This module is the ONLY path by which Python code learns a design constant.
It parses the SystemVerilog package directly and carries **no fallback
numbers**: if the file is missing, unparsable, or a requested constant is
absent, it raises. That is deliberate -- a fallback default is exactly how a
Python mirror silently drifts out of step with the RTL
(``docs/07_work_packages.md``, "Foundation -- parameter source";
``CONTRIBUTING.md`` rule 2).

Usage
-----
    from pkg_params import PARAMS
    PARAMS["N"], PARAMS["ACC_W"], PARAMS.N, PARAMS.ACC_W     # both work

The parser understands the subset of SystemVerilog constant expressions used by
``pkg_params.sv``: integer literals, previously-defined ``localparam``
identifiers, ``+ - * / %``, ``<< >>``, parentheses, and ``$clog2()``.  Anything
else raises :class:`ParamParseError` rather than being guessed at.
"""

from __future__ import annotations

import re
from pathlib import Path
from typing import Dict, Iterator

__all__ = ["PARAMS", "Params", "ParamParseError", "load_params", "PKG_PARAMS_SV"]

#: Location of the authoritative package, resolved relative to this file so the
#: bridge works from any working directory.
# NOTE: joinpath() rather than the "/" operator so that golden_conv.py --self-audit
# can ban the division operator outright, with no path-join carve-out that a real
# numeric division could later hide behind.
PKG_PARAMS_SV = Path(__file__).resolve().parent.parent.joinpath("rtl", "pkg_params.sv")


class ParamParseError(RuntimeError):
    """Raised when ``pkg_params.sv`` cannot be parsed into exact integers."""


def _clog2(value: int) -> int:
    """SystemVerilog ``$clog2``: ceil(log2(value)), with ``$clog2(0) == 0``.

    IEEE 1800 defines the result as the number of bits needed to address
    ``value`` items, i.e. ``$clog2(4) == 2`` and ``$clog2(9) == 4``.
    """
    if not isinstance(value, int) or isinstance(value, bool):
        raise ParamParseError(f"$clog2 expects an int, got {value!r}")
    if value < 0:
        raise ParamParseError(f"$clog2 of negative value {value}")
    return (value - 1).bit_length() if value > 0 else 0


# localparam int NAME = EXPR;   (the only declaration form this package uses)
_LOCALPARAM_RE = re.compile(
    r"^\s*localparam\s+int\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*(?P<expr>[^;]+);"
)
# Characters legal in a constant expression once $clog2 has been rewritten.
_EXPR_TOKEN_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_]*|\d+|<<|>>|[-+*/%()]|\s+")


def _strip_comments(text: str) -> str:
    """Remove ``//`` and ``/* */`` comments without disturbing line structure."""
    text = re.sub(r"/\*.*?\*/", " ", text, flags=re.DOTALL)
    return re.sub(r"//[^\n]*", "", text)


def _iter_localparams(text: str) -> Iterator[tuple[str, str]]:
    for line in text.splitlines():
        match = _LOCALPARAM_RE.match(line)
        if match:
            yield match.group("name"), match.group("expr").strip()


def _to_python(expr: str, known: Dict[str, int]) -> str:
    """Translate a SystemVerilog constant expression to a Python expression.

    Validates every token against an allowlist first, so ``eval`` below can only
    ever see arithmetic over integers and names already parsed from the package.
    """
    py = expr.replace("$clog2", "_clog2")
    consumed = "".join(_EXPR_TOKEN_RE.findall(py))
    if consumed != py:
        raise ParamParseError(f"unsupported token in constant expression: {expr!r}")
    for name in re.findall(r"[A-Za-z_][A-Za-z0-9_]*", py):
        if name != "_clog2" and name not in known:
            raise ParamParseError(
                f"expression {expr!r} references unknown constant {name!r} "
                "(constants must be defined before use in pkg_params.sv)"
            )
    return py


class Params(Dict[str, int]):
    """Immutable-by-convention mapping of package constant name -> int value."""

    def __getattr__(self, name: str) -> int:
        try:
            return self[name]
        except KeyError:
            raise AttributeError(
                f"{name!r} is not defined in {PKG_PARAMS_SV.name}; "
                "add it there rather than defaulting it in Python"
            ) from None

    def require(self, *names: str) -> tuple[int, ...]:
        """Fetch several constants, naming every one that is missing."""
        missing = [n for n in names if n not in self]
        if missing:
            raise ParamParseError(
                f"{PKG_PARAMS_SV.name} is missing required constant(s): "
                + ", ".join(missing)
            )
        return tuple(self[n] for n in names)


def load_params(path: Path | str = PKG_PARAMS_SV) -> Params:
    """Parse ``pkg_params.sv`` and return every ``localparam int`` it defines."""
    path = Path(path)
    if not path.is_file():
        raise ParamParseError(
            f"cannot find the parameter source {path}. There is no fallback: "
            "the RTL package is the single source of truth."
        )
    text = _strip_comments(path.read_text(encoding="utf-8"))

    values: Params = Params()
    for name, expr in _iter_localparams(text):
        py = _to_python(expr, values)
        try:
            result = eval(py, {"__builtins__": {}, "_clog2": _clog2}, dict(values))
        except ParamParseError:
            raise
        except Exception as exc:  # pragma: no cover - malformed source
            raise ParamParseError(f"cannot evaluate {name} = {expr!r}: {exc}") from exc
        if not isinstance(result, int) or isinstance(result, bool):
            raise ParamParseError(
                f"{name} = {expr!r} evaluated to non-integer {result!r}; "
                "the design is integer-only (docs/03_fixed_point.md s5)"
            )
        values[name] = result

    if not values:
        raise ParamParseError(f"no `localparam int` declarations found in {path}")
    return values


#: Parsed once at import; every consumer shares this mapping.
PARAMS: Params = load_params()


if __name__ == "__main__":  # pragma: no cover - human-facing dump
    width = max(len(k) for k in PARAMS)
    print(f"# constants parsed from {PKG_PARAMS_SV}")
    for key, val in PARAMS.items():
        print(f"{key:<{width}} = {val}")
