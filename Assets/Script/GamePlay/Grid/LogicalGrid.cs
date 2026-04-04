using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using Global;
using GamePlay.Units;
using Unity.VisualScripting;

namespace GamePlay.Grid
{

    public class LogicalGrid
    {
        // 存储所有的逻辑格子：Key是坐标(x,z)，Value是单个格子的数据
        public Dictionary<Vector3Int, BlockType> blockData = new Dictionary<Vector3Int, BlockType>();
        public Dictionary<Vector3Int, float> blockYSizes = new Dictionary<Vector3Int, float>();// 存储每个格子的Y轴高度
        

        public BlockType GetBlock(int x, int y, int z)
        {
            if (blockData.TryGetValue(new Vector3Int(x, y, z), out BlockType type))
                return type;
            return BlockType.Air;
        }

        public BlockType GetBlock(Vector3Int pos)
        {
            if (blockData.TryGetValue(pos, out BlockType type))
                return type;
            return BlockType.Air;
        }

        public float GetBlockHeight(BlockType type)
        {
            if (type == BlockType.Slab) return 0.5f;
            if (type == BlockType.Solid) return 1.0f;
            return 0f;
        }

        public void Build(List<MapObject> allObjects)
        {
            blockData.Clear();
            blockYSizes.Clear();
            foreach(var obj in allObjects)
            {
                Vector3Int pos = Vector3Int.RoundToInt(obj.transform.position);
                blockData[pos] = obj.type; 
                blockYSizes[pos] = obj.YCellSize;
            }
        }

        public void Clear()
        {
            blockData.Clear();
            blockYSizes.Clear();
        }

        public float GetBlockYSize(Vector3Int pos)
        {
            if (blockYSizes.TryGetValue(pos, out float size)) return size;
            return 0f;
        }
        public void OnUnitEnter(Unit unit,Vector3Int pos)
        {
               
        }


    }
}