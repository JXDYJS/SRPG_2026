using UnityEngine;
using GamePlay.Skill;
using GamePlay.Units;

namespace GamePlay.AI
{
    /// <summary>
    /// AI 行动类别 — 决策的类别优先级（配合容忍带选择器使用）
    /// 排名: Wait < Reposition < HealBuff < Damage < Execute
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
    /// AI 候选行动 — AIDirector 产出、AIDecisionSelector 比较、ActionPlanBuilder 转执行计划。
    /// 替代旧的 6×AITask 候选对象，统一承载"类别 + 统一货币分值 + 计划输入"。
    ///
    /// TargetPos 语义：
    ///   - 直接动作（技能）：施放位置。null 表示当前已可施放，无需移动。
    ///   - 走位动作：要移动到的落点。
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
