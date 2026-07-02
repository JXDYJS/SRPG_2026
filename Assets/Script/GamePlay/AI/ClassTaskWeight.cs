using Character;
using UnityEngine;
using GamePlay.AI.Tasks;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// 职业-任务权重计算器
    /// 根据 UnitClassSO 的性格字段 (Aggressiveness, Supportiveness, SelfPreservation)
    /// 计算单位对不同任务类型的偏好权重
    ///
    /// 映射关系:
    ///   Aggressiveness   → AttackTask、SkillTask(进攻型)
    ///   Supportiveness   → SupportTask、SkillTask(支援型)
    ///   SelfPreservation → DefendTask、MoveTask(撤退走位)
    /// </summary>
    public static class ClassTaskWeightCalculator
    {
        public static float GetTaskWeight(UnitClassSO unitClass, AITaskType taskType)
        {
            if (unitClass == null)
            {
                return 1.0f;
            }

            switch (taskType)
            {
                case AITaskType.Attack:
                    return unitClass.Aggressiveness * 1.5f;

                case AITaskType.Skill:
                    {
                        float blend = Data.Config.AIConfig.classWeight_SkillAggroBlend;
                        float mult  = Data.Config.AIConfig.classWeight_SkillMult;
                        return (unitClass.Aggressiveness * blend
                              + unitClass.Supportiveness * (1f - blend)) * mult;
                    }

                case AITaskType.Support:
                    return unitClass.Supportiveness * 1.5f;

                case AITaskType.Defend:
                    return unitClass.SelfPreservation * 1.5f;

                case AITaskType.Move:
                    return (unitClass.Aggressiveness + unitClass.SelfPreservation) * 0.5f;

                case AITaskType.Wait:
                    return 0.1f;

                default:
                    return 1.0f;
            }
        }
    }
}
