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


        public int Gold => Data.Persistent?.Data?.progress?.gold?.Value ?? 0;

        /// <summary>
        /// Clears run state; RunManager persists across scenes, so a new game must clear old data.
        /// </summary>
        public void ResetRun()
        {
            MyTeam.Clear();
            Relics.Clear();
            Debug.Log("[RunManager] Run 运行时状态已重置");
        }

        public void AddGold(int amount)
        {
            if (amount <= 0 || Data.Persistent?.Data == null) return;
            Data.Persistent.Data.progress.gold.Value += amount;
            Data.Persistent.Save();
            Debug.Log($"[RunManager] 获得 {amount} 金币，当前: {Gold}");
        }

        public bool TrySpendGold(int amount)
        {
            if (amount <= 0) return true;
            if (Gold < amount) return false;

            Data.Persistent.Data.progress.gold.Value -= amount;
            Data.Persistent.Save();
            Debug.Log($"[RunManager] 花费 {amount} 金币，剩余: {Gold}");
            return true;
        }

        /// <summary>
        /// Deducts first; pouch relics add gold directly, other relics go to the collection.
        /// Refunds automatically if the item cannot be created.
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
        /// Unified item grant entry, routed by category (shared with ItemView via ItemCatalog).
        /// Currency adds gold (amount used); Relic is created and kept (amount ignored).
        /// Purchase rules like pouch conversion stay in PurchaseItem.
        /// </summary>
        public bool GiveItem(string itemId, int amount = 1)
        {
            if (!ItemCatalog.TryResolve(itemId, out ItemKind kind)) return false;

            switch (kind)
            {
                case ItemKind.Currency:
                    AddGold(amount);
                    return true;
                case ItemKind.Relic:
                    RelicBase relic = RelicManager.CreateRelicFromID(itemId);
                    if (relic == null) return false;
                    AddRelic(relic);
                    return true;
                case ItemKind.Character:
                    Debug.LogWarning($"[RunManager] giveitem 暂不支持角色: {itemId}");
                    return false;
            }
            return false;
        }

        /// <summary>
        /// Fills MyTeam from save data (async; loads Addressables skills).
        /// Falls back to BattleConfig.InitialPlayer when no saved party exists.
        /// </summary>
        public async UniTask PopulateFromSaveData(List<CharacterSaveData> savedCharacters)
        {
            MyTeam.Clear();

            if (savedCharacters == null || savedCharacters.Count == 0)
            {
                savedCharacters = BuildInitialParty();
                if (savedCharacters.Count == 0)
                    return;
                Debug.Log($"[RunManager] 无存档队伍，使用配置初始角色 {savedCharacters.Count} 名");
            }

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

        /// <summary>
        /// Builds the Lv.1 starting party from BattleConfig.InitialPlayer (names resolved to IDs).
        /// </summary>
        private List<CharacterSaveData> BuildInitialParty()
        {
            List<CharacterSaveData> list = new List<CharacterSaveData>();
            List<CharacterData> all = CharacterData.LoadAll();
            foreach (string name in Data.Config.BattleConfig.InitialPlayer)
            {
                CharacterData cd = all.Find(c => c.CharacterName == name);
                if (cd == null)
                {
                    Debug.LogWarning($"[RunManager] 初始角色 '{name}' 未找到对应 CharacterData，已跳过");
                    continue;
                }
                list.Add(new CharacterSaveData { characterId = cd.ID, level = 1 });
            }
            return list;
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
