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
            Diamond,    // 菱形 (曼哈顿距离) - 适合普通近战/弓箭
            Square,     // 方形 (切比雪夫距离) - 适合法师
            Line,       // 直线 (十字) - 适合长枪/激光
            Custom      // 自定义 - 读取 CustomPattern 列表
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
            Ground,     // 普通地面 (草、土)
            Obstacle,   // 障碍 (墙、树干)
            Decoration, // 装饰 (花、草丛 - 没有任何逻辑影响)
            Liquid,     // 液体 (水、岩浆 - 只有特定单位能走)
            Stairs      // 楼梯 (特殊的高度处理)
        }
}