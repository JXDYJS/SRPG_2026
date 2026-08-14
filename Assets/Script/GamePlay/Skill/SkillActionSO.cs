using Cysharp.Threading.Tasks;
using GamePlay.View;
using UnityEngine;

namespace GamePlay.Skill
{
    /// <summary>Body part anchors used by code-driven animations.</summary>
    public enum BodyPart
    {
        None,
        Head,
        Body,
        Chest,
        RightArm,
        LeftArm,
        RightLeg,
        LeftLeg,
    }

    /// <summary>Runtime data passed to a skill action while it executes.</summary>
    public class ActionContext
    {
        public SkillDataSO SkillData;
        public SkillPhase PhaseData;
        public PhaseResult PhaseResult;
        public float DurationOverride = -1f;
    }

    /// <summary>
    /// Base class for skill presentation actions. Each action is a ScriptableObject
    /// asset that drives a piece of the performance (part motion, body motion,
    /// projectile, area effect, sound). Skills reference actions in order to build
    /// their visual sequence without writing per-skill code.
    /// </summary>
    public abstract class SkillActionSO : ScriptableObject
    {
        [Tooltip("备注（可选）")]
        public string Note;

        public abstract UniTask ExecuteAsync(UnitView caster, ActionContext ctx);

        protected float ResolveDuration(float defaultDuration, ActionContext ctx)
        {
            return ctx != null && ctx.DurationOverride > 0f ? ctx.DurationOverride : defaultDuration;
        }
    }
}
