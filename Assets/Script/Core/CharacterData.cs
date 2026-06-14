using System.Collections.Generic;
using UnityEngine;
using Global;
using UnityEngine.AddressableAssets;
using GamePlay.Skill;
namespace Character{
    namespace data{
        [System.Serializable]
        [CreateAssetMenu(fileName = "NewCharacterData", menuName = "Character/CharacterData")]
        public class CharacterData : ScriptableObject
        {
            [Header("基本信息")]
            public string ID;
            public string CharacterName;
            [TextArea] 
            public string Description;
            public Sprite Icon;
            public AssetReferenceGameObject Prefab;

            [Header("基础属性 (出厂设置)")]
            public int BaseMaxHP;
            public int BaseATK;
            public int BaseDEF;
            public int BaseRES;
            public int MoveRange;
            public int Height;
            public int Speed;

            [Header("能量属性")]
            public int BaseMaxMP;

            [Header("战斗配置")]
            public AttackRangeType RangeType;
            public AttackPatternType Pattern;
            public int MinRange = 1;
            public int MaxRange = 1;

            [Tooltip("自定义攻击范围 (相对坐标，仅在 Pattern 为 Custom 时生效)")]

            public List<Vector2Int> CustomPattern;

            [Header("升级配置")]
            public List<LevelUpEntry> GrowthTable;

            [Header("技能配置")]
            public CharacterSkillConfig skillConfig;
            [Header("职业")]
            public UnitClassSO unitClass;

            private const string CHARACTER_RESOURCES_PATH = "Data/Character/";

            /// <summary>
            /// 通过 ID 从 Resources 加载 CharacterData SO
            /// 约定路径: Resources/Data/Character/{id}
            /// 类似 [UIPanelResource] 的约定优于配置模式
            /// </summary>
            public static CharacterData LoadByID(string id)
            {
                if (string.IsNullOrEmpty(id))
                {
                    Debug.LogWarning("[CharacterData] LoadByID: id is null or empty");
                    return null;
                }

                CharacterData result = Resources.Load<CharacterData>(CHARACTER_RESOURCES_PATH + id);
                if (result == null)
                {
                    Debug.LogWarning($"[CharacterData] LoadByID: 未找到 ID='{id}' 的角色, 路径=Resources/{CHARACTER_RESOURCES_PATH}{id}");
                }
                return result;
            }
        }
    }
}
