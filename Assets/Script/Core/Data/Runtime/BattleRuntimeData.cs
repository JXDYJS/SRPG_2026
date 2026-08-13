namespace Core.Data.Runtime
{
    /// <summary>Per-battle runtime state; created and destroyed by BattleFlowManager.</summary>
    public class BattleRuntimeData
    {
        public int CurrentRound;

        public int PlayerDeaths;

        public int EnemyDeaths;

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
