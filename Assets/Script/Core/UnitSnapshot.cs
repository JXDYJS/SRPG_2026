using System.Collections.Generic;
using UnityEngine;
using GamePlay.unit;
using GamePlay.buff;
using Global;

namespace Command
{
    public class UnitSnapshot
    {
        // 修改：从 Vector2Int 改为 Vector3Int
        public Vector3Int GridPosition;
        public int CurrentHP;
        public UnitState State;
        public List<BuffBase> ActiveBuffs;

        public UnitSnapshot(MapUnit unit)
        {
            // 记录 3D 坐标
            this.GridPosition = unit.gridPosition;
            this.CurrentHP = unit.Character.statSystem.currentHP;
            this.State = unit.CurrentState;
            this.ActiveBuffs = new List<BuffBase>(unit.ActiveBuffs);
        }
    }
}