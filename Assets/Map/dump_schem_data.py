#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
调试脚本：直接输出 .schem 文件中每个位置的像素ID和方块名称
不依赖任何 mapping.json 或 Unity 转换逻辑
"""

from nbt.nbt import NBTFile, TAG_Compound, TAG_List, TAG_String

schem_path = "map01.schem"

print(f"读取 {schem_path}...")
nbt_file = NBTFile(schem_path)

width = nbt_file.get('Width').value
height = nbt_file.get('Height').value
length = nbt_file.get('Length').value

print(f"\n地图尺寸: {width} x {height} x {length} (宽 x 高 x 深)")
print(f"总方块数: {width * height * length}")

# 读取调色板
index_to_name = {}
palette = nbt_file.get('Palette')
print(f"\n=== 调色板 ===")
print(f"调色板类型: {type(palette).__name__}")

if isinstance(palette, TAG_Compound):
    for tag in palette.tags:
        if tag.name.startswith('minecraft:') or ':' in tag.name:
            # tag.name 直接是方块名称（minecraft:xxx）
            # tag.value 是像素索引
            if hasattr(tag, 'value'):
                index_to_name[tag.value] = tag.name
                print(f"  索引 {tag.value}: {tag.name}")
        elif isinstance(tag, TAG_List) and hasattr(tag, 'value'):
            # tag.name 是索引，tag.value 是包含 Name 的 TAG_Compound
            try:
                palette_index = int(tag.name)
                block_name_compound = tag.value
                if isinstance(block_name_compound, TAG_Compound):
                    for sub_tag in block_name_compound.tags:
                        if sub_tag.name == "Name":
                            index_to_name[palette_index] = sub_tag.value
                            print(f"  索引 {palette_index}: {sub_tag.value}")
                            break
            except (ValueError, TypeError):
                pass

# 读取并解码 BlockData（varint）
raw_block_data = nbt_file.get('BlockData').value

decoded_indices = []
pos = 0
while pos < len(raw_block_data):
    value = 0
    shift = 0
    while True:
        if pos >= len(raw_block_data):
            break
        byte = raw_block_data[pos] & 0xFF
        pos += 1
        value = value | ((byte & 0x7F) << shift)
        if (byte & 0x80) == 0:
            break
        shift += 7
    decoded_indices.append(value)

print(f"\n=== BlockData ===")
print(f"原始字节数: {len(raw_block_data)}")
print(f"解码后索引数: {len(decoded_indices)}")

# 统计每个索引出现的次数
from collections import Counter
counter = Counter(decoded_indices)
print(f"\n每个像素索引的方块数量:")
for idx in sorted(counter.keys()):
    name = index_to_name.get(idx, f"未定义索引 {idx}")
    count = counter[idx]
    print(f"  索引 {idx} ({name}): {count} 个")

# 逐个位置输出（仅显示非空气方块）
print(f"\n=== 逐位置方块ID（仅非空气）===")
print(f"格式: [x,y,z] -> 像素索引 -> 方块名称")
print(f"{'='*60}")

block_count = 0  # 非空气方块计数
for z in range(length):
    for y in range(height):
        for x in range(width):
            # Sponge Schematic V2 标准公式
            idx = y * width * length + z * width + x
            
            if idx >= len(decoded_indices):
                continue
            
            palette_index = decoded_indices[idx]
            block_name = index_to_name.get(palette_index, f"UNKNOWN_{palette_index}")
            
            # 跳过空气
            if block_name == "minecraft:air" or block_name == "air":
                continue
            
            block_count += 1
            print(f"  [{x:2d},{y:2d},{z:2d}] -> 索引 {palette_index} -> {block_name}")

print(f"\n=== 统计 ===")
print(f"总解码索引数: {len(decoded_indices)}")
print(f"非空气方块数: {block_count}")
print(f"空气方块数: {counter.get(0, 0)} (索引0可能不总是空气，但通常是)")
