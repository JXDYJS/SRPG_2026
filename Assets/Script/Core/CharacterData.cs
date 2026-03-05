using System.Collections.Generic;
using UnityEngine;
using Global;
using UnityEngine.AddressableAssets;
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

            [Header("战斗配置")]
            public AttackRangeType RangeType;
            public AttackPatternType Pattern;
            public int MinRange = 1;
            public int MaxRange = 1;

            [Tooltip("自定义攻击范围 (相对坐标，仅在 Pattern 为 Custom 时生效)")]

            public List<Vector2Int> CustomPattern;

            [Header("升级配置")]
            public List<LevelUpEntry> GrowthTable;
            [Header("阵营配置")]
            public FactionType DefaultFaction;
            
        }
    }
}
