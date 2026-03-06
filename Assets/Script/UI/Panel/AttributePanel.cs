using TMPro;
using UnityEngine;
using GamePlay.unit;

namespace UI.Panel
{
    public class AttributePanel : BaseUIPanel
    {
        [Header("属性文本引用")]
        [SerializeField] private TextMeshProUGUI nameText;
        [SerializeField] private TextMeshProUGUI hpText;
        [SerializeField] private TextMeshProUGUI atkText;
        [SerializeField] private TextMeshProUGUI defText;
        [SerializeField] private TextMeshProUGUI resText;
        [SerializeField] private TextMeshProUGUI speedText;

        public void Show(MapUnit unit)
        {
            if (unit == null || unit.Character == null) return;

            nameText.text = unit.Character.characterData.CharacterName;
            hpText.text = "HP: " + unit.Character.statSystem.currentHP + " / " + unit.Character.statSystem.maxHP.getValue();
            atkText.text = "ATK: " + unit.Character.statSystem.ATK.getValue();
            defText.text = "DEF: " + unit.Character.statSystem.DEF.getValue();
            resText.text = "RES: " + unit.Character.statSystem.RES.getValue();
            speedText.text = "SPEED: " + unit.Character.statSystem.Speed.getValue();

            PanelObject.SetActive(true);
        }

        public void Hide()
        {
            PanelObject.SetActive(false);
        }
    }
}
