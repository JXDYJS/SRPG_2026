using UnityEngine;
namespace Global
{
        public enum AttackRangeType
        {
            Melee,      // 近战 (上下左右1格)
            Archer,     // 弓箭 (距离2-3格)
            Magic,      // 魔法 (周围2格)
            Lancer      // 长枪 (前方直刺2格)
        }

        public enum AttackPatternType
        {
            Diamond,        // 菱形 (曼哈顿距离) - 适合常规近战/弓箭
            Square,         // 方形 (切比雪夫距离) - 适合大范围法术
            Line,           // 直线 - 激光/突刺 (需要目标方向)
            Cone,           // 扇形/锥形 - 喷火/横扫 (需要目标方向)
            Ring            // 环形 - 自身周围一圈 (如旋风斩)
        }
        

        // 定义升级奖励的种类
        public enum LevelRewardType
        {
            StatGrowth,     // 属性成长 (HP, ATK...)
            UnlockSkill,    // 解锁新技能
            UpgradeSkill,   // 升级已有技能 (你的需求)
            UnlockPassive,  // 解锁被动/天赋
            Custom          // 其他自定义逻辑
        }

        public enum MoveType
        {
            Ground,     // Standard walking
            Flying,     // Ignores terrain height/liquids
            Amphibious  // Can walk on water
        }

        public enum UnitState
        {
            Idle,       
            Moving,     
            Attacking,  
            Hit,        
            Dead        
        }

        public enum RarityType
        {
            Common,
            Uncommon,
            Rare,
            Epic,
            Legendary
        }
        public enum BlockType
        {
            Air,        // 空气
            Solid,      // 完整方块 (高 1.0)
            Slab,       // 半砖 (高 0.5)
            Stairs,     // 楼梯 (特殊处理)
            Liquid      // 水
        }

        public enum FactionType
        {
            Player,     // 玩家
            Enemy,      // 怪物/死敌
            Neutral,    // 中立（如猪人、商人）
            Guard       // 守卫（攻击怪物，但不攻击玩家，除非被惹怒）
        }

        public enum DamageType
        {
            Physical,
            Magic,
            Fire,
            Poison,
            Ice,
            True,
            Heal,
        }
        public enum DamageMethod
        {
            Normal,
            Skill,
            Environment,
        }
        public enum TransitType { None, Projectile, Teleport }

        public static class MathTool{
            public static Vector3Int SP_RoundToInt(Vector3 vector3)
            {
                // 截断y
                return new Vector3Int(Mathf.RoundToInt(vector3.x), (int)vector3.y, Mathf.RoundToInt(vector3.z));
            }
            public static Vector3Int HitPosToGridPos(Vector3 hitPos,Vector3 normal)
            {
                //由于坐标轴中所有物体的pos在其底部，所以y值要直接截断
                hitPos -= normal * 0.02f;
                return SP_RoundToInt(hitPos);
            }
        }
}