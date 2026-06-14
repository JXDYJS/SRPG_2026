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

            private static Dictionary<string, CharacterData> _idIndex;
            private static bool _indexBuilt;

            /// <summary>
            /// 扫描 Resources/Data/Character/ 下所有 CharacterData SO，按 ID 建索引
            /// 文件名不必须匹配 ID，只需放在该目录下即可
            /// </summary>
            private static void BuildIndex()
            {
                if (_indexBuilt) return;

                _idIndex = new Dictionary<string, CharacterData>();
                CharacterData[] all = Resources.LoadAll<CharacterData>(CHARACTER_RESOURCES_PATH);

                foreach (var cd in all)
                {
                    if (cd == null || string.IsNullOrEmpty(cd.ID)) continue;

                    if (_idIndex.ContainsKey(cd.ID))
                    {
                        Debug.LogWarning($"[CharacterData] ID='{cd.ID}' 重复，文件={cd.name}，将被忽略");
                        continue;
                    }
                    _idIndex[cd.ID] = cd;
                }

                _indexBuilt = true;
                Debug.Log($"[CharacterData] BuildIndex: 扫描到 {_idIndex.Count} 个角色 ({CHARACTER_RESOURCES_PATH})");
            }

            /// <summary>
            /// 通过 ID 查找 CharacterData SO
            /// 首次调用时自动扫描 Resources/Data/Character/ 建索引，后续走缓存
            /// </summary>
            public static CharacterData LoadByID(string id)
            {
                if (string.IsNullOrEmpty(id))
                {
                    Debug.LogWarning("[CharacterData] LoadByID: id is null or empty");
                    return null;
                }

                BuildIndex();

                _idIndex.TryGetValue(id, out CharacterData result);
                if (result == null)
                {
                    Debug.LogWarning($"[CharacterData] LoadByID: 未找到 ID='{id}' 的角色");
                }
                return result;
            }

            /// <summary>
            /// 返回 Resources/Data/Character/ 下所有 CharacterData SO
            /// 用于自动发现角色列表，不依赖 Inspector 拖拽
            /// </summary>
            public static List<CharacterData> LoadAll()
            {
                BuildIndex();
                return new List<CharacterData>(_idIndex.Values);
            }
        }
    }
}
