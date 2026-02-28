using System.Collections.Generic;
using UnityEngine;
using GamePlay.unit;
using Global;

namespace GamePlay.Skill
{
    public class SkillTargetContext
    {
        public Vector3Int TargetPosition;
        public List<MapUnit> UnitsInRange;
        public DamageType DamageType;

        public SkillTargetContext(Vector3Int targetPosition, List<MapUnit> unitsInRange, DamageType damageType = DamageType.Physical)
        {
            this.TargetPosition = targetPosition;
            this.UnitsInRange = unitsInRange ?? new List<MapUnit>();
            this.DamageType = damageType;
        }
    }
}
