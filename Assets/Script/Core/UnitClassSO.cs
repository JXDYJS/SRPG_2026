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
        public static class Warrior
        {
            public const ClassInternalID Base = ClassInternalID.Warrior_Common;
            
            public static class Sub
            {
                public const ClassInternalID Champion = ClassInternalID.Warrior_Champion;
                public const ClassInternalID Berserker = ClassInternalID.Warrior_Berserker;
                public const ClassInternalID Paladin = ClassInternalID.Warrior_Paladin;
            }
        }

        public static class Archer
        {
            public const ClassInternalID Base = ClassInternalID.Archer_Common;
            
            public static class Sub
            {
                public const ClassInternalID Sniper = ClassInternalID.Archer_Sniper;
                public const ClassInternalID Ranger = ClassInternalID.Archer_Ranger;
                public const ClassInternalID Marksman = ClassInternalID.Archer_Marksman;
            }
        }
        public static class Medical
        {
            public const ClassInternalID Base = ClassInternalID.Medical_Common;
            
            public static class Sub
            {
                public const ClassInternalID Doctor = ClassInternalID.Medical_Doctor;
            }
        }
        public static class Tank
        {
            public const ClassInternalID Base = ClassInternalID.Tank_Common;
            
            public static class Sub
            {
                public const ClassInternalID Champion = ClassInternalID.Tank_Champion;
            }
        }
    }

    [CreateAssetMenu(fileName = "NewUnitClass", menuName = "Game Data/Unit Class")]
    public class UnitClassSO : ScriptableObject
    {
        [Header("程序识别 ID")]
        public ClassInternalID InternalID;
        [Header("基本信息")]
        public string ClassName;
        
        [Tooltip("如果是基础职业就留空，如果是子职业就拖入对应的基础职业")]
        public UnitClassSO ParentClass; 

        [Header("属性加成")]
        public int BonusMovementPoints;
        public int BonusHP;

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