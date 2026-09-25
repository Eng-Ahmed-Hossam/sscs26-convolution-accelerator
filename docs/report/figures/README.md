# Real-image demo figures

Rendered by `model/demo_real_images.py` from **hardware outputs**
(`tb/results/<vector>/hw_out_*.txt`), not from the golden model.

Every map below was verified **bit-exact against the golden model**
before any display transform was applied. Normalisation is presentation
only and is never a pass criterion -- the script refuses to draw a
figure for a vector that does not match.

Display normalisation (integer, per map):

* signed maps: `d = 128 + (v * 127) // max|v|` (0 -> mid-grey)
* magnitude:   `d = (v * 255) // max(v)`

## `demo_real_brick_centre32_edge.png`

* source photograph: `brick`, native crop [240, 240] of [512, 512], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 260, Gy 221, |Gx|+|Gy| 272, Gx-ReLU 224
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_brick_centre64_edge.png`

* source photograph: `brick`, native crop [224, 224] of [512, 512], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 265, Gy 241, |Gx|+|Gy| 304, Gx-ReLU 224
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_brick_detail32_edge.png`

* source photograph: `brick`, native crop [268, 105] of [512, 512], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 290, Gy 301, |Gx|+|Gy| 378, Gx-ReLU 288
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_brick_detail64_edge.png`

* source photograph: `brick`, native crop [127, 94] of [512, 512], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 381, Gy 304, |Gx|+|Gy| 424, Gx-ReLU 333
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_camera_centre32_edge.png`

* source photograph: `camera`, native crop [240, 240] of [512, 512], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 555, Gy 441, |Gx|+|Gy| 858, Gx-ReLU 483
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_camera_centre64_edge.png`

* source photograph: `camera`, native crop [224, 224] of [512, 512], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 726, Gy 575, |Gx|+|Gy| 1116, Gx-ReLU 726
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_camera_detail32_edge.png`

* source photograph: `camera`, native crop [345, 268] of [512, 512], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 719, Gy 784, |Gx|+|Gy| 924, Gx-ReLU 719
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_camera_detail64_edge.png`

* source photograph: `camera`, native crop [329, 270] of [512, 512], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 827, Gy 784, |Gx|+|Gy| 1052, Gx-ReLU 827
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_coins_centre32_edge.png`

* source photograph: `coins`, native crop [135, 176] of [303, 384], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 416, Gy 775, |Gx|+|Gy| 1026, Gx-ReLU 174
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_coins_centre64_edge.png`

* source photograph: `coins`, native crop [119, 160] of [303, 384], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 698, Gy 786, |Gx|+|Gy| 1120, Gx-ReLU 698
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_coins_detail32_edge.png`

* source photograph: `coins`, native crop [172, 250] of [303, 384], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 702, Gy 796, |Gx|+|Gy| 1114, Gx-ReLU 596
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_coins_detail64_edge.png`

* source photograph: `coins`, native crop [14, 302] of [303, 384], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 701, Gy 751, |Gx|+|Gy| 1046, Gx-ReLU 701
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_img1_centre32_edge.png`

* source photograph: `img1`, native crop [545, 685] of [1122, 1402], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 396, Gy 664, |Gx|+|Gy| 774, Gx-ReLU 372
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_img1_centre64_edge.png`

* source photograph: `img1`, native crop [529, 669] of [1122, 1402], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 495, Gy 664, |Gx|+|Gy| 858, Gx-ReLU 495
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_img1_detail32_edge.png`

* source photograph: `img1`, native crop [434, 1069] of [1122, 1402], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 800, Gy 667, |Gx|+|Gy| 1050, Gx-ReLU 800
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_img1_detail64_edge.png`

* source photograph: `img1`, native crop [431, 1318] of [1122, 1402], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 610, Gy 787, |Gx|+|Gy| 966, Gx-ReLU 610
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_moon_centre64_edge.png`

* source photograph: `moon`, native crop [224, 224] of [512, 512], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 198, Gy 140, |Gx|+|Gy| 292, Gx-ReLU 198
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_moon_detail32_edge.png`

* source photograph: `moon`, native crop [433, 245] of [512, 512], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 277, Gy 174, |Gx|+|Gy| 372, Gx-ReLU 277
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_moon_detail64_edge.png`

* source photograph: `moon`, native crop [413, 225] of [512, 512], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 300, Gy 184, |Gx|+|Gy| 404, Gx-ReLU 277
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_page_centre32_edge.png`

* source photograph: `page`, native crop [79, 176] of [191, 384], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 739, Gy 734, |Gx|+|Gy| 950, Gx-ReLU 719
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_page_centre64_edge.png`

* source photograph: `page`, native crop [63, 160] of [191, 384], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 790, Gy 734, |Gx|+|Gy| 1048, Gx-ReLU 732
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_page_detail32_edge.png`

* source photograph: `page`, native crop [87, 263] of [191, 384], no resizing
* 30x30 output maps, W=32, shift=0
* display peaks (raw units): Gx 795, Gy 797, |Gx|+|Gy| 1150, Gx-ReLU 771
* identity bank verified equal to the input interior, pixel for pixel

## `demo_real_page_detail64_edge.png`

* source photograph: `page`, native crop [54, 252] of [191, 384], no resizing
* 62x62 output maps, W=64, shift=0
* display peaks (raw units): Gx 816, Gy 797, |Gx|+|Gy| 1150, Gx-ReLU 809
* identity bank verified equal to the input interior, pixel for pixel
