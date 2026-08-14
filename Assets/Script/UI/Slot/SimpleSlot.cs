using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using TMPro;
using Core.Data;
using UnityEngine.AddressableAssets;
using UI.Item;
using UI.Tooltip;
namespace UI.Slot
{
    public class SimpleSlot : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerMoveHandler
    {
        private IItemDescriptor _desc;
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

        /// <summary>Loads a Sprite by Addressables address; returns null when unset or load fails.</summary>
        private static Sprite LoadAddressableSprite(string address)
        {
            if (string.IsNullOrEmpty(address)) return null;
            return Addressables.LoadAssetAsync<Sprite>(address).WaitForCompletion();
        }

        private List<Action> _unsubscribeActions = new List<Action>();

        /// <summary>Initializes from a runtime object, resolved via ItemView to a unified descriptor.</summary>
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

        /// <summary>Initializes from a unified descriptor (e.g. shop resolves config first).</summary>
        public virtual void Init(IItemDescriptor desc)
        {
            Clear();
            _desc = desc;
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
            _desc = null;
        }
        public virtual void OnDestroy()
        {
            Clear();
        }
        public virtual void OnDisable()
        {
            Clear();
            TooltipHost.Hide();
        }


        public void OnPointerEnter(PointerEventData eventData)
        {
            if (_desc == null) return;
            TooltipHost.Show(_desc, Input.mousePosition);
        }

        public void OnPointerMove(PointerEventData eventData)
        {
            if (_desc == null) return;
            TooltipHost.Move(Input.mousePosition);
        }

        public void OnPointerExit(PointerEventData eventData)
        {
            TooltipHost.Hide();
        }
    }
}
