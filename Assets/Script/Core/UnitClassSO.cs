using UnityEngine;
using System.Collections.Generic;
using GamePlay.Skill;
using Unity.Burst.CompilerServices;
using Unity.VisualScripting;

namespace Character{

    public enum ClassInternalID
    {
        [InspectorName("战士/战士")] Warrior_Common,
        [InspectorName("战士/冠军")]        Warrior_Champion,
        [InspectorName("战士/狂战士")]      Warrior_Berserker,
        [InspectorName("战士/圣骑士")]      Warrior_Paladin,
        
        [InspectorName("射手/射手")] Archer_Common,
        [InspectorName("射手/狙击手")]      Archer_Sniper,
        [InspectorName("射手/游侠")]        Archer_Ranger,
        [InspectorName("射手/强弩手")]      Archer_Marksman,
        [InspectorName("医疗/医疗兵")] Medical_Common,
        [InspectorName("医疗/医生")]        Medical_Doctor,
        [InspectorName("重装/重装")] Tank_Common,
        [InspectorName("重装/冠军")]        Tank_Champion,
    }

    public static class ClassIDs
    {
        // 战士
        public static class Warrior
        {
            public const ClassInternalID Base = ClassInternalID.Warrior_Common; // "见习战士"或"步兵"
            
            public static class Sub
            {
                public const ClassInternalID Champion = ClassInternalID.Warrior_Champion; // 冠军/勇士
                public const ClassInternalID Berserker = ClassInternalID.Warrior_Berserker; // 狂战士
                public const ClassInternalID Paladin = ClassInternalID.Warrior_Paladin; // 圣骑士
            }
        }

        // 射手
        public static class Archer
        {
            public const ClassInternalID Base = ClassInternalID.Archer_Common; // "短弓手"或"新兵射手"
            
            public static class Sub
            {
                public const ClassInternalID Sniper = ClassInternalID.Archer_Sniper; // 狙击手/神射手
                public const ClassInternalID Ranger = ClassInternalID.Archer_Ranger; // 游侠/巡林者
                public const ClassInternalID Marksman = ClassInternalID.Archer_Marksman; // 强弩手
            }
        }
        // 医疗
        public static class Medical
        {
            public const ClassInternalID Base = ClassInternalID.Medical_Common; // "医疗兵"
            
            public static class Sub
            {
                public const ClassInternalID Doctor = ClassInternalID.Medical_Doctor; // 医生
            }
        }
        // 重装
        public static class Tank
        {
            public const ClassInternalID Base = ClassInternalID.Tank_Common; // "重装"
            
            public static class Sub
            {
                public const ClassInternalID Champion = ClassInternalID.Tank_Champion; // 冠军/勇士
            }
        }
    }

    [CreateAssetMenu(fileName = "NewUnitClass", menuName = "Game Data/Unit Class")]
    public class UnitClassSO : ScriptableObject
    {
        [Header("程序识别 ID")]
        public ClassInternalID InternalID;
        [Header("基本信息")]
        public string ClassName; // 比如 "狂战士"
        
        [Tooltip("如果是基础职业就留空，如果是子职业就拖入对应的基础职业")]
        public UnitClassSO ParentClass; 

        [Header("属性加成")]
        public int BonusMovementPoints;
        public int BonusHP;

        // [Header("可用技能池")]
        // public List<SkillDataSO> AvailableSkills;
        [Header("普通攻击")]
        public SkillDataSO NormalAttack;
        [Header("移动距离")]
        public int moveRange;

        [Header("AI 性格倾向 (决定打分系统)")]
        [Range(0f, 2f)] public float Aggressiveness = 1.0f;
        [Range(0f, 2f)] public float Supportiveness = 1.0f;
        [Range(0f, 2f)] public float SelfPreservation = 1.0f;
        [Header("AI 威胁打分系数")]
        [Tooltip("攻击力计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 atkRange = new Vector2(0, 10);
        [Range(0f,10f)] public float atkThreat = 1.0f;
        
        [Tooltip("防御力计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 defRange = new Vector2(0, 10);
        [Range(0f,10f)] public float defThreat = 1.0f;
        
        [Tooltip("生命值计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 hpRange = new Vector2(0, 100);
        [Range(0f,10f)] public float hpThreat = 1.0f;
        
        [Tooltip("移动距离计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 moveRangeRange = new Vector2(0, 10);
        [Range(0f,10f)] public float moveRangeThreat = 1.0f;
        
        [Tooltip("法术抗性计算区间 (min, max)，法抗为百分比抗性")]
        public Vector2 resRange = new Vector2(0, 1);
        [Range(0f,10f)] public float resThreat = 1.0f;
        
        [Tooltip("速度计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 speedRange = new Vector2(1, 200);
        [Range(0f,10f)] public float speedThreat = 1.0f;
        
        [Tooltip("攻击距离计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 attackDistanceRange = new Vector2(1, 10);
        [Range(0f,10f)] public float attackDistanceThreat = 1.0f;
        
        [Tooltip("技能范围计算区间 (min, max)，在此区间内按百分比换算威胁")]
        public Vector2 skillRangeDistanceRange = new Vector2(1, 10);
        [Range(0f,10f)] public float skillRangeDistanceThreat = 1.0f;
        public bool IsSubclassOf(UnitClassSO baseClass)
        {
            if (this == baseClass) return true;
            if (ParentClass != null) return ParentClass.IsSubclassOf(baseClass);
            return false;
        }
        public SkillDataSO getNormalAttack()
        {
            if(NormalAttack != null) return NormalAttack;
            if(ParentClass != null) return ParentClass.NormalAttack;
            return null;
        }
    }
}