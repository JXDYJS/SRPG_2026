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

        /// <summary>Party-shared consumable stock: itemId -&gt; remaining uses.</summary>
        private readonly Dictionary<string, int> _itemStock = new Dictionary<string, int>();

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
            _itemStock.Clear();
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
        /// Currency adds gold (amount used); Relic is created and kept (amount ignored);
        /// Item adds to the shared stock (clamped to maxStock).
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
                case ItemKind.Item:
                    return AddItemStock(itemId, amount);
            }
            return false;
        }

        /// <summary>Remaining uses of an item; 0 when not held.</summary>
        public int GetItemStock(string itemId)
        {
            return _itemStock.TryGetValue(itemId, out int stock) ? stock : 0;
        }

        /// <summary>Whether the item is held (stock &gt; 0).</summary>
        public bool HasItem(string itemId)
        {
            return GetItemStock(itemId) > 0;
        }

        /// <summary>Consumes 1 use; false when out of stock. Persists to save.</summary>
        public bool TryConsumeItem(string itemId)
        {
            if (!_itemStock.TryGetValue(itemId, out int stock) || stock <= 0)
            {
                Debug.LogWarning($"[RunManager] Consume failed, out of stock: {itemId}");
                return false;
            }

            _itemStock[itemId] = stock - 1;
            SaveItems();
            Debug.Log($"[RunManager] Consumed {itemId} x1, remaining: {_itemStock[itemId]}");
            return true;
        }

        /// <summary>Adds amount to stock, clamped to maxStock; persists to save.</summary>
        private bool AddItemStock(string itemId, int amount)
        {
            if (amount <= 0) return false;
            if (!Data.Table.ItemConfigs.TryGetValue(itemId, out TableData.ItemConfig cfg))
            {
                Debug.LogWarning($"[RunManager] giveitem unknown item: {itemId}");
                return false;
            }

            int current = GetItemStock(itemId);
            int maxStock = cfg.maxStock > 0 ? cfg.maxStock : int.MaxValue;
            _itemStock[itemId] = Mathf.Min(current + amount, maxStock);
            SaveItems();
            Debug.Log($"[RunManager] Gained {itemId} x{amount}, current: {_itemStock[itemId]} (max {maxStock})");
            return true;
        }

        /// <summary>Writes runtime stock back to the save dictionary and persists.</summary>
        private void SaveItems()
        {
            if (Data.Persistent?.Data == null) return;

            Data.Persistent.Data.items.Clear();
            foreach (var kvp in _itemStock)
            {
                if (kvp.Value > 0)
                {
                    Data.Persistent.Data.items[kvp.Key] = kvp.Value;
                }
            }
            Data.Persistent.Save();
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

            // Restore party-shared item stock (itemId -> count)
            _itemStock.Clear();
            if (Data.Persistent?.Data?.items != null)
            {
                foreach (var kvp in Data.Persistent.Data.items)
                {
                    if (!string.IsNullOrEmpty(kvp.Key) && kvp.Value > 0)
                    {
                        _itemStock[kvp.Key] = kvp.Value;
                    }
                }
                Debug.Log($"[RunManager] Restored {_itemStock.Count} item types");
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
