using UnityEngine;
using System.Collections;
using GamePlay.AI.Tasks;
using GamePlay.Units;

namespace GamePlay.AI
{
    public class AITaskSystem : MonoBehaviour
    {
        public static AITaskSystem Instance { get; private set; }

        private AIDirector _director;
        private TaskBidding _bidding;
        private AITaskExecutor _executor;

        void Awake()
        {
            Instance = this;
            _director = new AIDirector();
            _bidding = new TaskBidding();
            _executor = new AITaskExecutor();
        }

        public IEnumerator ExecuteTurn(MapUnit unit)
        {
            yield break;
        }
    }
}
