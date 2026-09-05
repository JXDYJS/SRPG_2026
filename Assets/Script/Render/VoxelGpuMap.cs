using System;
using System.Collections.Generic;
using GamePlay.Units;
using UnityEngine;
using UnityEngine.Experimental.Rendering;

namespace Render
{
    /// <summary>
    /// GPU byte-voxel map format for the static 8x8x32 battle map.
    ///
    /// Per-voxel byte layout (R8, one byte per 1x1x1 voxel):
    ///   bits 0..5  blockTypeId  — 0 = air; 1..63 = VoxelFaceBaker.VoxelTypeId
    ///              (the value already baked for each BlockType, so the color
    ///              lookup needs no extra table: FaceTiles layer
    ///              = (typeId - 1) * 6 + face, face 0..5 = +Y..-Z).
    ///   bit  6     halfBlock    — 1 = this block occupies 0.5 height (slab/
    ///              stairs bottom cell), 0 = full 1.0 cell.
    ///   bit  7     reserved     — liquid/transparent flag for later.
    ///
    /// Storage order matches the CPU VoxelGrid.GetIndex layout exactly
    /// (x fastest, then height y, then z):  index = x + y*8 + z*8*32.
    /// No Morton/Z-order on the GPU: for a dense 8x8x32 chunk a Texture3D's
    /// native 3D tiling already gives the best cache locality for the
    /// face-neighbour access pattern of a DDA march, and Morton decoding
    /// would only add ALU per sample for zero gain.
    ///
    /// Water is NOT stored in voxels. It is a query-time fallback: rays that
    /// leave the chunk bounds (or pass through an empty column) hit the water
    /// plane at _WaterSurfaceHeight, expressed as a shader uniform instead of
    /// data. Slab tops are solid block faces, not a water surface.
    /// </summary>
    public static class VoxelGpuMap
    {
        public const int ChunkWidth = 8;   // x
        public const int ChunkHeight = 32; // y traversal cap
        public const int ChunkDepth = 8;   // z

        public const byte TypeMask = 0x3F;
        public const byte HalfBlockFlag = 0x40;
        public const byte ReservedFlag = 0x80;

        public const int MaxTypeId = 63;

        /// <summary>GPU volume uploaded for the current map, or null.</summary>
        public static Texture3D Volume { get; private set; }

        /// <summary>Per-column topmost solid height, or null until uploaded.</summary>
        public static Texture2D HeightMap { get; private set; }

        public static bool IsReady => Volume != null;

        /// <summary>Frees the current GPU map (e.g. on map clear).</summary>
        public static void Release()
        {
            if (Volume != null)
            {
                UnityEngine.Object.DestroyImmediate(Volume);
                Volume = null;
            }
            if (HeightMap != null)
            {
                UnityEngine.Object.DestroyImmediate(HeightMap);
                HeightMap = null;
            }
            // Clear the global bindings so shaders stop referencing a dead map.
            Managers.ShaderManager.BindVoxelVolume(null, null);
        }

        /// <summary>Linear index identical to Grid.VoxelGrid.GetIndex layout.</summary>
        public static int ToIndex(int x, int y, int z)
        {
            return x + y * ChunkWidth + z * ChunkWidth * ChunkHeight;
        }

        /// <summary>
        /// Uploads the currently loaded map into the GPU byte-voxel format.
        /// Call right after map loading (MapManager.initVoxel) and before any
        /// map clear. Type ids come from the baked atlas (TypeLayerBase), the
        /// half-block flag from the block's YCellSize — this keeps the exact
        /// block identity needed for FaceTiles color lookup.
        /// </summary>
        public static void UploadFromBlocks(Dictionary<Vector3Int, MapObject> blocks)
        {
            Release();

            if (blocks == null)
            {
                Debug.LogWarning("[VoxelGpuMap] upload skipped: no blocks.");
                return;
            }

            // The atlas bakes in the launch flow; maps loaded outside that
            // flow (e.g. straight into battle) need it baked here. BakeAll is
            // idempotent: it returns immediately when already baked.
            if (VoxelFaceBaker.TypeLayerBase == null && !Application.isPlaying)
            {
                Debug.LogWarning("[VoxelGpuMap] upload skipped: atlas not baked yet and not in play mode.");
                return;
            }
            if (VoxelFaceBaker.TypeLayerBase == null)
            {
                Debug.Log("[VoxelGpuMap] atlas not baked yet, baking now...");
                VoxelFaceBaker.BakeAll();
            }
            if (VoxelFaceBaker.TypeLayerBase == null)
            {
                Debug.LogWarning("[VoxelGpuMap] upload skipped: atlas could not be baked.");
                return;
            }

            var data = new byte[ChunkWidth * ChunkHeight * ChunkDepth]; // zero = air
            int solidCount = 0;
            int skipped = 0;
            foreach (var kvp in blocks)
            {
                Vector3Int p = kvp.Key;
                MapObject mo = kvp.Value;
                if (mo == null)
                {
                    continue;
                }
                if (p.x < 0 || p.x >= ChunkWidth || p.z < 0 || p.z >= ChunkDepth ||
                    p.y < 0 || p.y >= ChunkHeight)
                {
                    skipped++;
                    continue;
                }

                if (string.IsNullOrEmpty(mo.blockConfigId) ||
                    !VoxelFaceBaker.TypeLayerBase.TryGetValue(mo.blockConfigId, out int layerBase))
                {
                    skipped++;
                    continue;
                }

                int typeId = layerBase / 6 + 1; // layerBase = typeIndex*6
                byte b = (byte)(typeId & TypeMask);
                if (mo.YCellSize > 0f && mo.YCellSize < 1f)
                {
                    b |= HalfBlockFlag;
                }
                data[ToIndex(p.x, p.y, p.z)] = b;
                solidCount++;
            }

            Volume = CreateVolumeFromData(data);
            HeightMap = CreateHeightMapFromData(data);
            Debug.Log($"[VoxelGpuMap] uploaded {solidCount} blocks ({skipped} skipped) -> " +
                      $"{ChunkWidth}x{ChunkHeight}x{ChunkDepth} R8 + heightmap");

            // Expose the static map volume + heightmap to all shaders.
            Managers.ShaderManager.BindVoxelVolume(Volume, HeightMap);
        }

