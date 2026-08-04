using System.Collections.Generic;
using UnityEngine;
using Global;
using System;
using Cysharp.Threading.Tasks;
using GamePlay.View;
namespace Managers
{
    using GamePlay.Units;
    public class UnitManager : MonoBehaviour
    {
        public static UnitManager Instance { get; private set; }

        // 存储所有活跃单位的列表
        private List<MapUnit> allUnits = new List<MapUnit>();
        
        // 坐标 -> 单位 的快速查找字典 (用于碰撞检测：我想去的格子上有没有人？)
        private Dictionary<Vector3Int, MapUnit> unitPositions = new Dictionary<Vector3Int, MapUnit>();
        public Action onUnitDead;

        // 逻辑/视觉分离：逻辑层死亡时只登记，由视觉层统一播放死亡动画
        private readonly HashSet<MapUnit> _pendingDeathAnims = new HashSet<MapUnit>();

        /// <summary>
        /// 尚未播放死亡动画的单位数量（供游戏管理器判断是否可结束游戏）。
        /// </summary>
        public int PendingDeathAnimCount => _pendingDeathAnims.Count;

        /// <summary>
        /// 所有待播放的死亡动画已播放完成（游戏管理器可在此重新判断是否结束游戏）。
        /// </summary>
        public event Action AllDeathAnimationsFinished;

        /// <summary>
        /// 登记死亡（逻辑层 Die() 调用，只登记不播放）。
        /// </summary>
        public void RegisterDeath(MapUnit unit)
        {
            if (unit != null && unit.View != null)
            {
                _pendingDeathAnims.Add(unit);
            }
        }

        /// <summary>
        /// 播放所有待播放的死亡动画（视觉层在所有技能动画解释完后调用）。
        /// 播放完毕触发 AllDeathAnimationsFinished。
        /// </summary>
        public async UniTask FlushDeathAnimations()
        {
            if (_pendingDeathAnims.Count == 0)
            {
                AllDeathAnimationsFinished?.Invoke();
                return;
            }

            List<MapUnit> batch = new List<MapUnit>(_pendingDeathAnims);
            _pendingDeathAnims.Clear();

            List<UniTask> tasks = new List<UniTask>();
            foreach (MapUnit unit in batch)
            {
                if (unit == null) continue;

                UnitView view = unit.View;
                if (view != null)
                {
                    tasks.Add(view.PlayDeathAnimation(() =>
                    {
                        if (view != null) view.HideModel();
                    }));
                }
                else
                {
                    unit.gameObject.SetActive(false);
                }
            }

            await UniTask.WhenAll(tasks);

            AllDeathAnimationsFinished?.Invoke();
        }
        
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
            //触发格子效果
            MapManager mapManager = MapManager.Instance;
            if(mapManager != null)
            {
                MapObject exitObj;
                if(mapManager.blocks.TryGetValue(oldPos,out exitObj))
                {
                    exitObj.OnUnitExit(unit);
                }
                else
                {
                    Debug.LogError("UpdateUnitPos : fail to get ExitMapObj");
                }
                MapObject enterObj;
                if (mapManager.blocks.TryGetValue(unit.gridPosition,out enterObj))
                {
                    enterObj.OnUnitEnter(unit);   
                }
                else
                {
                     Debug.LogError("UpdateUnitPos : fail to get EnterMapObj");
                }
            }
            else
            {
                Debug.LogError("UpdataUnitPos : mapManager is null");
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
                if(unit.Faction == faction)
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
       /// <summary>
        /// 触发所有 unit 所在方块的 OnStay 逻辑
        /// </summary> 
        public void AllUnitOnStay()
        {
            if(allUnits != null)
            {
                foreach(var unit in allUnits)
                {
                    MapObject block;
                    if (unit.gridPosition != null && MapManager.Instance.blocks.TryGetValue(unit.gridPosition,out block))
                    {
                        block.OnStay(unit);   
                    }
                    else
                    {
                        Debug.LogError("AllUnitOnStay : fail to get unit block");
                    }
                }
            }
        }
        /// <summary>
        /// 触发 unit 所在方块的 OnStay 逻辑
        /// </summary>
        public void unitOnStay(MapUnit unit)
        {
            if (allUnits.Contains(unit))
            {
                MapObject block;
                if (unit.gridPosition != null && MapManager.Instance.blocks.TryGetValue(unit.gridPosition,out block))
                {
                    block.OnStay(unit);   
                }
                else
                {
                    Debug.LogError("unitOnStay : fail to get unit block");
                }
            }
            else
            {
                Debug.LogError("UnitOnStay : No such Unit");
            }
        }
        public List<MapUnit> GetAllAlivePlayers()
        {
            var players = new List<MapUnit>();
            foreach(var unit in allUnits)
            {
                if(unit.Faction == FactionType.Player && unit.CurrentState != UnitState.Dead)
                {
                    players.Add(unit);
                }
            }
            return players;
        }
        public List<MapUnit> GetAllAliveUnit()
        {
            List<MapUnit> ans = new List<MapUnit>();
            foreach (var _unit in allUnits)
            {
                if (_unit != null && _unit.CurrentState != UnitState.Dead)
                {
                    ans.Add(_unit);
                }
            }
            return ans;
        }
    }
}