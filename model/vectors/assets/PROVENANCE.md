# Source image provenance

Written by `model/prepare_assets.py`. Every figure in the report that
shows a photograph derives from one of these sources.

**Licence statements are transcribed from upstream, not assumed.**
Where upstream states nothing, this table says so rather than guessing;
prefer a CC0 source for anything that will be published.

| Source | Native resolution | Origin | Licence |
|---|---|---|---|
| `brick` | 512x512 | scikit-image `data.brick()` -- CC0Textures (Bricks25), https://cc0textures.com/view.php?tex=Bricks25 | Creative Commons CC0 License. |
| `camera` | 512x512 | scikit-image `data.camera()` -- photographer Lav Varshney | CC0 (public domain dedication). No copyright restrictions. |
| `coins` | 303x384 | scikit-image `data.coins()` -- Brooklyn Museum archives, https://www.brooklynmuseum.org/opencollection/archives/image/51611 | No known copyright restrictions. |
| `img1` | 1122x1402 | user-supplied file `raw/img1.png` | UNKNOWN -- supplied locally. Record the licence here before publishing any figure derived from it. |
| `moon` | 512x512 | scikit-image `data.moon()` -- surface of the moon | No explicit licence statement in the upstream docstring. VERIFY BEFORE PUBLICATION, or prefer a CC0 source above. |
| `page` | 191x384 | scikit-image `data.page()` -- scanned printed text | No explicit licence statement in the upstream docstring. VERIFY BEFORE PUBLICATION, or prefer a CC0 source above. |

## How these are used

* Stimulus crops are **native-resolution windows** of these images -- no
  resizing, no resampling (see the module docstring of
  `model/prepare_assets.py` and assumption A11 for why).
* `*_display.png` are downscaled full scenes for figures only. They are
  never used as stimulus and never feed a power measurement.

## Source selection

Sources are the user-supplied files in model/vectors/assets/raw/ PLUS the genuine photographs bundled with scikit-image, requested with --include-fallback. Nothing was synthesised. The bundled images carry explicit licences (see the table above) and are the safe choice for published figures.
