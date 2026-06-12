using System.Collections.Generic;
using GamePlay.AI.Tasks;

namespace Core.Data.Runtime
{
    /// <summary>
    /// AiruntimeData — AI 运行时状态
    ///
    /// 存放内容（每局战斗重置）：
    ///   - 当前任务池（AIDirector 生成）
    ///   - 已分配的任务列表
    ///   - 任务执行历史（调试用）
    ///   - AI 感知缓存（威胁图快照等）
    ///
    /// 生命周期：BattleFlowManager 开始时创建，结束时销毁
    /// </summary>
    public class AIRuntimeData
    {
        /// <summary>当前回合未分配的任务池</summary>
        public List<AITask> TaskPool = new List<AITask>();

        /// <summary>本场战斗所有已接取的任务</summary>
        public List<AITask> AssignedTasks = new List<AITask>();

        /// <summary>本回合已行动的单位数</summary>
        public int UnitsActedThisRound;

        public void ResetForNewRound()
        {
            TaskPool.Clear();
            UnitsActedThisRound = 0;
        }

        public void Clear()
        {
            TaskPool.Clear();
            AssignedTasks.Clear();
            UnitsActedThisRound = 0;
        }
    }
}
