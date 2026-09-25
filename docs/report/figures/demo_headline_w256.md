# Headline demo figure - `demo_headline_w256.png`

**Every edge map in this figure is the RTL simulation output**, read
back from `tb/results/real_fullscene256_edge/hw_out_*.txt`. It is not the
golden model's output. The model's role here was to be the reference
the RTL was checked against: all 193548 output pixels across the
three banks matched bit-exactly before this image was drawn.

* source photograph `img1`, native 1122x1402
* 256x256 crop at origin [345, 1144], **no resizing**
* 254x254 = 64516 outputs per bank, shift=0
* display peaks (raw 16-bit units): Gx 665, Gy 787, magnitude 1030

Display normalisation (integer, per map) is applied only AFTER the
bit-exact comparison passed; it is presentation and never a pass
criterion. See `model/demo_real_images.py`.

The simulation trace is archived at `tb/results/waves/fullscene256.wlf`
and is the switching-activity source for the Phase 6 SAIF power flow
(docs/06 s4).
