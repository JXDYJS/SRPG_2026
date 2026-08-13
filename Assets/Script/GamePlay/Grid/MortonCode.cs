using UnityEngine;

namespace GamePlay.Grid
{
    /// <summary>Z-order (Morton) encoder for 3D coordinates, preserving spatial locality.</summary>
    public struct MortonCode
    {
        public readonly int BitsPerDim;
        public readonly int TotalBits;
        public readonly long MaxCode;

        private readonly int _offsetX, _offsetY, _offsetZ;
        private readonly int _maxX, _maxY, _maxZ;
        private readonly int _minX, _minY, _minZ;

        public MortonCode(int maxX, int maxY, int maxZ,
                          int minX = 0, int minY = 0, int minZ = 0)
        {
            _offsetX = minX;
            _offsetY = minY;
            _offsetZ = minZ;
            _minX = minX; _minY = minY; _minZ = minZ;
            _maxX = maxX; _maxY = maxY; _maxZ = maxZ;

            int rangeX = maxX - minX + 1;
            int rangeY = maxY - minY + 1;
            int rangeZ = maxZ - minZ + 1;
            int maxRange = Mathf.Max(rangeX, Mathf.Max(rangeY, rangeZ));

            int bits = 0;
            int v = maxRange - 1;
            while (v > 0)
            {
                bits++;
                v >>= 1;
            }
            BitsPerDim = bits;
            if (BitsPerDim < 1) BitsPerDim = 1;

            TotalBits = BitsPerDim * 3;
            MaxCode = (1L << TotalBits) - 1L;
        }

        public bool Contains(int x, int y, int z)
        {
            return x >= _minX && x <= _maxX
                && y >= _minY && y <= _maxY
                && z >= _minZ && z <= _maxZ;
        }

        /// <summary>Encodes 3D coords to Morton code (call Contains first).</summary>
        public long Encode(int x, int y, int z)
        {
            ulong ux = (ulong)(x - _offsetX);
            ulong uy = (ulong)(y - _offsetY);
            ulong uz = (ulong)(z - _offsetZ);

            long code = 0;
            for (int i = 0, shift = 0; i < BitsPerDim; i++, shift += 3)
            {
                code |= (long)((ux >> i) & 1) << shift;
                code |= (long)((uy >> i) & 1) << (shift + 1);
                code |= (long)((uz >> i) & 1) << (shift + 2);
            }
            return code;
        }

        public void Decode(long code, out int x, out int y, out int z)
        {
            ulong ux = 0, uy = 0, uz = 0;
            for (int i = 0, shift = 0; i < BitsPerDim; i++, shift += 3)
            {
                ux |= (((ulong)code >> shift) & 1UL) << i;
                uy |= (((ulong)code >> (shift + 1)) & 1UL) << i;
                uz |= (((ulong)code >> (shift + 2)) & 1UL) << i;
            }
            x = (int)ux + _offsetX;
            y = (int)uy + _offsetY;
            z = (int)uz + _offsetZ;
        }
    }
}
