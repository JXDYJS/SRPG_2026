using UnityEngine;

namespace GamePlay.Grid
{
    /// <summary>
    /// Z-order 曲线（Morton 编码）三维坐标编码器
    /// 将 (x,y,z) 坐标交错编码为一个 64-bit 整数，
    /// 保证空间局部性——相邻点在 Morton 编码上也相近
    /// </summary>
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

        /// <summary>
        /// 检查坐标是否在编码器覆盖范围内
        /// </summary>
        public bool Contains(int x, int y, int z)
        {
            return x >= _minX && x <= _maxX
                && y >= _minY && y <= _maxY
                && z >= _minZ && z <= _maxZ;
        }

        /// <summary>
        /// 将三维坐标编码为 Morton 码（调用前请确保 Contains 返回 true）
        /// </summary>
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

        /// <summary>
        /// 将 Morton 码解码回三维坐标
        /// </summary>
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
