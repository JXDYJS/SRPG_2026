using GamePlay.Event;
using Map;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Panel
{
    /// <summary>
    /// 特殊事件窗口占位 — 验证 panelName 短路分发。
    /// 配表 EventConfig.panelName 填本面板类名即被 EventFlow 反射打开。
    /// 后续翻牌等小游戏事件在此扩展（内部可复用 EventFlow 执行奖励/跳屏）。
    /// </summary>
    [UIPanelResource("UI/Event/EventStubMiniGamePanel")]
    public class EventStubMiniGamePanel : BaseUIPanel, IEventPanel
    {
        public TextMeshProUGUI infoText;
        public Button exitButton;

        public void Init(EventNode node)
        {
            if (infoText != null)
            {
                infoText.text = "小游戏占位面板（panelName 分发已验证）。\n后续在此实现翻牌等小游戏。";
            }
        }

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);
            if (data is EventNode node)
            {
                Init(node);
            }
            if (exitButton != null)
            {
                exitButton.onClick.RemoveAllListeners();
                exitButton.onClick.AddListener(() => EventFlow.Finish<EventStubMiniGamePanel>());
            }
        }
    }
}
