using System;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Core.Data;
using GamePlay.Units;
using GamePlay.Skill;
using GamePlay.Relics;
using UnityEngine.AddressableAssets;
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
                    _defaultSprite = Resources.Load<Sprite>(Data.Config.ViewConfig.defaultImage);
                return _defaultSprite;
            }
        }
        private List<Action> _unsubscribeActions = new List<Action>();
        public void Init<T>(T item, MapUnit unit = null, string label = null)
        {
            Clear();
            if (item is GamePlay.Buff.BuffBase buff)
            {
                Action Refresh = () =>
                {
                    if (buff.Icon == null)
                    {
                        ItemIcon.sprite = DefaultSprite;
                    }
                    else ItemIcon.sprite = buff.Icon;
                    text.text = $"{buff.Name}\n{buff.Stacks}";
                };
                Refresh();
                buff._onChange += Refresh;
                _unsubscribeActions.Add(() => buff._onChange -= Refresh);
            }
            else if (item is Status.state.Stat stat)
            {
                if (unit == null || string.IsNullOrEmpty(label))
                {
                    Debug.LogError("SimpleSlot: unit and label required for Stat display");
                    return;
                }
                if (ItemIcon != null) ItemIcon.gameObject.SetActive(false);
                Action Refresh = () =>
                {
                    string number = $"{stat.getValue()}";
                    if (label == "HP" || label == "MP")
                    {
                        if (label == "HP")
                            number = $"{unit.Character.statSystem.currentHP} / {stat.getValue()}";
                        if (label == "MP")
                            number = $"{unit.Character.statSystem.currentMP} / {stat.getValue()}";
                    }
                    text.text = $"{label}: {number}";
                };
                Refresh();
                stat.OnValueChanged += Refresh;
                _unsubscribeActions.Add(() => stat.OnValueChanged -= Refresh);
            }
            else if (item is SkillDataSO skill)
            {
                if (ItemIcon != null)
                {
                    if (skill.Icon != null)
                        ItemIcon.sprite = skill.Icon;
                    else
                        ItemIcon.sprite = DefaultSprite;
                    ItemIcon.gameObject.SetActive(true);
                }
                text.text = $"{skill.SkillName}\n{skill.Description}";
            }
            else if(item is RelicBase relic)
            {
                //显示relic的构造跟普通的不太一样 或许这里还可以兜底一下预制件布局？
                var relicConfig = Data.Table.RelicConfigs[relic.relicId];
                var path = relicConfig.sprite;
                if (path != "")
                {
                    var icon = Addressables.LoadAssetAsync<UnityEngine.Sprite>(path).WaitForCompletion();
                    if(icon != null)
                    {
                        ItemIcon.sprite = icon;
                    }
                }
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