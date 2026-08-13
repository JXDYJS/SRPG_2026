using UnityEngine;
using GamePlay.Skill;
using GamePlay.Units;

namespace GamePlay.AI
{
    /// <summary>
    /// AI action category, used as decision priority. Ranking: Wait < Reposition < HealBuff < Damage < Execute
    /// </summary>
    public enum AICategory
    {
        Wait = 0,
        Reposition = 1,
        HealBuff = 2,
        Damage = 3,
        Execute = 4
    }

    /// <summary>
    /// AI candidate action produced by AIDirector. TargetPos is the cast position for
    /// skills (null = already in range) or the landing position for repositioning.
    /// </summary>
    public class AIAction
    {
        public AICategory Category;
        public float Score;
        public SkillDataSO Skill;
        public MapUnit TargetUnit;
        public Vector3Int? TargetPos;

        public bool HasSkill => Skill != null && TargetUnit != null;
    }
}
