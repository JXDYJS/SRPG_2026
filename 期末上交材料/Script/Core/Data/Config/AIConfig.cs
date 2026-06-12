namespace Core.Data
{
    /// <summary>
    /// AIConfigData — AI 行为调参
    /// 所有字段带默认值，无需 Inspector 拖引用，直接 Data.Config.AIConfig.xxx 访问
    /// </summary>
    public class AIConfigData
    {
        // ── 威胁感知 ──
        public float threatNormalizeBase = 50f;

        // ── 防御/自保 ──
        public float lowHPThreshold = 0.35f;          // HP 低于此比例触发防御
        public float dangerThreatThreshold = 30f;      // 威胁分超过此值考虑撤退
        public float threatImprovementRatio = 0.5f;    // 新位置威胁需 < 当前位置 * 此值

        // ── 支援 ──
        public float healThreshold = 0.7f;             // 友军 HP 高于此比例不治疗

        // ── 攻击任务效用权重 ──
        public float attackWeight_Distance = 0.20f;
        public float attackWeight_Execute  = 0.35f;
        public float attackWeight_Threat   = 0.20f;
        public float attackWeight_Damage   = 0.25f;

        // ── 防御任务效用权重 ──
        public float defendWeight_HPUrgency          = 0.35f;
        public float defendWeight_DangerUrgency      = 0.25f;
        public float defendWeight_SafetyImprovement  = 0.25f;
        public float defendWeight_Distance           = 0.15f;

        // ── 技能任务效用权重 ──
        public float skillWeight_Impact   = 0.35f;
        public float skillWeight_AoE      = 0.25f;
        public float skillWeight_Distance = 0.20f;
        public float skillWeight_Type     = 0.20f;

        // ── 支援任务效用权重 ──
        public float supportWeight_HealUrgency  = 0.30f;
        public float supportWeight_HPLow        = 0.20f;
        public float supportWeight_Distance     = 0.20f;
        public float supportWeight_ThreatCover  = 0.30f;

        // ── 技能评分 ──
        public float aoeExtraHitBonus = 0.3f;          // AoE 每多命中一个目标的加分
    }
}
