namespace Core.Data.Runtime
{
    /// <summary>
    /// BattleRuntimeData — 战斗运行时状态
    ///
    /// 存放内容（每局战斗重置）：
    ///   - 当前回合数
    ///   - 已阵亡单位统计
    ///   - 战斗耗时
    ///   - 关卡星级评定数据
    ///
    /// 生命周期：BattleFlowManager 开始时创建，结束时销毁
    /// </summary>
    public class BattleRuntimeData
    {
        /// <summary>当前回合数（所有单位行动一次 = 1 回合）</summary>
        public int CurrentRound;

        /// <summary>玩家方阵亡数</summary>
        public int PlayerDeaths;

        /// <summary>敌方阵亡数</summary>
        public int EnemyDeaths;

        /// <summary>战斗已用时间（秒）</summary>
        public float ElapsedTime;

        public void Reset()
        {
            CurrentRound = 0;
            PlayerDeaths = 0;
            EnemyDeaths = 0;
            ElapsedTime = 0f;
        }
    }
}
