using UnityEngine;
using System.Collections.Generic;
using Character; // 引入你的职业系统
using GamePlay.Units;
namespace Grid{
    public abstract class TacticalGoal
    {
        // 唯一标识，方便在 GoalManager 中追踪
        public string GoalID { get; private set; } 
        
        // 这个任务最多需要几个人？(比如：启动机关只需1人，围剿Boss需要3人)
        public int MaxAssignees { get; protected set; }
        public int CurrentAssignees { get; set; } = 0;

        // 基础优先级（由关卡导演赋予，决定了这个任务的绝对重要性）
        public float BasePriority { get; protected set; }

        public TacticalGoal(float basePriority, int maxAssignees = 1)
        {
            GoalID = System.Guid.NewGuid().ToString("N");
            BasePriority = basePriority;
            MaxAssignees = maxAssignees;
        }

        // --- 状态与生命周期 ---
        
        // 判断该任务是否对当前正在思考的 AI 开放接单
        public bool IsAvailable => CurrentAssignees < MaxAssignees && !IsCompleted() && !IsFailed();
        
        public abstract bool IsCompleted();
        public abstract bool IsFailed();

        // --- 核心 AI 交互接口 ---

        /// <summary>
        /// 1. 空间辐射：任务向地图注入战略分数 (由 TacticalMapManager 在刷新时调用)
        /// </summary>
        public abstract void InjectStrategicInfluence(InfluenceMapLayer strategicMap);

        /// <summary>
        /// 2. 效用评估：任务评估当前 AI 有多适合做这件事 (由具体 AI 在接单时调用)
        /// </summary>
        public abstract float CalculateUtilityFor(MapUnit unit);
        
        // 接单登记
        public void Claim(MapUnit unit)
        {
            CurrentAssignees++;
            OnClaimed(unit);
        }
        
        protected virtual void OnClaimed(MapUnit unit) {}
    }
}