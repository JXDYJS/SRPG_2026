using UnityEngine;
using Map;
namespace UI.Slot
{
    public class MapNodeSlot:MonoBehaviour
    {
        public UnityEngine.UI.Image Icon;
        public Sprite BattleIcon;
        public Sprite ShopIcon;
        public Sprite EventIcon;
        public Sprite BossIcon;
        public BaseNode node;

        public void Init(BaseNode node)
        {
            this.node = node;
            Icon.gameObject.SetActive(true);
            Icon.sprite = GetSprite(node.type);
            Vector2 offset = new(UnityEngine.Random.Range(-10f,10f),UnityEngine.Random.Range(-10f,10f));
            var oriPos = Icon.transform.position;
            Icon.transform.position = new(oriPos.x + offset.x,oriPos.y + offset.y,oriPos.z);
        }

        private Sprite GetSprite(MapType type)
        {
            return type switch
            {
                MapType.Battle => BattleIcon,
                MapType.Shop => ShopIcon,
                MapType.Event => EventIcon,
                MapType.Boss => BossIcon,
                _ => null,
            };
        }

        public void Reset()
        {
            Icon.gameObject.SetActive(false);
        }
    }
}