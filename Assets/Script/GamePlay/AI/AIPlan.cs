using System.Collections.Generic;

namespace GamePlay.AI
{
    public class AIPlan
    {
        public List<AIPlanStep> Steps { get; private set; }
        public int CurrentStepIndex { get; set; }
        public bool IsFinished => CurrentStepIndex >= Steps.Count;

        public AIPlan()
        {
            Steps = new List<AIPlanStep>();
            CurrentStepIndex = 0;
        }

        public void AddStep(AIPlanStep step)
        {
            Steps.Add(step);
        }
    }
}
