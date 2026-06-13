using UnityEngine;
using UI;
using Managers;

namespace UI.BootsTrap
{
    public class BattleBootstrap : MonoBehaviour
    {
        public TimelinePanel TimelineUI { get; private set; }

        public void Start()
        {
            startTimeLine();
        }

        private void startTimeLine()
        {
            if (UIManager.Instance?.Background == null)
            {
                Debug.LogError("UIRoot 未就绪");
                return;
            }

            TimelineUI = UIManager.Instance.OpenPanel<TimelinePanel>(null, UILayer.Background);
        }
    }
}
