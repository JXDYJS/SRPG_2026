using UnityEngine;
using UI;
using Managers;
namespace UI.BootsTrap{
    public class BattleBootstrap : MonoBehaviour
    {
        [Header("UI 预制体")]
        [SerializeField] private GameObject timelinePrefab;  // 拖拽引用

        public TimelinePanel TimelineUI { get; private set; }

        private void Awake()
        {
            
        }
        public void Start()
        {
            startTimeLine();
        }

        private void OnDestroy()
        {
            if (TimelineUI != null)
                Destroy(TimelineUI.gameObject);
        }
        private void startTimeLine()
        {
            if (UIManager.Instance?.Background == null)
            {
                Debug.LogError("UIRoot 未就绪");
                return;
            }

            var instance = Instantiate(timelinePrefab, UIManager.Instance.Background);
            TimelineUI = instance.GetComponent<TimelinePanel>();
        }
    }
}