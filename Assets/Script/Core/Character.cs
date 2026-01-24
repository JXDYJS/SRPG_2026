using System;
using System.Collections.Generic;
using UnityEngine;
using Status.state;

namespace Character
{
    namespace data{
        public enum AttackRangeType
        {
            Melee,      // 近战 (上下左右1格)
            Archer,     // 弓箭 (距离2-3格)
            Magic,      // 魔法 (周围2格)
            Lancer      // 长枪 (前方直刺2格)
        }
        [CreateAssetMenu(fileName = "NewCharacter", menuName = "GameData/Character")]
        public class CharacterData : ScriptableObject
        {
            [Header("基本信息")]
            public string ID;           // 唯一ID，用于存档 (例如 "Hero_Arthur")
            public string CharacterName;// 显示名称 (例如 "亚瑟")
            [TextArea] 
            public string Description;  // 描述
            public Sprite Icon;         // 头像 (UI用)
            public GameObject Prefab;   // 对应的 3D 模型/预制体

            [Header("基础属性 (出厂设置)")]
            public int BaseMaxHP;
            public int BaseATK;
            public int BaseDEF;
            public int BaseRES;
            public int MoveRange;       // 移动力 (例如 3 格)

            [Header("战斗配置")]
            // 定义攻击范围模式 (例如：十字形、前方2格、周围1圈)
            // 我们可以用一个 List<Vector2Int> 来表示相对于自己的攻击坐标
            // (0, 1) 表示前方一格，(0, 2) 表示前方两格
            //public List<Vector2Int> AttackPattern; 
            
            // 先用枚举定义范围类型
            public AttackRangeType RangeType;
        }
    }
    namespace instance{
        using data;
        using Status.state;
        public class CharacterInstance
        {
            public CharacterData characterData;
            public StatSystem statSystem;
            public int level = 1;
            public CharacterInstance(CharacterData characterData)
            {
                this.characterData = characterData;
                statSystem = new StatSystem(characterData);
            }
        }
    }
}
