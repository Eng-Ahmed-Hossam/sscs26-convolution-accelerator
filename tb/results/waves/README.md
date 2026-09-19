# Archived waveform captures

Produced by `python tb/run_regression.py --waves`. Open with
`vsim -view <file>.wlf`. Each trace is a run that also passed its
bit-exactness check, so nothing here is a picture of a broken run.

## `window_first.wlf`

* vector `real_camera_detail32_blur`, relu_en=0, bubbles=0
* shows: serpentine window filling, then the first qualified output at T_first = (N-1)*W + N + P_PIPE

## `bank_swap.wlf`

* vector `real_camera_detail32_edge`, relu_en=0, bubbles=0
* shows: FLUSH->RUN bank swap: bank_sel increments and out_bank follows the aligned metadata, 0 -> 1 -> 2

## `relu_clip.wlf`

* vector `real_camera_detail32_edge`, relu_en=1, bubbles=0
* shows: ReLU clipping negative Sobel responses to zero on a real image

## `saturation.wlf`

* vector `sat_pos`, relu_en=0, bubbles=0
* shows: both saturation rails: acc 291465 clamped to +32767 with sat_flag high (a photograph never reaches the rails -- this needs the synthetic vector)
