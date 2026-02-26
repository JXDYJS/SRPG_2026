using System.Collections.Generic;
using UnityEngine;
using GamePlay.unit;
using GamePlay.buff;
using Global;

namespace Command
{
    public class UnitSnapshot
    {
        public Vector3Int GridPosition;
        public int CurrentHP;
        public UnitState State;
        public List<BuffBase> ActiveBuffs;
        public int ActionPoints;
        public bool HasMoved;
        public HashSet<MapUnit> PersonalEnemies;

        public UnitSnapshot(MapUnit unit)
        {
            this.GridPosition = unit.gridPosition;
            this.CurrentHP = unit.Character.statSystem.currentHP;
            this.State = unit.CurrentState;
            this.ActiveBuffs = new List<BuffBase>(unit.ActiveBuffs);
            this.ActionPoints = unit.actionPoints;
            this.HasMoved = unit.hasMoved;
            this.PersonalEnemies = new HashSet<MapUnit>(unit._personalEnemies);
        }
    }
}