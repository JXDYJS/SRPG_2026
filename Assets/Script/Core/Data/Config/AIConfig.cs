using UnityEngine;

namespace Core.Data
{
    /// <summary>
    /// AIConfigData — AI 行为调参
    /// 所有字段带默认值，无需 Inspector 拖引用，直接 Data.Config.AIConfig.xxx 访问
    ///
    /// 统一货币设计：所有行动价值 = 占敌方/己方有效血池的比例（TeamHP 归一）。
    /// 跨类别可比性由"类别偏好 + 容忍带"（categoryBand）保证，而非脆弱系数校准。
    /// </summary>
    public class AIConfigData
    {
        // ── 威胁感知 ──
        // 威胁图分数是"影响力值"（属性威胁×10×性格），不是伤害 HP。
        // 所有安全/生存/风险计算统一先归一化：threatFactor = clamp01(threat / threatNormalizeBase)。
        public readonly float threatNormalizeBase = 50f;

        // 进攻风险：从威胁因子为 1 的格子攻击时，最多打多少折（0~1，越大越怂）
        public readonly float counterRiskWeight = 0.6f;

        // 走位安全项：避开的威胁（threatFactor 差）折算的上限（占血池比例，有界避免喧宾夺主）
        public readonly float safetyMaxValue = 0.08f;

        // 死亡风险映射：threatFactor × survivalWeight = 死亡风险 (0~1)
        public readonly float survivalWeight = 0.8f;

        // 走位生存项：死亡风险降低带来的"保住未来贡献"价值上限
        public readonly float survivalMaxValue = 0.10f;

        // 救援触发：队友死亡风险超过此值才给救援附加价值
        public readonly float rescueThreatThreshold = 0.5f;

        // ── 走位 / 推进 ──
        public readonly float futureDiscount = 0.6f;         // 未来价值折扣：走位机会增量打折
        public readonly float advanceBaseValue = 0.06f;      // 够不着时每回合推进的基准价值（占血池比例）
        public readonly float safetyCapRatio = 0.5f;         // 走位中负面威胁最多抵消推进价值的比例

        // ── 治疗/增益 相对伤害权重 ──
        public readonly float allyHealWeight = 0.8f;         // 治疗相对伤害价值（进攻略优先）

        // ── 类别选择容忍带 ──
        // 决策：窗口内（全局最高分 − categoryBand 以上）按类别优先级选。
        // 低类别（走位/撤退）要逆袭，分值必须显著高出高类别（差值 > categoryBand）。
        public readonly float categoryBand = 0.05f;

        // ── 目标权重（buff/debuff 目标价值缩放） ──
        public readonly float targetWeightMin = 0.5f;
        public readonly float targetWeightMax = 1.5f;

        // ── Buff 估值 ──
        public readonly float buffValueDefault = 0.05f;      // 未标注 AIValue 的 buff 每层兜底价值

        // ── 斩杀未来威胁折算 ──
        public readonly int executeFutureTurns = 3;          // 斩杀移除未来威胁折算的回合数上限

        // ── 资源惩罚 ──
        public readonly float resourcePenaltyFactor = 0.30f; // cost/maxMP 的最大惩罚比例

        // ── 撤退 / 自保触发 ──
        public readonly float lowHPThreshold = 0.35f;          // HP 低于此比例考虑撤退
        public readonly float dangerThreatThreshold = 30f;     // 威胁分超过此值考虑撤退
        public readonly float threatImprovementRatio = 0.5f;   // 新位置威胁需 < 当前位置 * 此值

        // ── 支援触发 ──
        public readonly float healThreshold = 0.7f;            // 友军 HP 高于此比例不治疗

        // ── 集火衰减 ──
        public readonly float focusFirePenaltyPerUnit = 0.15f; // 每多一个队友盯同一目标的边际价值衰减
        public readonly float commitmentPenaltyFloor = 0.3f;   // 集火衰减下限

        // ── 执行节奏 ──
        public readonly float planStepWaitSeconds = 0.5f;       // 计划步骤(AIPlanStep.Wait)等待时间
        public readonly float moveExecuteDelaySeconds = 0.3f;   // 移动指令后等待间隔
        public readonly float skillExecuteDelaySeconds = 0.5f;  // 技能指令后等待间隔
    }
}
