using UnityEngine;
using System.Collections.Generic;
using GamePlay.Relics;
using Character.instance;
using Character.data;
using Core.Data.Persistent;
using Status.state;
using Cysharp.Threading.Tasks;

namespace Managers
{
    public class RunManager : MonoBehaviour
    {
        public static RunManager Instance { get; private set; }

        [Header("肉鸽全局数据")]
        public List<RelicBase> Relics = new List<RelicBase>();
        public List<CharacterInstance> MyTeam = new List<CharacterInstance>();

        void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
                DontDestroyOnLoad(gameObject);
            }
            else
            {
                Destroy(gameObject);
            }
        }

        public void AddRelic(RelicBase relic)
        {
        }

        /// <summary>
        /// 从存档数据填充 MyTeam（异步，需要加载 Addressables 技能）
        /// </summary>
        public async UniTask PopulateFromSaveData(List<CharacterSaveData> savedCharacters)
        {
            MyTeam.Clear();

            if (savedCharacters == null || savedCharacters.Count == 0)
                return;

            foreach (var sd in savedCharacters)
            {
                CharacterData cd = CharacterData.LoadByID(sd.characterId);
                if (cd == null)
                {
                    Debug.LogWarning($"[RunManager] CharacterData with ID '{sd.characterId}' not found, skipping");
                    continue;
                }

                CharacterInstance ci = new CharacterInstance(cd);
                await ci.InitializeSkillsAsync(cd.skillConfig, sd.level);

                for (int i = 1; i < sd.level; i++)
                {
                    ci.LevelUp();
                }

                ApplyLevelBonusesFromSave(ci, sd);

                ci.statSystem.currentHP = (int)ci.statSystem.maxHP.getValue();
                ci.statSystem.currentMP = (int)ci.statSystem.maxMP.getValue();

                MyTeam.Add(ci);
                Debug.Log($"[RunManager] Restored character: {cd.CharacterName} Lv.{sd.level}");
            }
        }

        private void ApplyLevelBonusesFromSave(CharacterInstance ci, CharacterSaveData sd)
        {
            if (sd.bonusHp != 0f)
            {
                float hpBonus = ci.statSystem.maxHP.getValue() * sd.bonusHp;
                ci.statSystem.maxHP.addModifier(new StatModifier(hpBonus, StatModType.Flat, "LevelBonus"));
            }
            if (sd.bonusAtk != 0f)
            {
                float atkBonus = ci.statSystem.ATK.getValue() * sd.bonusAtk;
                ci.statSystem.ATK.addModifier(new StatModifier(atkBonus, StatModType.Flat, "LevelBonus"));
            }
            if (sd.bonusDef != 0f)
            {
                float defBonus = ci.statSystem.DEF.getValue() * sd.bonusDef;
                ci.statSystem.DEF.addModifier(new StatModifier(defBonus, StatModType.Flat, "LevelBonus"));
            }
            if (sd.bonusRes != 0f)
            {
                float resBonus = ci.statSystem.RES.getValue() * sd.bonusRes;
                ci.statSystem.RES.addModifier(new StatModifier(resBonus, StatModType.Flat, "LevelBonus"));
            }
        }
    }
}
