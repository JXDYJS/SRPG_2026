using Core.Data;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    /// <summary>Event option slot; click callback injected by the event window.</summary>
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
