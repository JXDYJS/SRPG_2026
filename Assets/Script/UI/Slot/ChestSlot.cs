using Managers;
using UI.Panel;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    public class ChestSlot : MonoBehaviour
    {
        public Button btn;
        public void OnEnable()
        {
            btn.onClick.AddListener(OnClick);
        }
        private void OnClick()
        {
            UIManager.Instance.OpenPanel<RewardWindow>();
            gameObject.SetActive(false);
            Destroy(gameObject);//销毁自己
        }
        public void OnDisable()
        {
            btn.onClick.RemoveAllListeners();
        }
    }
}