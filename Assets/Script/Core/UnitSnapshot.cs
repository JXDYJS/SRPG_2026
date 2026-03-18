using System.Collections.Generic;
using UnityEngine;
using GamePlay.Unit;
using GamePlay.Buff;
using Global;

namespace Command
{
    public class BuffSnapshotData
    {
        public BuffBase buff;
        public int stacks;

        public BuffSnapshotData(BuffBase buff, int stacks)
        {
            this.buff = buff;
            this.stacks = stacks;
        }
    }

    public class UnitSnapshot
    {
        public Vector3Int GridPosition;
        public int CurrentHP;
        public UnitState State;
        public List<BuffBase> ActiveBuffs;
        public List<BuffSnapshotData> BuffSnapshots;
        public int ActionPoints;
        public bool HasMoved;
        public HashSet<MapUnit> PersonalEnemies;

        public UnitSnapshot(MapUnit unit)
        {
            this.GridPosition = unit.gridPosition;
            this.CurrentHP = unit.Character.statSystem.currentHP;
            this.State = unit.CurrentState;
            this.ActiveBuffs = new List<BuffBase>(unit.ActiveBuffs);
            this.BuffSnapshots = new List<BuffSnapshotData>();
            
            foreach (var buff in unit.ActiveBuffs)
            {
                BuffSnapshots.Add(new BuffSnapshotData(buff, buff.Stacks));
            }
            
            this.ActionPoints = unit.actionPoints;
            this.HasMoved = unit.hasMoved;
            this.PersonalEnemies = new HashSet<MapUnit>(unit._personalEnemies);
        }
    }
}
