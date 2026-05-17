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
        private readonly long _maskPerDim; // (1L << BitsPerDim) - 1

        /// <summary>
        /// 根据空间边界初始化编码器
        /// </summary>
        /// <param name="maxX">X 轴最大值</param>
        /// <param name="maxY">Y 轴最大值</param>
        /// <param name="maxZ">Z 轴最大值</param>
        /// <param name="minX">X 轴最小值（含负值）</param>
        /// <param name="minY">Y 轴最小值</param>
        /// <param name="minZ">Z 轴最小值</param>
        public MortonCode(int maxX, int maxY, int maxZ,
                          int minX = 0, int minY = 0, int minZ = 0)
        {
            _offsetX = minX;
            _offsetY = minY;
            _offsetZ = minZ;

            int rangeX = maxX - minX + 1;
            int rangeY = maxY - minY + 1;
            int rangeZ = maxZ - minZ + 1;
            int maxRange = Mathf.Max(rangeX, Mathf.Max(rangeY, rangeZ));

            // 计算编码所需的 bits 数: ceil(log2(maxRange))
            BitsPerDim = Mathf.CeilToInt(Mathf.Log(maxRange, 2f));
            if (BitsPerDim < 1) BitsPerDim = 1;

            TotalBits = BitsPerDim * 3;
            MaxCode = (1L << TotalBits) - 1L;
            _maskPerDim = (1L << BitsPerDim) - 1L;
        }

        /// <summary>
        /// 将三维坐标编码为 Morton 码
        /// </summary>
        public long Encode(int x, int y, int z)
        {
            // 偏移到非负范围
            ulong ux = (ulong)(x - _offsetX);
            ulong uy = (ulong)(y - _offsetY);
            ulong uz = (ulong)(z - _offsetZ);

            // 比特交错: (x,y,z) → ...x2y2z2x1y1z1x0y0z0
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
                ux |= ((ulong)code >> shift) & 1 << i;
                uy |= ((ulong)code >> (shift + 1)) & 1 << i;
                uz |= ((ulong)code >> (shift + 2)) & 1 << i;
            }
            x = (int)ux + _offsetX;
            y = (int)uy + _offsetY;
            z = (int)uz + _offsetZ;
        }
    }
}
