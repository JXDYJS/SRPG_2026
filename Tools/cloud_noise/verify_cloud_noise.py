#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
CloudNoise_128_128_128.bin 验证脚本
===================================
验证 iterationRP Alpha 0.8.22 光影包的 CloudNoise3D bin 文件格式解读：
  128 x 128 x 128, RGBA8, 无文件头, 8,388,608 字节。

产出:
  - 控制台统计 (尺寸 / 通道均值 / 值域)
  - 三个切片的 PNG 预览 (z = 32, 64, 96)，肉眼确认是平滑低频噪声
  - 若干已知坐标的原始字节 (R,G,B,A)，供 Unity 侧交叉对账

用法:
  python verify_cloud_noise.py <bin路径> <输出目录>
"""
import sys
import os

import numpy as np
from PIL import Image

SIZE = 128


def main():
    if len(sys.argv) < 3:
        print("用法: python verify_cloud_noise.py <bin路径> <输出目录>")
        sys.exit(1)

    bin_path = sys.argv[1]
    out_dir = sys.argv[2]
    os.makedirs(out_dir, exist_ok=True)

    raw = np.fromfile(bin_path, dtype=np.uint8)
    expected = SIZE * SIZE * SIZE * 4
    print(f"文件: {bin_path}")
    print(f"实际字节数: {raw.size}  期望: {expected}  {'OK' if raw.size == expected else '!!! MISMATCH !!!'}")

    if raw.size != expected:
        sys.exit(1)

    # 组织成 [z][y][x][rgba]
    vol = raw.reshape(SIZE, SIZE, SIZE, 4)

    # 统计
    print(f"通道均值: R={vol[...,0].mean():.1f}  G={vol[...,1].mean():.1f}  "
          f"B={vol[...,2].mean():.1f}  A={vol[...,3].mean():.1f}")
    print(f"全局值域: min={raw.min()}  max={raw.max()}")

    # 切片预览 (放大到 256 便于观察)
    for z in (32, 64, 96):
        slice_rgb = vol[z, :, :, :3]
        img = Image.fromarray(slice_rgb, "RGB")
        img = img.resize((256, 256), Image.NEAREST)
        out_path = os.path.join(out_dir, f"slice_z{z:03d}.png")
        img.save(out_path)
        print(f"切片 z={z} -> {out_path}")

    # 已知坐标采样 (供 Unity 交叉对账)
    print("\n交叉对账采样 (z, y, x, R,G,B,A):")
    samples = [(0, 0, 0), (64, 0, 0), (127, 0, 0), (64, 64, 64), (32, 16, 32)]
    for z, y, x in samples:
        r, g, b, a = vol[z, y, x]
        print(f"  z={z} y={y} x={x} -> R={r} G={g} B={b} A={a}")

    print("\n完成。若切片图是平滑的云雾状噪声且值域合理，格式解读正确。")


if __name__ == "__main__":
    main()
