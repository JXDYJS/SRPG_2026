using System.Collections.Generic;
using UnityEngine;
using Global;

namespace Managers
{
    using GamePlay.unit;
    public class UnitManager : MonoBehaviour
    {
        public static UnitManager Instance { get; private set; }

        // 存储所有活跃单位的列表
        private List<MapUnit> allUnits = new List<MapUnit>();
        
        // 坐标 -> 单位 的快速查找字典 (用于碰撞检测：我想去的格子上有没有人？)
        private Dictionary<Vector3Int, MapUnit> unitPositions = new Dictionary<Vector3Int, MapUnit>();

        void Awake()
        {
            if (Instance == null) Instance = this;
            else
            {
                Debug.LogError("UnitManager 已存在实例，重复创建！");
            }
        }

        // 注册单位
        public void RegisterUnit(MapUnit unit)
        {
            if (!allUnits.Contains(unit))
            {
                allUnits.Add(unit);
                UpdateUnitPosition(unit, unit.gridPosition);
            }
        }

        // 注销单位 (死亡时)
        public void UnregisterUnit(MapUnit unit)
        {
            if (allUnits.Contains(unit))
            {
                allUnits.Remove(unit);
                if (unitPositions.ContainsKey(unit.gridPosition) && unitPositions[unit.gridPosition] == unit)
                {
                    unitPositions.Remove(unit.gridPosition);
                }
            }
        }

        // 更新单位坐标记录
        public void UpdateUnitPosition(MapUnit unit, in Vector3Int oldPos)
        {
            // 移除旧位置记录
            if (unitPositions.ContainsKey(oldPos) && unitPositions[oldPos] == unit)
            {
                unitPositions.Remove(oldPos);
            }
            
            // 记录新位置
            // 注意：这里简单的覆盖了，实际游戏中如果格子上已经有人，可能需要处理重叠逻辑
            if (!unitPositions.ContainsKey(unit.gridPosition))
            {
                unitPositions[unit.gridPosition] = unit;
            }
        }

        // 获取某格子的单位 (用于 A* 判断是否被敌方阻挡)
        public MapUnit GetUnitAt(in Vector3Int pos)
        {
            if (unitPositions.TryGetValue(pos, out MapUnit unit))
            {
                return unit;
            }
            return null;
        }

        public List<MapUnit> GetUnitsByFaction(FactionType faction)
        {
            List<MapUnit> units = new List<MapUnit>();
            foreach(var unit in allUnits)
            {
                if(unit.Character.characterData.DefaultFaction == faction)
                {
                    units.Add(unit);
                }
            }
            return units;
        }

        // 获取所有注册的单位
        public List<MapUnit> GetAllUnits()
        {
            return new List<MapUnit>(allUnits);
        }
    }
}