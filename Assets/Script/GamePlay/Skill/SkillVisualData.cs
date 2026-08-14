using System.Collections.Generic;
using UnityEngine;

namespace GamePlay.Skill
{
    /// <summary>One configured step in a skill's visual sequence.</summary>
    [System.Serializable]
    public class ActionStep
    {
        [Tooltip("要执行的动作资产（Inspector 拖入）")]
        public SkillActionSO Action;

        [Tooltip("覆盖动作自身默认时长（秒）。-1 = 使用动作默认值")]
        public float DurationOverride = -1f;
    }

    /// <summary>
    /// The visual sequence of a skill phase: an ordered list of action assets.
    /// Actions are executed one by one; each action drives code-based animation,
    /// effects, projectiles or sound through UnitView.
    /// </summary>
    [System.Serializable]
    public class SkillVisualData
    {
        [Header("演出动作序列（按顺序执行）")]
        public List<ActionStep> Actions = new List<ActionStep>();
    }
}
