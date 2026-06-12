using System;
using System.Collections.Generic;
using UnityEngine;
using Status.state;
using Global;
using UnityEngine.AddressableAssets;
using GamePlay.Skill;
using Cysharp.Threading.Tasks;

namespace Character
{
    namespace data{

        [System.Serializable]
        public class LevelReward
        {
            public LevelRewardType Type;
            
            [Tooltip("目标ID：可以是属性名(HP/ATK)，也可以是技能ID")]
            public string TargetID; 
            
            [Tooltip("数值：属性增加量，或者技能的目标等级")]
            public int Value;
        }

        [System.Serializable]
        public class LevelUpEntry
        {
            public int Level; 
            public List<LevelReward> Rewards; 
        }
        [CreateAssetMenu(fileName = "NewCharacter", menuName = "GameData/Character")]

        public class GlobalLevelConfig : ScriptableObject
        {
            public List<int> ExpRequirements;
        }
    }
    namespace instance{
        using data;
        using Status.state;
        public class CharacterInstance
        {
            public CharacterData characterData;
            public StatSystem statSystem;
            public SkillInventory SkillInventory { get; private set; }
            public int level = 1;
            public int maxLevel = 5;

            public int MP
            {
                get => statSystem.currentMP;
                set => statSystem.currentMP = value;
            }
            public int MaxMP => (int)statSystem.maxMP.getValue();

            public bool HasEnoughMP(int cost) => statSystem.currentMP >= cost;

            public CharacterInstance(CharacterData characterData)
            {
                this.characterData = characterData;
                statSystem = new StatSystem(characterData);
                SkillInventory = new SkillInventory();
            }
            /// <summary>
            /// 现在characterData自己拿着skillConfig引用  skillConfig可以直接为null
            /// </summary>
            /// <param name="skillConfig"></param>
            /// <param name="currentLevel"></param>
            /// <returns></returns>
            public async UniTask InitializeSkillsAsync(CharacterSkillConfig skillConfig = null, int currentLevel = 0)
            {
                if(characterData.skillConfig != null) await SkillInventory.InitializeAsync(characterData.skillConfig,currentLevel);
                else await SkillInventory.InitializeAsync(skillConfig, currentLevel);
            }

            public void LevelUp(List<LevelReward> rewards)
            {
                level++;
                Debug.Log($"{characterData.CharacterName} 升级到了 Lv.{level}！");

                foreach (var reward in rewards)
                {
                    ApplyReward(reward);
                }
                statSystem.currentHP = (int)statSystem.maxHP.getValue();
                statSystem.currentMP = (int)statSystem.maxMP.getValue();
                
                SkillInventory.RefreshSkillsAsync(level).Forget();
            }

            private void ApplyReward(LevelReward reward)
            {
                switch (reward.Type)
                {
                    case LevelRewardType.StatGrowth:
                        ApplyStatGrowth(reward.TargetID, reward.Value);
                        break;
                    
                    case LevelRewardType.UnlockSkill:
                        Debug.Log($"[SkillInventory] 技能解锁由 SkillInventory 自动处理: {reward.TargetID}");
                        break;
                        
                    case LevelRewardType.UpgradeSkill:
                        Debug.Log($"[SkillInventory] 技能升级由 SkillInventory 自动处理: {reward.TargetID}");
                        break;
                }
            }

            private void ApplyStatGrowth(string statName, int value)
            {
                StatModifier mod = new StatModifier(value, StatModType.Flat, "LevelUp");

                switch (statName)
                {
                    case "HP": 
                        statSystem.maxHP.addModifier(mod); 
                        break;
                    case "ATK": statSystem.ATK.addModifier(mod); break;
                    case "DEF": statSystem.DEF.addModifier(mod); break;
                    case "RES": statSystem.RES.addModifier(mod); break;
                    case "MOV": statSystem.moveRange.addModifier(mod); break;
                    case "MP": statSystem.maxMP.addModifier(mod); break;
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
