using System.Collections.Generic;
using UnityEngine;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace GamePlay.Skill
{
    public class RuntimeSkillSlot
    {
        public SkillSlotType SlotType;
        public SkillDataSO CurrentSkill;
        public int SkillLevelIndex;
        public bool IsUnlocked;

        public RuntimeSkillSlot(SkillSlotType slotType)
        {
            SlotType = slotType;
            CurrentSkill = null;
            SkillLevelIndex = -1;
            IsUnlocked = false;
        }
    }

    public class SkillInventory
    {
        private Dictionary<SkillSlotType, RuntimeSkillSlot> _slots;
        private CharacterSkillConfig _config;
        private int _currentLevel;

        public SkillInventory()
        {
            _slots = new Dictionary<SkillSlotType, RuntimeSkillSlot>();
            _config = null;
            _currentLevel = 1;

            foreach (SkillSlotType slotType in System.Enum.GetValues(typeof(SkillSlotType)))
            {
                _slots[slotType] = new RuntimeSkillSlot(slotType);
            }
        }

        public async UniTask InitializeAsync(CharacterSkillConfig config, int level)
        {
            _config = config;
            _currentLevel = level;

            if (_config == null)
            {
                Debug.LogWarning("SkillInventory: config is null, skills will not be loaded");
                return;
            }

            await RefreshSkillsAsync(level);
        }

        public async UniTask RefreshSkillsAsync(int level)
        {
            _currentLevel = level;

            if (_config == null) return;

            foreach (var slotConfig in _config.SkillSlots)
            {
                await RefreshSlotAsync(slotConfig, level);
            }
        }

        private async UniTask RefreshSlotAsync(SkillSlotConfig slotConfig, int level)
        {
            var slot = _slots[slotConfig.SlotType];
            int newIndex = slotConfig.GetSkillIndexAtLevel(level);

            if (newIndex < 0)
            {
                slot.IsUnlocked = false;
                slot.CurrentSkill = null;
                slot.SkillLevelIndex = -1;
                return;
            }

            slot.IsUnlocked = true;

            if (slot.SkillLevelIndex != newIndex)
            {
                var entry = slotConfig.EvolutionChain[newIndex];
                
                if (entry.SkillData != null && entry.SkillData.RuntimeKeyIsValid())
                {
                    var handle = Addressables.LoadAssetAsync<SkillDataSO>(entry.SkillData);
                    await handle.Task;

                    if (handle.Status == AsyncOperationStatus.Succeeded)
                    {
                        slot.CurrentSkill = handle.Result;
                        slot.SkillLevelIndex = newIndex;
                        Debug.Log($"SkillInventory: Loaded skill '{slot.CurrentSkill.SkillName}' for slot {slotConfig.SlotType} at level {level}");
                    }
                    else
                    {
                        Debug.LogError($"SkillInventory: Failed to load skill for slot {slotConfig.SlotType}");
                    }
                }
            }
        }

        public SkillDataSO GetSkill(SkillSlotType slotType)
        {
            if (_slots.TryGetValue(slotType, out var slot))
            {
                return slot.IsUnlocked ? slot.CurrentSkill : null;
            }
            return null;
        }

        public RuntimeSkillSlot GetSlot(SkillSlotType slotType)
        {
            _slots.TryGetValue(slotType, out var slot);
            return slot;
        }

        public List<SkillDataSO> GetAllAvailableSkills()
        {
            List<SkillDataSO> result = new List<SkillDataSO>();

            foreach (var kvp in _slots)
            {
                if (kvp.Value.IsUnlocked && kvp.Value.CurrentSkill != null)
                {
                    result.Add(kvp.Value.CurrentSkill);
                }
            }

            return result;
        }

        public List<SkillDataSO> GetActiveSkills()
        {
            List<SkillDataSO> result = new List<SkillDataSO>();

            var activeSlots = new[] { SkillSlotType.NormalAttack, SkillSlotType.Skill1, SkillSlotType.Skill2, SkillSlotType.Ultimate };

            foreach (var slotType in activeSlots)
            {
                var skill = GetSkill(slotType);
                if (skill != null)
                {
                    result.Add(skill);
                }
            }

            return result;
        }

        public bool HasSkill(SkillSlotType slotType)
        {
            return _slots.TryGetValue(slotType, out var slot) && slot.IsUnlocked && slot.CurrentSkill != null;
        }

        public bool TryUpgradeSkill(SkillSlotType slotType, int newLevelIndex)
        {
            if (!_slots.TryGetValue(slotType, out var slot)) return false;
            if (_config == null) return false;

            var slotConfig = _config.GetSlotConfig(slotType);
            if (slotConfig == null) return false;
            if (newLevelIndex < 0 || newLevelIndex >= slotConfig.EvolutionChain.Count) return false;

            RefreshSlotAsync(slotConfig, _currentLevel).Forget();
            return true;
        }
    }
}
