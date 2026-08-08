using Core.Data;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    /// <summary>
    /// 事件选项槽 — 挂在事件窗口的选项 prefab 上。
    /// 显示 title/desc，条件不可用时按钮禁用，点击回调由事件窗口注入。
    /// </summary>
    public class EventOptionSlot : MonoBehaviour
    {
        public TextMeshProUGUI titleText;
        public TextMeshProUGUI descText;
        public Button button;

        public void Setup(TableData.EventOption option, bool available, System.Action<TableData.EventOption> onClick)
        {
            if (titleText != null) titleText.text = option.title;
            if (descText != null) descText.text = option.desc;
            if (button != null)
            {
                button.interactable = available;
                button.onClick.RemoveAllListeners();
                button.onClick.AddListener(() => onClick?.Invoke(option));
            }
        }
    }
}
