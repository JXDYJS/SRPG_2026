using System.Collections.Generic;
using UnityEngine;

namespace GamePlay.Skill
{
    [System.Serializable]
    public class SkillLevelEntry
    {
        [Tooltip("解锁/升级所需角色等级")]
        public int RequiredLevel = 1;
        
        [Tooltip("该等级对应的技能数据")]
        public SkillDataSO SkillData;
    }

    [System.Serializable]
    public class SkillSlotConfig
    {
        [Tooltip("技能槽位类型")]
        public SkillSlotType SlotType;
        
        [Tooltip("UI显示名称")]
        public string SlotDisplayName;
        
        [Tooltip("技能进化链（按等级升序排列）")]
        public List<SkillLevelEntry> EvolutionChain = new List<SkillLevelEntry>();

        public SkillLevelEntry GetSkillAtLevel(int characterLevel)
        {
            SkillLevelEntry result = null;
            
            foreach (var entry in EvolutionChain)
            {
                if (entry.RequiredLevel <= characterLevel)
                {
                    result = entry;
                }
                else
                {
                    break;
                }
            }
            
            return result;
        }

        public int GetSkillIndexAtLevel(int characterLevel)
        {
            int index = -1;
            
            for (int i = 0; i < EvolutionChain.Count; i++)
            {
                if (EvolutionChain[i].RequiredLevel <= characterLevel)
                {
                    index = i;
                }
                else
                {
                    break;
                }
            }
            
            return index;
        }

        public bool IsUnlockedAtLevel(int characterLevel)
        {
            return GetSkillAtLevel(characterLevel) != null;
        }
    }
}
