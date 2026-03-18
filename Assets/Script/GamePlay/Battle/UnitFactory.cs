using UnityEngine;
using GamePlay.Unit;
using Character.instance;
using Status.state;
using Managers;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;

namespace GamePlay.Battle
{
    public static class UnitFactory
    {
        /// <summary>
        /// 创建单位并应用关卡数值加成
        /// </summary>
        public static async UniTask<MapUnit> CreateUnitAsync(
            UnitConfig config, 
            MapManager mapManager, 
            Transform parentTransform,
            GamePlay.Skill.CharacterSkillConfig skillConfig = null)
        {
            if (config == null || config.CharacterTemplate == null)
            {
                Debug.LogError("UnitFactory: 配置或角色模板为空");
                return null;
            }

            // 1. 异步加载角色预制体
            var handle = Addressables.InstantiateAsync(config.CharacterTemplate.Prefab, parentTransform);
            await handle.Task;

            if (handle.Status != UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus.Succeeded)
            {
                Debug.LogError($"UnitFactory: 加载角色预制体失败: {config.CharacterTemplate.CharacterName}");
                return null;
            }

            GameObject unitObj = handle.Result;
            MapUnit unit = unitObj.GetComponent<MapUnit>();
            
            if (unit == null)
            {
                unit = unitObj.AddComponent<MapUnit>();
            }

            // 2. 创建角色实例
            CharacterInstance characterInstance = new CharacterInstance(config.CharacterTemplate);
            
            // 3. 初始化技能
            if (skillConfig != null)
            {
                await characterInstance.InitializeSkillsAsync(skillConfig, config.InitialLevel);
            }
            
            // 4. 设置单位到地图位置
            Vector3 worldPos = mapManager.GetWorldPosition(config.SpawnPosition);
            unitObj.transform.position = worldPos;
            
            // 5. 设置初始朝向
            unit.SetFacing(config.InitialFacing);
            
            // 6. 设置阵营
            unit.Faction = config.Faction;
            
            // 7. 初始化单位
            unit.Setup(characterInstance, mapManager, config.SpawnPosition.x, config.SpawnPosition.y, config.SpawnPosition.z);
            
            // 8. 应用关卡数值加成
            ApplyLevelBonuses(unit, config);
            
            // 9. 设置初始等级
            if (config.InitialLevel > 1)
            {
                for (int i = 1; i < config.InitialLevel; i++)
                {
                    characterInstance.LevelUp();
                }
            }

            return unit;
        }

        /// <summary>
        /// 应用关卡数值加成到单位属性系统
        /// </summary>
        private static void ApplyLevelBonuses(MapUnit unit, UnitConfig config)
        {
            if (unit == null || unit.Character == null) return;

            // 应用HP加成
            if (config.HPBonusPercent != 0f)
            {
                float hpBonus = unit.Character.statSystem.maxHP.getValue() * config.HPBonusPercent;
                StatModifier hpMod = new StatModifier(hpBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.maxHP.addModifier(hpMod);
            }

            // 应用ATK加成
            if (config.ATKBonusPercent != 0f)
            {
                float atkBonus = unit.Character.statSystem.ATK.getValue() * config.ATKBonusPercent;
                StatModifier atkMod = new StatModifier(atkBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.ATK.addModifier(atkMod);
            }

            // 应用DEF加成
            if (config.DEFBonusPercent != 0f)
            {
                float defBonus = unit.Character.statSystem.DEF.getValue() * config.DEFBonusPercent;
                StatModifier defMod = new StatModifier(defBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.DEF.addModifier(defMod);
            }

            // 应用RES加成
            if (config.RESBonusPercent != 0f)
            {
                float resBonus = unit.Character.statSystem.RES.getValue() * config.RESBonusPercent;
                StatModifier resMod = new StatModifier(resBonus, StatModType.Flat, "LevelBonus");
                unit.Character.statSystem.RES.addModifier(resMod);
            }

            // 刷新属性缓存
            //unit.Character.statSystem.RecalculateAll();
        }
    }
}
