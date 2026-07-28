using System.Collections.Generic;
using GamePlay.Units;
using GamePlay.Skill;
using UnityEngine;

namespace Lua
{
    public class SkillEvalContext
    {
        public MapUnit Caster;
        public Vector3Int TargetPosition;
        public int PhaseIndex;
        public int EffectIndex;
        public SkillDataSO SkillData;
        public List<PhaseResult> PreviousResults;
        public SkillTargetContext OriginalContext;

        public SkillEvalContext(MapUnit caster, Vector3Int targetPosition, SkillDataSO skillData)
        {
            Caster = caster;
            TargetPosition = targetPosition;
            SkillData = skillData;
            PreviousResults = new List<PhaseResult>();
        }
    }
}
