using Unity;
using Unity.VisualScripting;
using UnityEngine;

namespace UI.Slot{
    public class ChoosePlayerSlot : MonoBehaviour
    {
        public UnityEngine.UI.Image playerImg;
        public void init()
        {
            if (playerImg == null)
            {
                Debug.LogError("img is null");
            }
        }
    }
}