using System.Collections.Generic;
using UnityEngine;

namespace GamePlay.Skill
{
    [CreateAssetMenu(fileName = "CharacterSkillConfig", menuName = "GameData/CharacterSkillConfig")]
    public class CharacterSkillConfig : ScriptableObject
    {
        [Tooltip("对应的角色ID，与 CharacterData.ID 匹配")]
        public string CharacterID;
        
        [Tooltip("角色的技能槽位配置列表")]
        public List<SkillSlotConfig> SkillSlots = new List<SkillSlotConfig>();

        public SkillSlotConfig GetSlotConfig(SkillSlotType slotType)
        {
            return SkillSlots.Find(s => s.SlotType == slotType);
        }
    }
}
