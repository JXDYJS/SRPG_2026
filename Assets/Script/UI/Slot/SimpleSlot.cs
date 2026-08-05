using System;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Core.Data;
using UnityEngine.AddressableAssets;
using UI.Item;
namespace UI.Slot
{
    public class SimpleSlot : MonoBehaviour
    {
        public UnityEngine.UI.Image ItemIcon;
        public TextMeshProUGUI text;
        private static Sprite _defaultSprite;
        private static Sprite DefaultSprite
        {
            get
            {
                if (_defaultSprite == null)
                    _defaultSprite = LoadAddressableSprite(Data.Config.ViewConfig.defaultAddressableImage)
                                     ?? Resources.Load<Sprite>(Data.Config.ViewConfig.defaultImage);
                return _defaultSprite;
            }
        }

        /// <summary>通过 Addressables 地址加载 Sprite，未配置或加载失败返回 null（由调用方决定兜底）</summary>
        private static Sprite LoadAddressableSprite(string address)
        {
            if (string.IsNullOrEmpty(address)) return null;
            return Addressables.LoadAssetAsync<Sprite>(address).WaitForCompletion();
        }

        private List<Action> _unsubscribeActions = new List<Action>();

        /// <summary>以运行时对象初始化，内部经 ItemView 解析为统一描述</summary>
        public void Init(object item, SlotContext ctx = default)
        {
            Clear();
            IItemDescriptor desc = ItemView.Resolve(item, ctx);
            if (desc == null)
            {
                Debug.LogError($"SimpleSlot: 无法解析槽位内容 {item}");
                return;
            }
            Init(desc);
        }

        /// <summary>以统一描述初始化（商店等场景可先由 ItemView.ResolveConfig 出描述）</summary>
        public void Init(IItemDescriptor desc)
        {
            Clear();
            if (desc == null) return;

            RenderIcon(desc);
            RenderText(desc);

            Action Refresh = () => RenderText(desc);
            desc.Changed += Refresh;
            _unsubscribeActions.Add(() => desc.Changed -= Refresh);
            _unsubscribeActions.Add(desc.Unlink);
        }

        private void RenderIcon(IItemDescriptor desc)
        {
            if (ItemIcon == null) return;
            if (!desc.ShowIcon)
            {
                ItemIcon.gameObject.SetActive(false);
                return;
            }
            Sprite icon = desc.Icon;
            if (icon == null)
            {
                icon = LoadAddressableSprite(desc.IconPath);
            }
            ItemIcon.sprite = icon != null ? icon : DefaultSprite;
            ItemIcon.gameObject.SetActive(true);
        }

        private void RenderText(IItemDescriptor desc)
        {
            if (text == null) return;
            string name = desc.Name;
            string subtext = desc.Subtext;
            if (string.IsNullOrEmpty(name))
            {
                text.text = subtext ?? string.Empty;
            }
            else if (string.IsNullOrEmpty(subtext))
            {
                text.text = name;
            }
            else
            {
                text.text = $"{name}\n{subtext}";
            }
        }

        public void Clear()
        {
            foreach (var unsubscribe in _unsubscribeActions)
            {
                unsubscribe?.Invoke();
            }
            _unsubscribeActions.Clear();
        }
        public void OnDestroy()
        {
            Clear();
        }
        public void OnDisable()
        {
            Clear();
        }
    }
}