        private static Texture3D CreateVolumeFromData(byte[] data)
        {
            var volume = new Texture3D(
                ChunkWidth, ChunkHeight, ChunkDepth,
                GraphicsFormat.R8_UNorm,
                TextureCreationFlags.None)
            {
                name = "VoxelVolume_R8",
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp
            };
            volume.SetPixelData(data, 0);
            volume.Apply(false, true);
            return volume;
        }

        private static Texture2D CreateHeightMapFromData(byte[] data)
        {
            var heights = new byte[ChunkWidth * ChunkDepth];
            for (int z = 0; z < ChunkDepth; z++)
            {
                for (int x = 0; x < ChunkWidth; x++)
                {
                    for (int y = ChunkHeight - 1; y >= 0; y--)
                    {
                        if (data[ToIndex(x, y, z)] != 0)
                        {
                            heights[z * ChunkWidth + x] = (byte)(y + 1);
                            break;
                        }
                    }
                }
            }
            var map = new Texture2D(ChunkWidth, ChunkDepth, GraphicsFormat.R8_UNorm, TextureCreationFlags.None)
            {
                name = "VoxelHeightMap_R8",
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp
            };
            map.SetPixelData(heights, 0);
            map.Apply(false, true);
            return map;
        }

        /// <summary>
        /// Copies a CPU VoxelGrid into the fixed 8x8x32 GPU volume layout.
        /// cpuX/cpuY/cpuZ let a smaller CPU grid (e.g. 6x6x3) be placed inside
        /// the chunk (defaults: centered on x/z, y from 0).
        /// </summary>
        public static Texture3D BuildVolume(
            Grid.VoxelGrid cpu,
            int cpuX = -1, int cpuY = -1, int cpuZ = -1,
            Func<byte, byte> typeRemap = null)
        {
            if (cpu == null)
            {
                throw new ArgumentNullException(nameof(cpu));
            }
            int ox = cpuX >= 0 ? cpuX : (ChunkWidth - cpu.Width) / 2;
            int oy = cpuY >= 0 ? cpuY : 0;
            int oz = cpuZ >= 0 ? cpuZ : (ChunkDepth - cpu.Depth) / 2;

            var data = new byte[ChunkWidth * ChunkHeight * ChunkDepth]; // zero = air
            for (int z = 0; z < cpu.Depth; z++)
            {
                for (int y = 0; y < cpu.Height; y++)
                {
                    for (int x = 0; x < cpu.Width; x++)
                    {
                        byte t = cpu.GetBlock(x, y, z);
                        if (t == 0)
                        {
                            continue;
                        }
                        int cx = ox + x;
                        int cy = oy + y;
                        int cz = oz + z;
                        if (cx < 0 || cx >= ChunkWidth || cy < 0 || cy >= ChunkHeight || cz < 0 || cz >= ChunkDepth)
                        {
                            continue;
                        }
                        byte v = typeRemap != null ? typeRemap(t) : t;
                        data[ToIndex(cx, cy, cz)] = (byte)(v & TypeMask);
                    }
                }
            }

            return CreateVolumeFromData(data);
        }

        /// <summary>
        /// Optional traversal accelerator: 8x8 R8 texture storing the topmost
        /// non-air voxel y of every column (0 = empty column). A ray can jump
        /// straight to that height instead of marching through the air above.
        /// </summary>
        public static Texture2D BuildHeightMap(Grid.VoxelGrid cpu)
        {
            if (cpu == null)
            {
                throw new ArgumentNullException(nameof(cpu));
            }
            var heights = new byte[ChunkWidth * ChunkDepth];
            for (int z = 0; z < cpu.Depth; z++)
            {
                for (int x = 0; x < cpu.Width; x++)
                {
                    for (int y = cpu.Height - 1; y >= 0; y--)
                    {
                        if (cpu.GetBlock(x, y, z) != 0)
                        {
                            heights[z * ChunkWidth + x] = (byte)Mathf.Min(y + 1, 255);
                            break;
                        }
                    }
                }
            }

            var map = new Texture2D(ChunkWidth, ChunkDepth, GraphicsFormat.R8_UNorm, TextureCreationFlags.None)
            {
                name = "VoxelHeightMap_R8",
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp
            };
            map.SetPixelData(heights, 0);
            map.Apply(false, true);
            return map;
        }

        /// <summary>
        /// Pack CPU block values (0=air,1=solid,2=slab) into this format while
        /// stamping the half-block flag for the map's 0.5-height blocks, so a
        /// shader can stop at the slab top (solid +Y face) without knowing the
        /// block's YCellSize table.
        /// </summary>
        public static byte PackCpuValue(byte cpuVal)
        {
            // cpuVal: 0 air/liquid, 1 solid, 2 slab/stairs.
            byte b = (byte)(cpuVal & TypeMask);
            if (cpuVal == 2)
            {
                b |= HalfBlockFlag;
            }
            return b;
        }
    }
}