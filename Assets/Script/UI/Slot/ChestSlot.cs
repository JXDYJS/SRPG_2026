using System;
using System.Collections.Generic;
using Managers;
using UI.Panel;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    /// <summary>
    /// Victory chest spawned in the battle scene. Clicking it opens the reward
    /// window with the configured rewards; onAllClaimed is invoked when every
    /// reward has been claimed (set by the battle flow).
    /// </summary>
    public class ChestSlot : MonoBehaviour
    {
        public Button btn;
        public List<RewardData> rewards = new List<RewardData>();
        public Action onAllClaimed;

        public void OnEnable()
        {
            if (btn != null)
            {
                btn.onClick.AddListener(OnClick);
            }
        }

        private void OnClick()
        {
            var ctx = new RewardOpenContext
            {
                rewards = rewards,
                onAllClaimed = onAllClaimed,
            };
            UIManager.Instance.OpenPanel<RewardWindow>(ctx);
            gameObject.SetActive(false);
            Destroy(gameObject);
        }

        public void OnDisable()
        {
            if (btn != null)
            {
                btn.onClick.RemoveAllListeners();
            }
        }
    }
}
