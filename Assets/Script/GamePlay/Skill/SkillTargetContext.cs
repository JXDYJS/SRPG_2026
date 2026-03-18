using System.Collections.Generic;
using UnityEngine;
using GamePlay.Unit;
using Global;

namespace GamePlay.Skill
{
    public class SkillTargetContext
    {
        public Vector3Int TargetPosition;
        public List<MapUnit> UnitsInRange;

        public SkillTargetContext(Vector3Int targetPosition, List<MapUnit> unitsInRange)
        {
            this.TargetPosition = targetPosition;
            this.UnitsInRange = unitsInRange ?? new List<MapUnit>();
        }
    }
}
