using System;
using System.Collections.Generic;
using UnityEngine;
using Status.state;
using Global;

namespace Character
{
    namespace data{

        // 单个奖励的数据包
        [System.Serializable]
        public class LevelReward
        {
            public LevelRewardType Type;
            
            [Tooltip("目标ID：可以是属性名(HP/ATK)，也可以是技能ID")]
            public string TargetID; 
            
            [Tooltip("数值：属性增加量，或者技能的目标等级")]
            public int Value;
        }

        // 每一级的配置
        [System.Serializable]
        public class LevelUpEntry
        {
            public int Level; 
            public List<LevelReward> Rewards; 
        }
        [CreateAssetMenu(fileName = "NewCharacter", menuName = "GameData/Character")]
        public class CharacterData : ScriptableObject
        {
            [Header("基本信息")]
            public string ID;           // 唯一ID，用于存档 (例如 "Hero_Arthur")
            public string CharacterName;// 显示名称 (例如 "亚瑟")
            [TextArea] 
            public string Description;  // 描述
            public Sprite Icon;         // 头像 (UI用)
            public GameObject Prefab;   // 对应的 3D 模型/预制体

            [Header("基础属性 (出厂设置)")]
            public int BaseMaxHP;
            public int BaseATK;
            public int BaseDEF;
            public int BaseRES;
            public int MoveRange;       // 移动力 (例如 3 格)
            public int Height;          // 高度 (例如 1 格)
            public int Speed;           //行动速度

            [Header("战斗配置")]
            // 定义攻击范围模式 (例如：十字形、前方2格、周围1圈)
            // 我们可以用一个 List<Vector2Int> 来表示相对于自己的攻击坐标
            // (0, 1) 表示前方一格，(0, 2) 表示前方两格
            //public List<Vector2Int> AttackPattern; 
            
            // 先用枚举定义范围类型
            public AttackRangeType RangeType;
            public AttackPatternType Pattern;
            public int MinRange = 1;
            public int MaxRange = 1;

            [Tooltip("自定义攻击范围 (相对坐标，仅在 Pattern 为 Custom 时生效)")]

            public List<Vector2Int> CustomPattern;

            [Header("升级配置")]
            public List<LevelUpEntry> GrowthTable;
            [Header("阵营配置")]
            public FactionType DefaultFaction;
            
        }

        public class GlobalLevelConfig : ScriptableObject
        {
            public List<int> ExpRequirements;// 升级所需经验 
        }
    }
    namespace instance{
        using data;
        using Status.state;
        public class CharacterInstance
        {
            public CharacterData characterData;
            public StatSystem statSystem;
            public int level = 1;
            public int maxLevel = 5;
            public CharacterInstance(CharacterData characterData)
            {
                this.characterData = characterData;
                statSystem = new StatSystem(characterData);
            }

            public void LevelUp(List<LevelReward> rewards)
            {
                level++;
                Debug.Log($"{characterData.CharacterName} 升级到了 Lv.{level}！");

                // 1. 应用奖励
                foreach (var reward in rewards)
                {
                    ApplyReward(reward);
                }
                statSystem.currentHP = (int)statSystem.maxHP.getValue();
            }

            private void ApplyReward(LevelReward reward)
            {
                switch (reward.Type)
                {
                    case LevelRewardType.StatGrowth:
                        ApplyStatGrowth(reward.TargetID, reward.Value);
                        break;
                    
                    case LevelRewardType.UnlockSkill:
                        // 预留位置：SkillManager.Unlock(this, reward.TargetID);
                        Debug.Log($"[TODO] 解锁技能: {reward.TargetID}");
                        break;
                        
                    case LevelRewardType.UpgradeSkill:
                        // 预留位置：SkillManager.Upgrade(this, reward.TargetID);
                        Debug.Log($"[TODO] 升级技能: {reward.TargetID}");
                        break;
                }
            }

            private void ApplyStatGrowth(string statName, int value)
            {
                // 使用 Modifier 模式，来源标记为 "LevelUp"
                StatModifier mod = new StatModifier(value, StatModType.Flat, "LevelUp");

                switch (statName)
                {
                    case "HP": 
                        statSystem.maxHP.addModifier(mod); 
                        break;
                    case "ATK": statSystem.ATK.addModifier(mod); break;
                    case "DEF": statSystem.DEF.addModifier(mod); break;
                    case "RES": statSystem.RES.addModifier(mod); break;
                    default: Debug.LogWarning($"未知的属性成长: {statName}"); break;
                }
            }

            public virtual void LevelUp()
            {
                if(level < maxLevel)
                {
                    LevelUp(characterData.GrowthTable[level - 1].Rewards);

                }
            }
        }
    }
}
