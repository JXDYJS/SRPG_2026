using UnityEngine;
using Map;
using UnityEngine.UI;
using Core.Data;
using GamePlay.Battle;
using GamePlay.Event;
using Cysharp.Threading.Tasks;
using Managers;
using UI.Panel;
using System;
using Unity.VisualScripting;
namespace UI.Slot
{
    public class MapNodeSlot : MonoBehaviour
    {
        public UnityEngine.UI.Image Icon;
        public Sprite BattleIcon;
        public Sprite ShopIcon;
        public Sprite EventIcon;
        public Sprite BossIcon;
        public BaseNode node;
        public Button button;
        public Color maskColor;

        public void Init(BaseNode node)
        {
            this.node = node;
            Icon.gameObject.SetActive(true);
            Icon.sprite = GetSprite(node.type);
            Vector2 offset = new(UnityEngine.Random.Range(-5f, 5f), UnityEngine.Random.Range(-5f, 5f));
            var oriPos = Icon.transform.position;
            Icon.transform.position = new(oriPos.x + offset.x, oriPos.y + offset.y, oriPos.z);
            addEvent();
            updateMask(node.isLock);
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
        public void addEvent()
        {
            if (this.node == null || this.button == null)
            {
                Debug.LogError("node or btn is null");
                return;
            }
            this.button.onClick.AddListener(() =>
            {
                var win = UIManager.Instance.GetPanel<MapPopWindow>();
                if (win != null)
                {
                    win.playerLayer = node.col;
                    win.playerRow = node.row;
                }
                UIManager.Instance.ClosePanel<MapPopWindow>();
                if (node is BattleNode battleNode)
                {
                    var level = battleNode.level;
                    if (Data.Persistent?.Data != null)
                    {
                        Data.Persistent.Data.currentStageId = battleNode.level;
                    }
                    if (Data.Table.LevelConfigs.TryGetValue(battleNode.level, out var levelConfig))
                    {
                        BattleFlowManager.Instance.LoadLevelAsync(levelConfig).Forget();
                    }
                    else
                    {
                        Debug.Log("levelConfig not found");
                    }
                }
                else if (node is ShopNode shopNode)
                {
                    var shop = UIManager.Instance.OpenPanel<ShopPopPanel>(null, UILayer.Popup);
                    if (shop != null)
                    {
                        shop.Init(shopNode);
                    }
                }
                else if (node is EventNode eventNode)
                {
                    EventFlow.Start(eventNode);
                }
                node._onEnterNode?.Invoke();

                if (win != null)
                {
                    // Unlock the next layer right away (and persist) so a mid-level
                    // exit + continue never leaves the whole map locked.
                    win.UnlockNextFromCurrent();
                }
            });

            this.node._onLockChange += updateMask;
        }
        public void OnDestroy()
        {
            if (this.button)
            {
                this.button.onClick.RemoveAllListeners();
            }
            if (this.node != null && this.node._onLockChange != null)
            {
                this.node._onLockChange -= updateMask;
            }
        }

        public void OnDisable()
        {
            if (this.button)
            {
                this.button.onClick.RemoveAllListeners();
            }
            if (this.node != null && this.node._onLockChange != null)
            {
                this.node._onLockChange -= updateMask;
            }
        }
        public void updateMask(bool isLock)
        {
            if (isLock)
            {
                button.interactable = false;
                Icon.color = maskColor;
            }
            else
            {
                button.interactable = true;
                Icon.color = new(1.0f, 1.0f, 1.0f, 1.0f);
            }
        }
    }
}