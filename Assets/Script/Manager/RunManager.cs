using UnityEngine;
using System.Collections.Generic;
using GamePlay.Relics;
using Character.instance;
using Character.data;
using Core.Data;
using Core.Data.Persistent;
using Status.state;
using Cysharp.Threading.Tasks;

namespace Managers
{
    enum GameFlowType
    {
        MapSelection,
        BattleLoading,
        Battle,
        BattleEnd
    }
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
            if (relic == null) return;

            if (!Relics.Contains(relic)) Relics.Add(relic);

            // 持久化遗物 ID
            if (Data.Persistent?.Data != null)
            {
                if (!Data.Persistent.Data.relics.Contains(relic.ID))
                {
                    Data.Persistent.Data.relics.Add(relic.ID);
                    Data.Persistent.Save();
                }
            }

            Debug.Log($"[RunManager] 获得遗物: {relic.Name} ({relic.ID})");
        }

        // ==================== 金币（持久化于 PlayerProgressData.gold） ====================

        /// <summary>当前金币余额</summary>
        public int Gold => Data.Persistent?.Data?.progress?.gold ?? 0;

        public void AddGold(int amount)
        {
            if (amount <= 0 || Data.Persistent?.Data == null) return;
            Data.Persistent.Data.progress.gold += amount;
            Data.Persistent.Save();
            Debug.Log($"[RunManager] 获得 {amount} 金币，当前: {Gold}");
        }

        /// <summary>尝试花费金币，余额不足返回 false</summary>
        public bool TrySpendGold(int amount)
        {
            if (amount <= 0) return true;
            if (Gold < amount) return false;

            Data.Persistent.Data.progress.gold -= amount;
            Data.Persistent.Save();
            Debug.Log($"[RunManager] 花费 {amount} 金币，剩余: {Gold}");
            return true;
        }

        /// <summary>
        /// 购买商店物品：先扣款，钱袋类遗物直接加金币，普通遗物进收藏。
        /// 物品无法创建时自动退款。
        /// </summary>
        public bool PurchaseItem(string itemId, int price)
        {
            if (string.IsNullOrEmpty(itemId)) return false;
            if (!TrySpendGold(price)) return false;

            if (itemId == GamePlay.Relics.RelicPouchOfEmeralds.ITEM_ID)
            {
                AddGold(GamePlay.Relics.RelicPouchOfEmeralds.GOLD_AMOUNT);
                return true;
            }

            RelicBase relic = RelicManager.CreateRelicFromID(itemId);
            if (relic == null)
            {
                AddGold(price);
                Debug.LogWarning($"[RunManager] 商品 '{itemId}' 无法创建，已退款 {price} 金币");
                return false;
            }

            AddRelic(relic);
            return true;
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

            // 恢复遗物
            Relics.Clear();
            if (Data.Persistent?.Data?.relics != null)
            {
                foreach (var relicId in Data.Persistent.Data.relics)
                {
                    RelicBase relic = RelicManager.CreateRelicFromID(relicId);
                    if (relic != null) Relics.Add(relic);
                    else Debug.LogWarning($"[RunManager] 无法恢复遗物: {relicId}");
                }
                Debug.Log($"[RunManager] 恢复了 {Relics.Count} 个遗物");
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
