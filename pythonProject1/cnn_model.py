import numpy as np

def conv2d(image_u8, kernel_i8, stride=1):
    """
    image_u8  : (H, W)   dtype uint8   -- 8-bit unsigned input
    kernel_i8 : (kh, kw) dtype int8    -- 8-bit signed kernel
    returns   : (out_h, out_w) dtype int16 -- 16-bit signed output, ReLU applied
    """
    H, W = image_u8.shape
    kh, kw = kernel_i8.shape
    out_h = (H - kh) // stride + 1
    out_w = (W - kw) // stride + 1

    img = image_u8.astype(np.int32)
    k = kernel_i8.astype(np.int32)
    out = np.zeros((out_h, out_w), dtype=np.int32)

    for i in range(out_h):
        for j in range(out_w):
            y, x = i * stride, j * stride
            patch = img[y:y + kh, x:x + kw]
            out[i, j] = np.sum(patch * k)

    out = np.clip(out, -32768, 32767)      # saturate to int16 range
    out = np.maximum(out, 0)               # ReLU
    return out.astype(np.int16)


if __name__ == "__main__":
    rng = np.random.default_rng(40)

    image = rng.integers(0, 256, size=(32, 32), dtype=np.uint8)
    kernel = rng.integers(-128, 128, size=(3, 3), dtype=np.int8)

    output = conv2d(image, kernel, stride=1)

    print("input  dtype:", image.dtype, " shape:", image.shape)
    print("kernel dtype:", kernel.dtype, " shape:", kernel.shape)
    print("output dtype:", output.dtype, " shape:", output.shape)
    print("output range: [%d, %d]" % (output.min(), output.max()))

    # write plain-text files: one value per line, row-major order
    np.savetxt("input.txt", image.flatten(), fmt="%d")
    np.savetxt("kernel.txt", kernel.flatten(), fmt="%d")
    np.savetxt("output.txt", output.flatten(), fmt="%d")
    print("\nWrote input.txt, kernel.txt, output.txt")