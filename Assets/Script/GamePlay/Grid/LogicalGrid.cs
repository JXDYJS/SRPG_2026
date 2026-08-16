using System.Collections.Generic;
using UnityEngine;
using Global;
using GamePlay.Units;
using Unity.VisualScripting;

namespace GamePlay.Grid
{

    public class LogicalGrid
    {
        private MortonCode _mortonCode;
        private BlockType[] _blocks;
        private float[] _blockYSizes;
        private int _blockCount;

        private Dictionary<Vector3Int, BlockType> _blockDataCache;

        /// <summary>Number of registered non-air blocks.</summary>
        public int BlockCount => _blockCount;

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

        public void Build(List<MapObject> allObjects)
        {
            if (allObjects == null || allObjects.Count == 0)
            {
                Clear();
                return;
            }

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

            _mortonCode = new MortonCode(maxX, maxY, maxZ, minX, minY, minZ);
            int arraySize = (int)_mortonCode.MaxCode + 1;
            _blocks = new BlockType[arraySize];
            _blockYSizes = new float[arraySize];

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

            _blockDataCache = null;
        }

        /// <summary>
        /// Builds the grid from plain block data (pos -> type + ySize). Test seam:
        /// lets pathfinding tests construct grids without scene GameObjects.
        /// </summary>
        public void BuildFromData(Dictionary<Vector3Int, (BlockType type, float ySize)> blocks)
        {
            if (blocks == null || blocks.Count == 0)
            {
                Clear();
                return;
            }

            int minX = int.MaxValue, maxX = int.MinValue;
            int minY = int.MaxValue, maxY = int.MinValue;
            int minZ = int.MaxValue, maxZ = int.MinValue;

            foreach (Vector3Int pos in blocks.Keys)
            {
                if (pos.x < minX) minX = pos.x;
                if (pos.x > maxX) maxX = pos.x;
                if (pos.y < minY) minY = pos.y;
                if (pos.y > maxY) maxY = pos.y;
                if (pos.z < minZ) minZ = pos.z;
                if (pos.z > maxZ) maxZ = pos.z;
            }

            _mortonCode = new MortonCode(maxX, maxY, maxZ, minX, minY, minZ);
            int arraySize = (int)_mortonCode.MaxCode + 1;
            _blocks = new BlockType[arraySize];
            _blockYSizes = new float[arraySize];

            _blockCount = 0;
            foreach (KeyValuePair<Vector3Int, (BlockType type, float ySize)> kv in blocks)
            {
                long code = _mortonCode.Encode(kv.Key.x, kv.Key.y, kv.Key.z);
                if (code < 0 || code >= arraySize) continue;

                _blocks[code] = kv.Value.type;
                _blockYSizes[code] = kv.Value.ySize;
                _blockCount++;
            }

            _blockDataCache = null;
        }

        public void Clear()
        {
            _blocks = null;
            _blockYSizes = null;
            _blockCount = 0;
            _blockDataCache = null;
        }

        public BlockType GetBlock(int x, int y, int z)
        {
            if (_blocks == null) return BlockType.Air;
            if (!_mortonCode.Contains(x, y, z)) return BlockType.Air;
            long code = _mortonCode.Encode(x, y, z);
            return _blocks[code];
        }

        public BlockType GetBlock(Vector3Int pos)
        {
            if (_blocks == null) return BlockType.Air;
            if (!_mortonCode.Contains(pos.x, pos.y, pos.z)) return BlockType.Air;
            long code = _mortonCode.Encode(pos.x, pos.y, pos.z);
            return _blocks[code];
        }

        public float GetBlockYSize(Vector3Int pos)
        {
            if (_blockYSizes == null) return 0f;
            if (!_mortonCode.Contains(pos.x, pos.y, pos.z)) return 0f;
            long code = _mortonCode.Encode(pos.x, pos.y, pos.z);
            return _blockYSizes[code];
        }

        public float GetBlockHeight(BlockType type)
        {
            if (type == BlockType.Slab) return 0.5f;
            if (type == BlockType.Solid) return 1.0f;
            return 0f;
        }

        public void OnUnitEnter(Unit unit, Vector3Int pos)
        {

        }
    }
}
