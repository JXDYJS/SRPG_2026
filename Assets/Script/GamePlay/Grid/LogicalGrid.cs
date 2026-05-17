using System.Collections.Generic;
using UnityEngine;
using Global;
using GamePlay.Units;
using Unity.VisualScripting;

namespace GamePlay.Grid
{

    public class LogicalGrid
    {
        // ——— Z-order 平坦数组存储（替代 Dictionary<Vector3Int,...>）———

        private MortonCode _mortonCode;
        private BlockType[] _blocks;
        private float[] _blockYSizes;
        private int _blockCount;

        // 向后兼容：惰性构建的 Dictionary，仅用于外部迭代/计数查询
        private Dictionary<Vector3Int, BlockType> _blockDataCache;

        /// <summary>注册的方块数量（非 Air）</summary>
        public int BlockCount => _blockCount;

        /// <summary>
        /// 向后兼容属性——惰性构建 Dictionary。
        /// 热路径（AStar/AttackRangeSystem）使用 GetBlock/GetBlockYSize 走平坦数组，
        /// 此属性仅用于 MapManager 的边界查询和日志。
        /// </summary>
        public Dictionary<Vector3Int, BlockType> blockData
        {
            get
            {
                if (_blockDataCache == null && _blocks != null)
                    _blockDataCache = BuildBlockDataDict();
                return _blockDataCache;
            }
        }

        private Dictionary<Vector3Int, BlockType> BuildBlockDataDict()
        {
            var dict = new Dictionary<Vector3Int, BlockType>();
            if (_blocks == null) return dict;

            for (int i = 0; i < _blocks.Length; i++)
            {
                if (_blocks[i] != BlockType.Air)
                {
                    _mortonCode.Decode(i, out int x, out int y, out int z);
                    dict[new Vector3Int(x, y, z)] = _blocks[i];
                }
            }
            return dict;
        }

        // ==============================================================
        // 网格构建
        // ==============================================================

        public void Build(List<MapObject> allObjects)
        {
            if (allObjects == null || allObjects.Count == 0)
            {
                Clear();
                return;
            }

            // 1. 找到空间边界
            int minX = int.MaxValue, maxX = int.MinValue;
            int minY = int.MaxValue, maxY = int.MinValue;
            int minZ = int.MaxValue, maxZ = int.MinValue;

            foreach (var obj in allObjects)
            {
                Vector3Int pos = Vector3Int.RoundToInt(obj.transform.position);
                if (pos.x < minX) minX = pos.x;
                if (pos.x > maxX) maxX = pos.x;
                if (pos.y < minY) minY = pos.y;
                if (pos.y > maxY) maxY = pos.y;
                if (pos.z < minZ) minZ = pos.z;
                if (pos.z > maxZ) maxZ = pos.z;
            }

            // 2. 初始化 Morton 编码器和平坦数组
            _mortonCode = new MortonCode(maxX, maxY, maxZ, minX, minY, minZ);
            int arraySize = (int)_mortonCode.MaxCode + 1;
            _blocks = new BlockType[arraySize];
            _blockYSizes = new float[arraySize];

            // 3. 默认值（Air, 0f）——BlockType 默认即为 0（通常对应 Air）
            //    float 默认为 0f，无需额外初始化

            // 4. 放置方块
            _blockCount = 0;
            foreach (var obj in allObjects)
            {
                Vector3Int pos = Vector3Int.RoundToInt(obj.transform.position);
                long code = _mortonCode.Encode(pos.x, pos.y, pos.z);
                if (code < 0 || code >= arraySize) continue;

                _blocks[code] = obj.type;
                _blockYSizes[code] = obj.YCellSize;
                _blockCount++;
            }

            // 清除惰性缓存
            _blockDataCache = null;
        }

        public void Clear()
        {
            _blocks = null;
            _blockYSizes = null;
            _blockCount = 0;
            _blockDataCache = null;
        }

        // ==============================================================
        // 方块查询（高频调用——直接数组索引 O(1)）
        // ==============================================================

        public BlockType GetBlock(int x, int y, int z)
        {
            if (_blocks == null) return BlockType.Air;
            long code = _mortonCode.Encode(x, y, z);
            if (code < 0 || code >= _blocks.Length) return BlockType.Air;
            return _blocks[code];
        }

        public BlockType GetBlock(Vector3Int pos)
        {
            if (_blocks == null) return BlockType.Air;
            long code = _mortonCode.Encode(pos.x, pos.y, pos.z);
            if (code < 0 || code >= _blocks.Length) return BlockType.Air;
            return _blocks[code];
        }

        public float GetBlockYSize(Vector3Int pos)
        {
            if (_blockYSizes == null) return 0f;
            long code = _mortonCode.Encode(pos.x, pos.y, pos.z);
            if (code < 0 || code >= _blockYSizes.Length) return 0f;
            return _blockYSizes[code];
        }

        public float GetBlockHeight(BlockType type)
        {
            if (type == BlockType.Slab) return 0.5f;
            if (type == BlockType.Solid) return 1.0f;
            return 0f;
        }

        // ==============================================================
        // 其他
        // ==============================================================

        public void OnUnitEnter(Unit unit, Vector3Int pos)
        {

        }
    }
}
