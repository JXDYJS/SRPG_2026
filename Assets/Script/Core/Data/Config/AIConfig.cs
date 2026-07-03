using UnityEngine;

namespace Core.Data
{
    /// <summary>
    /// AIConfigData — AI 行为调参
    /// 所有字段带默认值，无需 Inspector 拖引用，直接 Data.Config.AIConfig.xxx 访问
    /// </summary>
    public class AIConfigData
    {
        public AIConfigData()
        {
            float attackSum  = attackWeight_Distance + attackWeight_Execute + attackWeight_Threat + attackWeight_Damage;
            float defendSum  = defendWeight_HPUrgency + defendWeight_DangerUrgency + defendWeight_SafetyImprovement + defendWeight_Distance;
            float skillSum   = skillWeight_Impact + skillWeight_AoE + skillWeight_Distance + skillWeight_Type;
            float supportSum = supportWeight_HealUrgency + supportWeight_HPLow + supportWeight_Distance + supportWeight_ThreatCover;
            float strategySum = strategicWeight_HPUrgency + strategicWeight_Threat + strategicWeight_Role + strategicWeight_Coverage;

            AssertSum("[AIConfig] Attack weights",   attackSum);
            AssertSum("[AIConfig] Defend weights",   defendSum);
            AssertSum("[AIConfig] Skill weights",    skillSum);
            AssertSum("[AIConfig] Support weights",  supportSum);
            AssertSum("[AIConfig] Strategic weights", strategySum);
        }

        [global::System.Diagnostics.Conditional("UNITY_EDITOR"), global::System.Diagnostics.Conditional("DEVELOPMENT_BUILD")]
        private static void AssertSum(string label, float sum)
        {
            Debug.Assert(Mathf.Approximately(sum, 1f), $"{label} sum={sum:F4}, expected 1.0");
        }

        // ── 威胁感知 ──
        public readonly float threatNormalizeBase = 50f;

        // ── 防御/自保 ──
        public readonly float lowHPThreshold = 0.35f;          // HP 低于此比例触发防御
        public readonly float dangerThreatThreshold = 30f;        // 威胁分超过此值考虑撤退
        public readonly float threatImprovementRatio = 0.5f;    // 新位置威胁需 < 当前位置 * 此值

        // ── 支援 ──
        public readonly float healThreshold = 0.7f;             // 友军 HP 高于此比例不治疗

        // ── 攻击任务效用权重（和为1.0） ──
        public readonly float attackWeight_Distance = 0.20f;
        public readonly float attackWeight_Execute  = 0.10f;   // 降低残血偏好，避免集火
        public readonly float attackWeight_Threat   = 0.30f;   // 提高威胁目标权重
        public readonly float attackWeight_Damage   = 0.40f;   // 提高伤害预估权重

        // ── 防御任务效用权重 ──
        public readonly float defendWeight_HPUrgency          = 0.35f;
        public readonly float defendWeight_DangerUrgency      = 0.25f;
        public readonly float defendWeight_SafetyImprovement  = 0.25f;
        public readonly float defendWeight_Distance           = 0.15f;
        
        // ── 技能任务效用权重 ──
        public readonly float skillWeight_Impact   = 0.35f;
        public readonly float skillWeight_AoE      = 0.25f;
        public readonly float skillWeight_Distance = 0.20f;
        public readonly float skillWeight_Type     = 0.20f;

        // ── 支援任务效用权重 ──
        public readonly float supportWeight_HealUrgency  = 0.30f;
        public readonly float supportWeight_HPLow        = 0.20f;
        public readonly float supportWeight_Distance     = 0.20f;
        public readonly float supportWeight_ThreatCover  = 0.30f;

        // ── 技能评分 ──
        public readonly float aoeExtraHitBonus = 0.3f;          // AoE 每多命中一个目标的加分

        // ── 执行节奏 ──
        public readonly float planStepWaitSeconds = 0.5f;       // 计划步骤(AIPlanStep.Wait)等待时间
        public readonly float moveExecuteDelaySeconds = 0.3f;   // 移动指令后等待间隔
        public readonly float skillExecuteDelaySeconds = 0.5f;  // 技能指令后等待间隔

        // ── 战略评分权重（0~1，和为1） ──
        public readonly float strategicWeight_HPUrgency  = 0.35f; // 残血紧迫度
        public readonly float strategicWeight_Threat     = 0.25f; // 威胁贡献
        public readonly float strategicWeight_Role       = 0.20f; // 职业价值
        public readonly float strategicWeight_Coverage   = 0.20f; // 战场覆盖度

        // ── 资源惩罚 ──
        public readonly float resourcePenaltyFactor = 0.30f; // cost/maxMP 的最大惩罚比例

        // ── Effect 类型基础效用值（Phase 命中时的单目标基准分） ──
        public readonly float effectValue_AddBuff    = 0.22f; // 增益/减益单目标
        public readonly float effectValue_RemoveBuff = 0.28f; // 移除负面单目标（更高紧迫度）
        public readonly float effectValue_MoveCaster = 0.12f; // 位移类
        public readonly float effectValue_Execute = 0.15f;//  斩杀固定加成

        // ── Effect HP 上下文修正 ──
        // AddBuff: 目标血量越高价值越大（效果持续时间更长）
        public readonly float addBuff_HPBonus = 0.30f;        // hpPercent 每 1.0 加成 30%
        // RemoveBuff: 目标血量越低越紧迫（濒死带着负面急需解）
        public readonly float removeBuff_LowHPUrgency = 0.50f; // (1-hpPercent) 每 1.0 加成 50%

        // ── 任务挤占控制 ──
        // ≤crewMin: 全额效用; ≥crewMax: 效用归零（不再抢同一目标）; 中间线性递减
        public readonly float attackCrewMin = 1f;
        public readonly float attackCrewMax = 3f;
        public readonly float skillCrewMin = 1f;
        public readonly float skillCrewMax = 3f;
        public readonly float supportCrewMin = 0f;
        public readonly float supportCrewMax = 2f;

        // ── 过杀惩罚 ──
        // 承诺伤害 ≥ currentHP × ratio 时开始惩罚，防止多人猛攻同一残血目标
        public readonly float overkillThresholdRatio = 0.8f;
        // 过杀惩罚完全归零的额外区间（ratio + fullKillMargin → 惩罚=0）
        public readonly float overkillFullKillMargin = 0.5f;

        // ── 职业-任务权重细调 ──
        // Skill 任务的基础倍率
        public readonly float classWeight_SkillMult = 1.5f;
        // Skill 任务中 Aggressiveness 的占比（0~1，剩余归 Supportiveness）
        public readonly float classWeight_SkillAggroBlend = 0.7f;
    }
}
