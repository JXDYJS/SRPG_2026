using System;
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
    /// leave the chunk bounds or reach the slab top (0.5 height, _WaterLevel)
    /// hit water, expressed as a shader uniform instead of data.
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

        /// <summary>Linear index identical to Grid.VoxelGrid.GetIndex layout.</summary>
        public static int ToIndex(int x, int y, int z)
        {
            return x + y * ChunkWidth + z * ChunkWidth * ChunkHeight;
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
        /// shader can stop at the slab top (= water level 0.5) without knowing
        /// the block's YCellSize table.
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