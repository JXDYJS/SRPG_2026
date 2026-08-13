using UnityEngine;
using GamePlay.Units;
using Character.instance;
using Status.state;
using Managers;
using Utils;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;

namespace GamePlay.Battle
{
    public static class UnitFactory
    {
        /// <summary>Creates a unit and applies level stat bonuses.</summary>
        public static async UniTask<MapUnit> CreateUnitAsync(
            UnitConfig config, 
            MapManager mapManager, 
            Transform parentTransform,
            GamePlay.Skill.CharacterSkillConfig skillConfig = null,
            bool SetActive = true)
        {
            if (config == null || config.CharacterTemplate == null)
            {
                Debug.LogError("UnitFactory: 配置或角色模板为空");
                return null;
            }

            var handle = Addressables.InstantiateAsync(config.CharacterTemplate.Prefab, parentTransform);
            await handle.Task;

            if (handle.Status != UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus.Succeeded)
            {
                Debug.LogError($"UnitFactory: 加载角色预制体失败: {config.CharacterTemplate.CharacterName}");
                return null;
            }

            GameObject unitObj = handle.Result;
            unitObj.SetActive(SetActive);
            Utils.Utils.SetLayerRecursively(unitObj, "Unit");
            MapUnit unit = unitObj.GetComponent<MapUnit>();
            
            if (unit == null)
            {
                unit = unitObj.AddComponent<MapUnit>();
            }

            CharacterInstance characterInstance = new CharacterInstance(config.CharacterTemplate);

            if (skillConfig != null)
            {
                await characterInstance.InitializeSkillsAsync(skillConfig, config.InitialLevel);
            }
            
            Vector3 worldPos = mapManager.GetWorldPosition(config.SpawnPosition);
            unitObj.transform.position = worldPos;

            unit.SetFacing(config.InitialFacing);

            unit.Faction = config.Faction;

            unit.Setup(characterInstance, mapManager, config.SpawnPosition.x, config.SpawnPosition.y, config.SpawnPosition.z);

            ApplyLevelBonuses(unit, config);

            if (config.InitialLevel > 1)
            {
                for (int i = 1; i < config.InitialLevel; i++)
                {
                    characterInstance.LevelUp();
                }
            }

            UnitStrokeRenderFeature.RegisterUnit(unit);

            return unit;
        }

        private static void ApplyLevelBonuses(MapUnit unit, UnitConfig config)
        {
            if (unit == null || unit.Character == null) return;

            if (config.HPBonusPercent != 0f)
            {
                float hpBonus = unit.Character.statSystem.maxHP.getValue() * config.HPBonusPercent;
                StatModifier hpMod = new StatModifier(hpBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.maxHP.addModifier(hpMod);
            }

            if (config.ATKBonusPercent != 0f)
            {
                float atkBonus = unit.Character.statSystem.ATK.getValue() * config.ATKBonusPercent;
                StatModifier atkMod = new StatModifier(atkBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.ATK.addModifier(atkMod);
            }

            if (config.DEFBonusPercent != 0f)
            {
                float defBonus = unit.Character.statSystem.DEF.getValue() * config.DEFBonusPercent;
                StatModifier defMod = new StatModifier(defBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.DEF.addModifier(defMod);
            }

            if (config.RESBonusPercent != 0f)
            {
                float resBonus = unit.Character.statSystem.RES.getValue() * config.RESBonusPercent;
                StatModifier resMod = new StatModifier(resBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.RES.addModifier(resMod);
            }

        }
    }
}
