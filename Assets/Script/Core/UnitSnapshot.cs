using System.Collections.Generic;
using GamePlay.unit;
using GamePlay.buff;
using UnityEngine;
using Global;

namespace Command
{
    public class UnitSnapshot
    {
        public Vector2Int GridPosition;
        public int CurrentHP;
        public List<BuffBase> ActiveBuffs; // 存引用列表
        public UnitState State;

        public UnitSnapshot(MapUnit unit)
        {
            this.GridPosition = unit.gridPosition;
            this.CurrentHP = unit.Character.statSystem.currentHP;
            this.ActiveBuffs = new List<BuffBase>(unit.ActiveBuffs);
            this.State = unit.CurrentState;
        }
    }
}