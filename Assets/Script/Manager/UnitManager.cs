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

        private List<MapUnit> allUnits = new List<MapUnit>();
        
        private Dictionary<Vector3Int, MapUnit> unitPositions = new Dictionary<Vector3Int, MapUnit>();
        public Action onUnitDead;

        // Logic/view split: logic only registers death; the view layer plays the animation
        private readonly HashSet<MapUnit> _pendingDeathAnims = new HashSet<MapUnit>();

        /// <summary>
        /// True while a skill/movement sequence is playing: death animations are
        /// deferred and flushed by the sequence itself when it ends.
        /// </summary>
        private bool _actionBusy;

        private bool _isFlushing;

        /// <summary>
        /// Count of units with pending death animations (used by the game manager to decide game over).
        /// </summary>
        public int PendingDeathAnimCount => _pendingDeathAnims.Count;

        /// <summary>
        /// Fired when all pending death animations have finished.
        /// </summary>
        public event Action AllDeathAnimationsFinished;

        /// <summary>Marks that an action sequence (skill/move) is playing; auto-flush is suppressed meanwhile.</summary>
        public void SetActionBusy(bool busy)
        {
            _actionBusy = busy;
        }

        public void RegisterDeath(MapUnit unit)
        {
            if (unit != null && unit.View != null)
            {
                _pendingDeathAnims.Add(unit);

                // Outside an action sequence, settle death animations immediately so
                // AllDeathAnimationsFinished can fire (e.g. debug kills, terrain deaths).
                if (!_actionBusy)
                {
                    FlushDeathAnimations().Forget();
                }
            }
        }

        /// <summary>
        /// Plays all pending death animations, then fires AllDeathAnimationsFinished.
        /// Re-entrant safe; deaths arriving mid-flush are settled by a follow-up pass.
        /// </summary>
        public async UniTask FlushDeathAnimations()
        {
            if (_isFlushing)
            {
                return;
            }
            if (_pendingDeathAnims.Count == 0)
            {
                AllDeathAnimationsFinished?.Invoke();
                return;
            }

            _isFlushing = true;
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

            _isFlushing = false;

            // New deaths that arrived while flushing are settled on the next pass.
            if (_pendingDeathAnims.Count > 0)
            {
                await FlushDeathAnimations();
                return;
            }

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

        public void RegisterUnit(MapUnit unit)
        {
            if (!allUnits.Contains(unit))
            {
                allUnits.Add(unit);
                UpdateUnitPosition(unit, unit.gridPosition);
            }
        }

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

        public void UpdateUnitPosition(MapUnit unit, in Vector3Int oldPos)
        {
            if (unitPositions.ContainsKey(oldPos) && unitPositions[oldPos] == unit)
            {
                unitPositions.Remove(oldPos);
            }
            
            // NOTE: position is overwritten; overlap handling may be needed later
            if (!unitPositions.ContainsKey(unit.gridPosition))
            {
                unitPositions[unit.gridPosition] = unit;
            }
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

        public List<MapUnit> GetAllUnits()
        {
            return new List<MapUnit>(allUnits);
        }
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