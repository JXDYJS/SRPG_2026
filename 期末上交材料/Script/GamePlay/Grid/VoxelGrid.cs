using UnityEngine;

namespace Grid
{
    public class VoxelGrid
    {
        public readonly int Width;
        public readonly int Height;
        public readonly int Depth;

        private readonly byte[] _voxels; 
        // 0 = 空气, 1 = 实体墙, 2 = 半砖
        public VoxelGrid(int width, int height, int depth)
        {
            Width = width;
            Height = height;
            Depth = depth;
            _voxels = new byte[width * height * depth];
        }

        private int GetIndex(int x, int y, int z)
        {
            return x + (y * Width) + (z * Width * Height);
        }

        public bool IsInBounds(int x, int y, int z)
        {
            return x >= 0 && x < Width && y >= 0 && y < Height && z >= 0 && z < Depth;
        }

        public byte GetBlock(int x, int y, int z)
        {
            if (!IsInBounds(x, y, z)) 
            {
                return 1;
            }
            return _voxels[GetIndex(x, y, z)];
        }

        public void SetBlock(int x, int y, int z, byte blockType)
        {
            if (IsInBounds(x, y, z))
            {
                _voxels[GetIndex(x, y, z)] = blockType;
            }
        }
    }
}