using UnityEngine;
using Character.data;

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

        public enum CastPatternType
        {
            Diamond,        // 菱形 (曼哈顿距离) - 适合常规近战/弓箭施法范围
            Square,         // 方形 (切比雪夫距离) - 适合大范围法术施法范围
            Line,           // 直线 - 需要选择方向的技能施法范围
            Global          // 全局 - 全地图可选（如传送技能）
        }

        public enum AoEPatternType
        {
            SingleTarget,   // 单体目标
            Cross,          // 十字形
            Diamond,        // 菱形
            Square,         // 方形
            Cone,           // 扇形/锥形 (需要方向)
            LinePiercing,   // 穿透直线 (会穿透多个目标)
            Ring            // 环形
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

        /// <summary>
        /// 弹道轨迹类型 - 决定技能如何穿越空间到达目标
        /// </summary>
        public enum TrajectoryType
        {
            LineOfSight,    // 直射/射线，如火枪 - 需要直线视野
            Parabola,       // 曲射/抛物线，如弓箭 - 可以越过矮障碍
            SkyDrop,        // 从天而降，如天雷 - 需要头顶无遮挡
            Direct          // 直接生效，如诅咒 - 无视任何地形阻挡
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

        /// <summary>
        /// 单位朝向 - 四个基本方向
        /// </summary>
        public enum UnitFacing
        {
            North,      // 北 (0, 0, 1) - 正Z方向
            East,       // 东 (1, 0, 0) - 正X方向
            South,      // 南 (0, 0, -1) - 负Z方向
            West        // 西 (-1, 0, 0) - 负X方向
        }

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

        /// <summary>
        /// 逻辑坐标转换工具 - 确保所有逻辑坐标都使用"脚底方块坐标"
        /// </summary>
        public static class GridPositionTool
        {
            /// <summary>
            /// 将世界坐标转换为逻辑坐标（脚底方块坐标）
            /// 重要：逻辑坐标必须是角色站立的固体方块坐标，不是角色身体所在的空气方块
            /// </summary>
            public static Vector3Int WorldToLogicPosition(Vector3 worldPos)
            {
                // 向下射线检测，找到角色站立的固体方块
                Ray ray = new Ray(worldPos + Vector3.up * 0.5f, Vector3.down);
                if (Physics.Raycast(ray, out RaycastHit hit, 2f))
                {
                    // 获取被击中的方块坐标（这是脚底方块）
                    Vector3Int floorPos = MathTool.HitPosToGridPos(hit.point, hit.normal);
                    return floorPos;
                }
                
                // 如果射线检测失败，使用简单的高度截断
                return new Vector3Int(
                    Mathf.RoundToInt(worldPos.x),
                    Mathf.FloorToInt(worldPos.y),
                    Mathf.RoundToInt(worldPos.z)
                );
            }

            /// <summary>
            /// 将逻辑坐标（脚底方块）转换为世界坐标（用于角色表现）
            /// 重要：需要加上方块高度，防止角色陷进地里
            /// </summary>
            public static Vector3 LogicToWorldPosition(Vector3Int logicPos, float blockHeight = 1f)
            {
                // 逻辑坐标是脚底方块，表现坐标需要加上方块高度
                return new Vector3(
                    logicPos.x + 0.5f,
                    logicPos.y + blockHeight,
                    logicPos.z + 0.5f
                );
            }

            /// <summary>
            /// 获取单位的脚底方块坐标（逻辑坐标）
            /// 重要：根据新的坐标规则，unit.gridPosition已经是脚底方块坐标
            /// </summary>
            public static Vector3Int GetUnitFloorPosition(GamePlay.Units.MapUnit unit)
            {
                if (unit == null) return Vector3Int.zero;
                
                // 直接返回unit.gridPosition，它已经是脚底方块坐标
                return unit.gridPosition;
            }

            /// <summary>
            /// 验证坐标是否是有效的脚底方块坐标
            /// 有效条件：当前坐标是固体方块，上方是空气方块
            /// </summary>
            public static bool IsValidFloorPosition(Vector3Int pos)
            {
                if (Managers.MapManager.Instance == null) return false;
                
                return Managers.MapManager.Instance.logicalGrid.GetBlock(pos) != BlockType.Air &&
                       Managers.MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.up) == BlockType.Air;
            }

            /// <summary>
            /// 根据鼠标位置和相机获取对应的逻辑坐标（脚底方块坐标）
            /// 统一封装了各处的鼠标→网格转换逻辑
            /// </summary>
            public static bool TryGetMouseGridPosition(Camera cam, out Vector3Int pos)
            {
                pos = Vector3Int.zero;
                if (cam == null) return false;

                Ray ray = cam.ScreenPointToRay(Input.mousePosition);
                if (!Physics.Raycast(ray, out RaycastHit hit)) return false;

                Vector3 worldPos = hit.point - hit.normal * 0.01f;
                pos = WorldToLogicPosition(worldPos);
                return true;
            }
        }

        /// <summary>
        /// 朝向工具类 - 处理单位朝向相关的计算
        /// </summary>
        public static class FacingTool
        {
            /// <summary>
            /// 将朝向枚举转换为方向向量
            /// </summary>
            public static Vector3Int FacingToDirection(UnitFacing facing)
            {
                switch (facing)
                {
                    case UnitFacing.North: return new Vector3Int(0, 0, 1);
                    case UnitFacing.East: return new Vector3Int(1, 0, 0);
                    case UnitFacing.South: return new Vector3Int(0, 0, -1);
                    case UnitFacing.West: return new Vector3Int(-1, 0, 0);
                    default: return new Vector3Int(1, 0, 0); // 默认朝东
                }
            }

            /// <summary>
            /// 将方向向量转换为朝向枚举
            /// </summary>
            public static UnitFacing DirectionToFacing(Vector3Int direction)
            {
                // 归一化方向向量（只保留符号）
                int x = direction.x != 0 ? (int)Mathf.Sign(direction.x) : 0;
                int z = direction.z != 0 ? (int)Mathf.Sign(direction.z) : 0;

                // 优先处理四个基本方向
                if (x == 1 && z == 0) return UnitFacing.East;
                if (x == -1 && z == 0) return UnitFacing.West;
                if (x == 0 && z == 1) return UnitFacing.North;
                if (x == 0 && z == -1) return UnitFacing.South;

                // 对于斜向，选择最接近的基本方向
                if (Mathf.Abs(x) > Mathf.Abs(z))
                {
                    return x > 0 ? UnitFacing.East : UnitFacing.West;
                }
                else
                {
                    return z > 0 ? UnitFacing.North : UnitFacing.South;
                }
            }

            /// <summary>
            /// 将朝向枚举转换为旋转角度（Y轴旋转）
            /// </summary>
            public static float FacingToRotationY(UnitFacing facing)
            {
                switch (facing)
                {
                    case UnitFacing.North: return 0f;
                    case UnitFacing.East: return 90f;
                    case UnitFacing.South: return 180f;
                    case UnitFacing.West: return 270f;
                    default: return 0f;
                }
            }

            /// <summary>
            /// 将旋转角度转换为朝向枚举
            /// </summary>
            public static UnitFacing RotationYToFacing(float rotationY)
            {
                // 规范化角度到0-360度
                float normalizedAngle = ((rotationY % 360) + 360) % 360;
                
                if (normalizedAngle >= 315f || normalizedAngle < 45f) return UnitFacing.North;
                if (normalizedAngle >= 45f && normalizedAngle < 135f) return UnitFacing.East;
                if (normalizedAngle >= 135f && normalizedAngle < 225f) return UnitFacing.South;
                return UnitFacing.West;
            }

            /// <summary>
            /// 计算从起点到终点的方向向量
            /// </summary>
            public static Vector3Int CalculateDirection(Vector3Int from, Vector3Int to)
            {
                Vector3Int diff = to - from;
                return new Vector3Int(
                    diff.x != 0 ? (int)Mathf.Sign(diff.x) : 0,
                    0,
                    diff.z != 0 ? (int)Mathf.Sign(diff.z) : 0
                );
            }

            /// <summary>
            /// 计算从起点到终点的朝向
            /// </summary>
            public static UnitFacing CalculateFacing(Vector3Int from, Vector3Int to)
            {
                Vector3Int direction = CalculateDirection(from, to);
                return DirectionToFacing(direction);
            }

            /// <summary>
            /// 获取最近的四个基本朝向
            /// </summary>
            public static UnitFacing GetNearestCardinalFacing(Vector3 direction)
            {
                // 忽略Y轴
                Vector2 dir2D = new Vector2(direction.x, direction.z);
                if (dir2D.magnitude < 0.01f) return UnitFacing.North; // 默认朝北

                // 计算角度
                float angle = Mathf.Atan2(dir2D.x, dir2D.y) * Mathf.Rad2Deg;
                if (angle < 0) angle += 360f;

                // 判断哪个象限
                if (angle >= 315f || angle < 45f) return UnitFacing.North;
                if (angle >= 45f && angle < 135f) return UnitFacing.East;
                if (angle >= 135f && angle < 225f) return UnitFacing.South;
                return UnitFacing.West;
            }
        }

        public class CharacterMeta
        {
            public CharacterData Data;
            public int Level;
            public float BonusHp;
            public float BonusAtk;
            public float BonusDef;
            public float BonusRes;
        }
}
