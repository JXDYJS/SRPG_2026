using System.Collections.Generic;
using GamePlay.Unit;

namespace GamePlay.Skill
{
    public class SkillSequenceResult
    {
        public MapUnit Caster;
        public SkillTargetContext Context;
        public List<PhaseResult> PhaseResults;

        public SkillSequenceResult(MapUnit caster, SkillTargetContext context)
        {
            Caster = caster;
            Context = context;
            PhaseResults = new List<PhaseResult>();
        }
    }
}
