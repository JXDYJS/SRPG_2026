#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Minecraft WorldEdit .schem to Unity MapDataSO converter
Converts NBT .schem file to Unity ScriptableObject .asset YAML format
"""

import os
import json
import argparse
import gzip
from nbt.nbt import NBTFile, TAG_Compound, TAG_List, TAG_Int_Array, TAG_Byte_Array

# Default paths (can be changed via command line arguments)
DEFAULT_SCHEM_PATH = "Assets/Map/input.schem"
DEFAULT_MAPPING_PATH = "Assets/Map/mapping.json"
DEFAULT_OUTPUT_PATH = "Assets/Map/GeneratedMapData.asset"

# Unity YAML template header
YAML_HEADER = """%YAML 1.1
%TAG !u! tag:unity3d.com,2011:
--- !u!114 &11400000
MonoBehaviour:
  m_ObjectHideFlags: 0
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 11500000, guid: 601d436ca52ab57408a36973df82a699, type: 3}
  m_Name: GeneratedMap
  m_EditorClassIdentifier: 
  blocks:
"""

# YAML block template
YAML_BLOCK_TEMPLATE = """  - position: {{x: {x}, y: {y}, z: {z}}}
    prefabId: {prefab_id}
    blockConfigId: 
    rotationIndex: 0
    XRound: {x_round}
    ZRound: 0
    YRound: 0
