using UnityEngine;
using UI;
using Managers;
using UI.Panel;
using Map;

namespace UI.BootsTrap
{
    public class BattleBootstrap : MonoBehaviour
    {
        public TimelinePanel TimelineUI { get; private set; }
        public MapPopWindow MapPopWindow;

        public void Start()
        {
            startMapPopWindow();
        }

        private void startMapPopWindow()
        {
            if (UIManager.Instance?.Background == null)
            {
                Debug.LogError("UIRoot 未就绪");
                return;
            }
            MapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            MapPopWindow.Init(NodeMapData.GenerateFakeData()); // todo: generate real data
        }
    }
}
