using UnityEngine;
using Character.data;
using Unity.VisualScripting;
using Unity.Mathematics;
using Core.System;
using UnityEngine.InputSystem;

namespace Global
{
        public enum AttackRangeType
        {
            Melee,
            Archer,
            Magic,
            Lancer
        }

        public enum AttackPatternType
        {
            Diamond,
            Square,
            Line,
            Cone,
            Ring
        }

        public enum CastPatternType
        {
            Diamond,
            Square,
            Line,
            Global
        }

        public enum AoEPatternType
        {
            SingleTarget,
            Cross,
            Diamond,
            Square,
            Cone,
            LinePiercing,
            Ring
        }
        

        public enum LevelRewardType
        {
            StatGrowth,
            UnlockSkill,
            UpgradeSkill,
            UnlockPassive,
            Custom
        }

        public enum MoveType
        {
            Ground,
            Flying,
            Amphibious
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
            Air,
            Solid,
            Slab,
            Stairs,
            Liquid
        }

        public enum TrajectoryType
        {
            LineOfSight,
            Parabola,
            SkyDrop,
            Direct
        }

        public enum FactionType
        {
            Player,
            Enemy,
            Neutral,
            Guard
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
            ForceKill,
        }
        public enum TransitType { None, Projectile, Teleport }

        public enum UnitFacing
        {
            North,
            East,
            South,
            West
        }

        public static class MathTool{
            public static Vector3Int SP_RoundToInt(Vector3 vector3)
            {
                return new Vector3Int(Mathf.RoundToInt(vector3.x), (int)vector3.y, Mathf.RoundToInt(vector3.z));
            }
            public static Vector3Int HitPosToGridPos(Vector3 hitPos,Vector3 normal)
            {
                // Y is truncated because object positions sit at their base.
                hitPos -= normal * 0.02f;
                return SP_RoundToInt(hitPos);
            }
        }

        /// <summary>
        /// Logic coordinate utilities; all logic coords use the standing floor-block position.
        /// </summary>
        public static class GridPositionTool
        {
            /// <summary>
            /// Converts world to logic (floor-block) position: the solid block the unit stands on.
            /// </summary>
            public static Vector3Int WorldToLogicPosition(Vector3 worldPos)
            {
                Ray ray = new Ray(worldPos + Vector3.up * 0.5f, Vector3.down);
                if (Physics.Raycast(ray, out RaycastHit hit, 2f))
                {
                    Vector3Int floorPos = MathTool.HitPosToGridPos(hit.point, hit.normal);
                    return floorPos;
                }
                
                return new Vector3Int(
                    Mathf.RoundToInt(worldPos.x),
                    Mathf.FloorToInt(worldPos.y),
                    Mathf.RoundToInt(worldPos.z)
                );
            }

            /// <summary>
            /// Converts logic (floor-block) to world position; adds block height so units don't sink.
            /// </summary>
            public static Vector3 LogicToWorldPosition(Vector3Int logicPos, float blockHeight = 1f)
            {
                return new Vector3(
                    logicPos.x + 0.5f,
                    logicPos.y + blockHeight,
                    logicPos.z + 0.5f
                );
            }

            public static Vector3Int GetUnitFloorPosition(GamePlay.Units.MapUnit unit)
            {
                if (unit == null) return Vector3Int.zero;
                
                return unit.gridPosition;
            }

            /// <summary>
            /// Valid floor position: solid block below, air block above.
            /// </summary>
            public static bool IsValidFloorPosition(Vector3Int pos)
            {
                if (Managers.MapManager.Instance == null) return false;
                
                return Managers.MapManager.Instance.logicalGrid.GetBlock(pos) != BlockType.Air &&
                       Managers.MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.up) == BlockType.Air;
            }

            /// <summary>
            /// Gets logic position from mouse/camera (unified mouse-to-grid conversion).
            /// </summary>
            public static bool TryGetMouseGridPosition(Camera cam, out Vector3Int pos)
            {
                return TryGetMouseGridPosition(cam, InputManager.Actions.Gameplay.Point.ReadValue<Vector2>(), out pos);
            }

            public static bool TryGetMouseGridPosition(Camera cam, Vector2 screenPos, out Vector3Int pos)
            {
                pos = Vector3Int.zero;
                if (cam == null) return false;

                Ray ray = cam.ScreenPointToRay(screenPos);
                if (!Physics.Raycast(ray, out RaycastHit hit)) return false;

                Vector3 worldPos = hit.point - hit.normal * 0.01f;
                pos = WorldToLogicPosition(worldPos);
                return true;
            }
        }

        public static class FacingTool
        {
            public static Vector3Int FacingToDirection(UnitFacing facing)
            {
                switch (facing)
                {
                    case UnitFacing.North: return new Vector3Int(0, 0, 1);
                    case UnitFacing.East: return new Vector3Int(1, 0, 0);
                    case UnitFacing.South: return new Vector3Int(0, 0, -1);
                    case UnitFacing.West: return new Vector3Int(-1, 0, 0);
                    default: return new Vector3Int(1, 0, 0);
                }
            }

            public static UnitFacing DirectionToFacing(Vector3Int direction)
            {
                int x = direction.x != 0 ? (int)Mathf.Sign(direction.x) : 0;
                int z = direction.z != 0 ? (int)Mathf.Sign(direction.z) : 0;

                if (x == 1 && z == 0) return UnitFacing.East;
                if (x == -1 && z == 0) return UnitFacing.West;
                if (x == 0 && z == 1) return UnitFacing.North;
                if (x == 0 && z == -1) return UnitFacing.South;

                if (Mathf.Abs(x) > Mathf.Abs(z))
                {
                    return x > 0 ? UnitFacing.East : UnitFacing.West;
                }
                else
                {
                    return z > 0 ? UnitFacing.North : UnitFacing.South;
                }
            }

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

            public static UnitFacing RotationYToFacing(float rotationY)
            {
                float normalizedAngle = ((rotationY % 360) + 360) % 360;
                
                if (normalizedAngle >= 315f || normalizedAngle < 45f) return UnitFacing.North;
                if (normalizedAngle >= 45f && normalizedAngle < 135f) return UnitFacing.East;
                if (normalizedAngle >= 135f && normalizedAngle < 225f) return UnitFacing.South;
                return UnitFacing.West;
            }

            public static Vector3Int CalculateDirection(Vector3Int from, Vector3Int to)
            {
                Vector3Int diff = to - from;
                return new Vector3Int(
                    diff.x != 0 ? (int)Mathf.Sign(diff.x) : 0,
                    0,
                    diff.z != 0 ? (int)Mathf.Sign(diff.z) : 0
                );
            }

            public static UnitFacing CalculateFacing(Vector3Int from, Vector3Int to)
            {
                Vector3Int direction = CalculateDirection(from, to);
                return DirectionToFacing(direction);
            }

            public static UnitFacing GetNearestCardinalFacing(Vector3 direction)
            {
                Vector2 dir2D = new Vector2(direction.x, direction.z);
                if (dir2D.magnitude < 0.01f) return UnitFacing.North;

                float angle = Mathf.Atan2(dir2D.x, dir2D.y) * Mathf.Rad2Deg;
                if (angle < 0) angle += 360f;

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