"""

# YAML footer
YAML_FOOTER = """  editorPreviewId: 0
"""


def load_mapping(mapping_path):
    """
    Load block ID mapping from JSON file
    Returns: Dictionary { "minecraft:block_id": prefabId_int }
    """
    if not os.path.exists(mapping_path):
        raise FileNotFoundError(f"Mapping file not found: {mapping_path}")
    
    with open(mapping_path, 'r', encoding='utf-8') as f:
        mapping = json.load(f)
    
    # Validate mapping format
    for block_name, prefab_id in mapping.items():
        if not isinstance(prefab_id, int):
            raise ValueError(f"Invalid prefabId for {block_name}: must be integer")
    
    return mapping


def read_schem_file(schem_path):
    """
    Read and parse .schem NBT file
    Returns: (width, height, length, palette, block_data)
    """
    if not os.path.exists(schem_path):
        raise FileNotFoundError(f"Schematic file not found: {schem_path}")
    
    # 【修改1】抛弃手动 gzip 解压，直接依赖 nbt 库原生的智能加载（与 V2 测试版一致）
    nbt_file = NBTFile(schem_path)
    
    # Extract dimensions
    width = nbt_file.get('Width').value
    height = nbt_file.get('Height').value
    length = nbt_file.get('Length').value
    
    # 【修改2】正确读取 Sponge Schematic V2/V3 格式的 Palette
    # Palette 可能是 TAG_List 或 TAG_Compound
    index_to_name = {}
    palette = nbt_file.get('Palette')
    
    if palette is None:
        raise ValueError("Palette not found in schematic file")
    
    print(f"DEBUG: Palette type = {type(palette).__name__}")
    
    # 场景1: Palette 是 TAG_List（标准 Sponge Schematic 格式）
    # 每个元素是 TAG_Compound，包含 "Name" 等字段
    if isinstance(palette, TAG_List):
        print(f"DEBUG: Palette is TAG_List with {len(palette.tags)} entries")
        for palette_index, tag in enumerate(palette.tags):
            if isinstance(tag, TAG_Compound):
                for sub_tag in tag.tags:
                    if sub_tag.name == "Name":
                        index_to_name[palette_index] = sub_tag.value
                        print(f"DEBUG: [{palette_index}] -> {sub_tag.value}")
                        break
            elif tag.name == "Name" and hasattr(tag, 'value'):
                index_to_name[palette_index] = tag.value
                print(f"DEBUG: [{palette_index}] -> {tag.value}")
    
    # 场景2: Palette 是 TAG_Compound（某些 WorldEdit 版本或变体）
    elif isinstance(palette, TAG_Compound):
        print(f"DEBUG: Palette is TAG_Compound with {len(palette.tags)} entries")
        
        for tag in palette.tags:
            print(f"DEBUG: Entry: type={type(tag).__name__}, name='{tag.name}'")
            
            # 特殊格式：TAG_List，tag.name是palette index，tag.value包含block name的TAG_Compound
            if isinstance(tag, TAG_List) and hasattr(tag, 'value'):
                # tag.name is palette index ("0", "1", "2"...), tag.value is TAG_Compound with "Name" sub-tag
                try:
                    palette_index = int(tag.name)
                except (ValueError, TypeError):
                    # Fallback to enumeration if conversion fails
                    palette_index = len(index_to_name)
                
                # tag.value is TAG_Compound, need to extract "Name" from its sub-tags
                block_name_compound = tag.value
                if isinstance(block_name_compound, TAG_Compound):
                    if hasattr(block_name_compound, 'tags'):
                        for sub_tag in block_name_compound.tags:
                            if sub_tag.name == "Name":
                                index_to_name[palette_index] = sub_tag.value
                                print(f"DEBUG:   >>> MAPPED [{palette_index}] -> {sub_tag.value}")
                                break
                elif hasattr(block_name_compound, 'get'):
                    name_tag = block_name_compound.get('Name')
                    if (name_tag):
                        val = name_tag.value if hasattr(name_tag, 'value') else name_tag
                        index_to_name[palette_index] = val
                        print(f"DEBUG:   >>> MAPPED [{palette_index}] -> {val}")
            
            # 特殊格式：tag.name 直接是 Minecraft 方块名称（如 "minecraft:air"）
            elif isinstance(tag.name, str) and (tag.name.startswith('minecraft:') or ':' in tag.name):
                # tag.name 是方块名称，tag.value 是实际像素索引
                if hasattr(tag, 'value'):
                    palette_index = tag.value
                else:
                    palette_index = len(index_to_name)
                index_to_name[palette_index] = tag.name
                print(f"DEBUG:   >>> MAPPED [{palette_index}] -> {tag.name}")
            
            # 如果标签本身是 TAG_Compound，在其中查找 Name
            elif isinstance(tag, TAG_Compound):
                palette_index = len(index_to_name)
                if hasattr(tag, 'tags'):
                    for sub_tag in tag.tags:
                        if sub_tag.name == "Name":
                            index_to_name[palette_index] = sub_tag.value
                            print(f"DEBUG:   >>> MAPPED [{palette_index}] -> {sub_tag.value}")
                            break
                elif hasattr(tag, 'get'):
                    name_tag = tag.get('Name')
                    if name_tag:
                        val = name_tag.value if hasattr(name_tag, 'value') else name_tag
                        index_to_name[palette_index] = val
                        print(f"DEBUG:   >>> MAPPED [{palette_index}] -> {val}")
            
            # 如果标签的 value 包含 Name 信息（某些简化格式）
            elif hasattr(tag, 'value'):
                palette_index = len(index_to_name)
                val = tag.value
                if isinstance(val, TAG_Compound):
                    for sub_tag in val.tags:
                        if sub_tag.name == "Name":
                            index_to_name[palette_index] = sub_tag.value
                            print(f"DEBUG:   >>> MAPPED [{palette_index}] -> {sub_tag.value}")
                            break
    else:
        raise ValueError(f"Unsupported palette type: {type(palette).__name__}")
    
    print(f"DEBUG: Final palette mapping has {len(index_to_name)} entries")
    for idx, name in sorted(index_to_name.items()):
        print(f"DEBUG:   {idx}: {name}")
    
    if not index_to_name:
        raise ValueError(f"Palette is empty or cannot be parsed")
            
    # Extract block data (varint encoded palette indices)
    raw_block_data = nbt_file.get('BlockData').value
    
    print(f"DEBUG: BlockData bytes: {len(raw_block_data)} (expected: {width * height * length} blocks)")
    if len(raw_block_data) <= 100:
        print(f"DEBUG: BlockData (first 100 bytes): {list(raw_block_data[:100])}")
    
    # Decode varint array to get palette indices
    decoded_block_data = []
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
        decoded_block_data.append(value)
    
    print(f"DEBUG: Decoded {len(decoded_block_data)} palette indices")
    if len(decoded_block_data) <= 50:
        print(f"DEBUG: First 50 indices: {decoded_block_data[:50]}")
    
    # Check for palette indices that have no block name mapping
    max_palette_idx = len(index_to_name) - 1 if index_to_name else 0
    unmapped_indices = [i for i in decoded_block_data if i not in index_to_name]
    if unmapped_indices:
        print(f"DEBUG: Found {len(unmapped_indices)} indices not in palette (first 10): {unmapped_indices[:10]}")
    
    return width, height, length, index_to_name, decoded_block_data


def convert_schem_to_unity(schem_path, mapping_path, output_path):
    """
    Main conversion function
    """
    # Check output directory exists
    output_dir = os.path.dirname(output_path)
    if output_dir and not os.path.exists(output_dir):
        os.makedirs(output_dir, exist_ok=True)
    
    # Load mapping
    print(f"Loading mapping from: {mapping_path}")
    block_mapping = load_mapping(mapping_path)
    
    # Read schem file
    print(f"Reading schematic from: {schem_path}")
    width, height, length, index_to_name, block_data = read_schem_file(schem_path)
    
    print(f"Schematic dimensions: {width} x {height} x {length}")
    print(f"Total blocks: {len(block_data)}")
    print(f"Palette size: {len(index_to_name)}")
    
    # Build final mapping: schem_index -> prefab_id
    # Skip air and blocks not in mapping
    index_to_prefab = {}
    skipped_air = 0
    skipped_missing = 0
    
    # DEBUG: Show what we're working with
    print(f"DEBUG: Using block_data (decoded palette indices): length={len(block_data)}")
    print(f"DEBUG: index_to_name (palette index -> block name): {len(index_to_name)} entries")
    
    for schem_index, block_name in index_to_name.items():
        # Skip air blocks
        if block_name == "minecraft:air" or block_name == "air":
            skipped_air += 1
            continue
        
        # Normalize block name: remove state properties (anything in square brackets)
        # 例如: "minecraft:grass_block[nowy=false]" -> "minecraft:grass_block"
        normalized_name = block_name
        if '[' in block_name:
            normalized_name = block_name.split('[')[0]
        
        # Look up in mapping (try normalized name first, then original)
        if normalized_name in block_mapping:
            index_to_prefab[schem_index] = block_mapping[normalized_name]
            if normalized_name != block_name:
                print(f"DEBUG:   [{schem_index}] Normalized '{block_name}' -> '{normalized_name}' -> prefabId={block_mapping[normalized_name]}")
        elif block_name in block_mapping:
            index_to_prefab[schem_index] = block_mapping[block_name]
        else:
            skipped_missing += 1
            print(f"DEBUG:   [{schem_index}] '{normalized_name}' not in mapping (skipped)")
            if normalized_name != block_name:
                print(f"DEBUG:   [{schem_index}] Original '{block_name}' also not in mapping")
    
    print(f"Mapping complete: {len(index_to_prefab)} blocks mapped")
    if skipped_air > 0:
        print(f"Skipped {skipped_air} air blocks")
    if skipped_missing > 0:
        print(f"Skipped {skipped_missing} blocks not in mapping")
    
    # Generate YAML
    print(f"Generating Unity asset to: {output_path}")
    
    with open(output_path, 'w', encoding='utf-8') as out_file:
        # Write header
        out_file.write(YAML_HEADER)
        
        # Iterate all blocks
        generated_blocks = 0
        for z in range(length):
            for y in range(height):
                for x in range(width):
                    # Calculate 1D index from 3D coordinates
                    # Sponge Schematic V2 index = z * width + y * length * width + x
                    index = z * width + y * length * width + x
                    
                    if index >= len(block_data):
                        continue
                    
                    schem_index = block_data[index]
                    
                    # Check if this block should be included
                    if schem_index not in index_to_prefab:
                        continue
                    
                    prefab_id = index_to_prefab[schem_index]
                    
                    # 根据方块类型计算旋转值
                    block_name = index_to_name.get(schem_index, "")
                    x_round = -90 if "cobblestone_slab" in block_name else 0
                    
                    # Write block entry
                    block_line = YAML_BLOCK_TEMPLATE.format(
                        x=x, y=y, z=z,
                        prefab_id=prefab_id,
                        x_round=x_round
                    )
                    out_file.write(block_line)
                    generated_blocks += 1
        
        # Write footer
        out_file.write(YAML_FOOTER)
    
    print(f"\nConversion complete!")
    print(f"Generated {generated_blocks} blocks in output file")
    print(f"Output saved to: {output_path}")
    
    return generated_blocks


def main():
    """
    Main entry point with argument parsing
    """
    parser = argparse.ArgumentParser(
        description='Convert Minecraft WorldEdit .schem to Unity MapDataSO.asset'
    )
    parser.add_argument(
        '-s', '--schem',
        default=DEFAULT_SCHEM_PATH,
        help=f'Path to input .schem file (default: {DEFAULT_SCHEM_PATH})'
    )
    parser.add_argument(
        '-m', '--mapping',
        default=DEFAULT_MAPPING_PATH,
        help=f'Path to mapping.json file (default: {DEFAULT_MAPPING_PATH})'
    )
    parser.add_argument(
        '-o', '--output',
        default=DEFAULT_OUTPUT_PATH,
        help=f'Path to output .asset file (default: {DEFAULT_OUTPUT_PATH})'
    )
    
    args = parser.parse_args()
    
    try:
        convert_schem_to_unity(args.schem, args.mapping, args.output)
    except Exception as e:
        print(f"Error: {e}")
        exit(1)


if __name__ == "__main__":
    main()
