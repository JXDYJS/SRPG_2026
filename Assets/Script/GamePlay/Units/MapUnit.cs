using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using Modifier;
using GamePlay.buff;
using Global;
using Command;
using GamePlay.Grid;

namespace GamePlay
{
    namespace unit
    {
        using Character.instance;
        using Status.damage;
        using Modifier;
        using GamePlay.relics;
        using Command;
        using Unity.VisualScripting;
        using UnityEditor;

        // --- Auxiliary Class for Movement Definition ---

        public class UnitMoveStats
        {
            [Header("Movement Capabilities")]
            public MoveType moveType = MoveType.Ground;

            [Tooltip("Max height difference to climb up (default 1)")]
            public float jumpHeight = 0.6f; 

            [Tooltip("Max height difference to drop down (default 3)")]
            public float dropHeight = 0.6f;
        }

        // --- Main MapUnit Class ---
        public class MapUnit : MonoBehaviour,ITrackable
        {
            [Header("Movement Config")]
            public UnitMoveStats moveStats = new UnitMoveStats(); 
            public float moveSpeed = 5.0f;

            [Header("Runtime State (Read-Only)")]
            public Vector3Int gridPosition;
            public bool isMoving => CurrentState == UnitState.Moving;

            [Header("FSM")]
            [SerializeField] // 方便 Inspector 调试看状态
            private UnitState currentState = UnitState.Idle;
            public UnitState CurrentState => currentState;

            public bool IsBusy => currentState != UnitState.Idle;

            // --- 1. Soul Reference (The Data) ---
            public CharacterInstance Character { get; private set; }

            // --- 2. Buff Storage (New!) ---
            // 存储当前单位身上的临时 Buff (实现了 CombatModifier 的对象)
            // 不在 Inspector 显示，防止误改引用
            public List<BuffBase> ActiveBuffs = new List<BuffBase>();

            // --- 3. Cache Optimization for Modifiers ---
            private List<CombatModifier> _cachedModifiers = new List<CombatModifier>();
            private bool _isModifiersDirty = true; // Default dirty to ensure first build

            // Internal Reference
            private MapManager _mapManager; 
            [Header("阵营")]
            public FactionType Faction;
            private HashSet<MapUnit> _personalEnemies = new HashSet<MapUnit>();//个人仇恨列表
            public virtual bool HasGrudgeAgainst(MapUnit target) => _personalEnemies.Contains(target);

            // ================== Lifecycle ==================

            void Start()
            {
                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.RegisterUnit(this);
                }
            }

            void OnDestroy()
            {
                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.UnregisterUnit(this);
                }
            }

            // ================== Initialization ==================

            public void Setup(CharacterInstance character, MapManager mapManager, int startX, int startY, int startZ)
            {
                this.Character = character;
                this._mapManager = mapManager;

                // Snap to grid
                SetGridPosition(startX, startY, startZ);
                
                // 初始化时清空旧 Buff，并强制重刷缓存
                ActiveBuffs.Clear();
                SetModifiersDirty();
            }

            public void SetModifiersDirty()
            {
                _isModifiersDirty = true;
            }

            // ================== Buff Management ==================

            /// <summary>
            /// 给单位添加一个 Buff，并自动标记缓存失效
            /// </summary>
            public void AddBuff(BuffBase buff)
            {
                UndoSystem.Instance.RegisterDirty(this);
                if (buff != null)
                {
                    if(ActiveBuffs.Contains(buff))
                    {
                        buff.OnRepeatedlyObtain();
                        return;
                    }
                    ActiveBuffs.Add(buff);
                    buff.OnApply(this);
                    SetModifiersDirty();
                    Debug.Log($"{name} 获得了 Buff: {buff.name}");
                }
                else
                {
                    Debug.LogError($"尝试添加无效 Buff为Null: {buff.name}");
                }
            }

            /// <summary>
            /// 移除 Buff
            /// </summary>
            public void RemoveBuff(BuffBase buff)
            {
                if (ActiveBuffs.Contains(buff))
                {
                    ActiveBuffs.Remove(buff);
                    buff.OnRemove(this);
                    SetModifiersDirty();
                    Debug.Log($"{name} 失去了 Buff: {buff.name}");
                }
            }

            // ================== Damage Pipeline Interface ==================

            public List<CombatModifier> GetModifiers()
            {
                if (_isModifiersDirty)
                {
                    RebuildModifierCache();
                }
                return _cachedModifiers;
            }

            private void RebuildModifierCache()
            {
                _cachedModifiers.Clear();

                // 1. Add Buffs (Local)
                // 直接把当前身上的 Buff 全部加进去
                _cachedModifiers.AddRange(ActiveBuffs);

                // 2. Add Relics from Global Manager (Only if this is a Player Unit)
                if (CompareTag("Player") && RunManager.Instance != null)
                {
                    // 假设 RunManager.Relics 里的对象也继承自 CombatModifier
                    // 因为我们之前设计 RelicBase 继承自 CombatModifier，所以这里是可以直接转型的
                    foreach (var relic in RunManager.Instance.Relics)
                    {
                        if (relic is CombatModifier mod)
                        {
                            _cachedModifiers.Add(mod);
                        }
                    }
                }

                // 3. Sort by priority (Lowest number first)
                _cachedModifiers.Sort((a, b) => a.Priority.CompareTo(b.Priority));

                _isModifiersDirty = false; // Cache is now clean
            }

            // ================== Combat Logic ==================

            public virtual void TakeDamage(DamageInfo info)
            {
                UndoSystem.Instance.RegisterDirty(this);
                Character.statSystem.currentHP -= (int)info.damage;
                Debug.Log($"{name} 受到 {info.damage} 点伤害 ({info.damageType})");
                //处理仇恨
                if(info.sourceUnit != null && info.sourceUnit != this)
                {
                    if(!_personalEnemies.Contains(info.sourceUnit))
                    {
                        _personalEnemies.Add(info.sourceUnit);
                        Debug.Log($"{name} 被激怒了！将 {info.sourceUnit.name} 视为敌人！");
                    }
                }
                //=======TODO 受击效果==========

                StartCoroutine(HitFlashRoutine());

                //=======TODO 受击效果==========

                if (info.sourceUnit != null)
                {
                    // 遍历攻击者身上的所有 Buff 和 藏品
                    foreach (var mod in info.sourceUnit.GetModifiers())
                    {
                        mod.OnHit(info);
                    }
                }

                foreach (var mod in this.GetModifiers())
                {
                    mod.OnBeHurt(info);
                }

                if (Character.statSystem.currentHP <= 0)
                {
                    // A. 触发攻击者的 OnKill
                    if (info.sourceUnit != null)
                    {
                        foreach (var mod in info.sourceUnit.GetModifiers())
                        {
                            mod.OnKill(info);
                        }
                    }
                    
                    // B. 触发自己的 OnDie
                    foreach (var mod in this.GetModifiers())
                    {
                        mod.OnDie(info);
                    }

                    Die();
                }
            }

            public virtual void Attack(MapUnit target)
            {
                if (IsBusy) return;
                StartCoroutine(AttackVisualRoutine(target));
                DamageInfo info = new DamageInfo(
                    Character.statSystem.ATK.getValue(),
                    this,
                    target,
                    DamageType.Physical,
                    DamageMethod.Normal
                );
                ExecuteAttackLogic(target,info);
            }

            private void ExecuteAttackLogic(MapUnit target,DamageInfo info = null)
            {
                if (target != null && target.Character.statSystem.currentHP > 0)
                {
                    if(info == null)
                    {
                        Debug.LogError($"<color=red>⚠️ {name} 尝试攻击 {target.name}，但未提供伤害信息！</color>");
                        return;
                    }

                    CombatCalculator.CalculateDamage(info);
                    target.TakeDamage(info); 
                }
            }

            IEnumerator AttackVisualRoutine(MapUnit target)
            {
                SwitchState(UnitState.Attacking);
                transform.LookAt(target.transform);

                // 前摇动画
                yield return new WaitForSeconds(0.2f); 

                // 【关键点】这里不再调用 TakeDamage（因为血已经扣过了）
                // 这里只触发“视觉上的受击反馈”
                if (target != null)
                {
                    Debug.Log($"<color=red>⚔️ {name} 攻击命中视觉效果！</color>");
                    // 告诉目标：你该播放挨打动画了
                    target.PlayHitVisual(); 
                }

                // 后摇
                yield return new WaitForSeconds(0.3f); 
                SwitchState(UnitState.Idle);
            }

            public void PlayHitVisual()
            {
                StartCoroutine(HitFlashRoutine());
            }

            public List<Vector3Int> GetCurrentAttackRange(Vector3Int? targetPos = null)
            {
                Vector3Int aimTarget = targetPos ?? (this.gridPosition + GetForwardVector()); 
                
                Vector2Int start2D = new Vector2Int(this.gridPosition.x, this.gridPosition.z);
                Vector2Int target2D = new Vector2Int(aimTarget.x, aimTarget.z);

                List<Vector2Int> range2D = AttackRangeSystem.GetAttackRange(
                    start2D, 
                    target2D, 
                    this.Character.characterData
                );

                // 3. 垂直延伸 (3D Extrusion)
                List<Vector3Int> valid3DTiles = new List<Vector3Int>();
                
                int heightRangeUp = 2;   // 向上能打 2 格
                int heightRangeDown = 2; // 向下能打 2 格

                // 获取攻击者的“打击区间”
                // 假设攻击者高度为 1 (或者从数据读取)，攻击判定通常基于“手部位置”或“中心位置”
                // 这里简化逻辑：攻击范围覆盖 [MyY - Down, MyY + Height + Up]
                int myY = this.gridPosition.y;

                foreach (Vector2Int p2d in range2D)
                {
                    for (int yOffset = -heightRangeDown; yOffset <= heightRangeUp; yOffset++)
                    {
                        int targetY = myY + yOffset;
                        
                        Vector3Int pos3D = new Vector3Int(p2d.x, targetY, p2d.y);

                        
                        // 目前为了通用性，我们返回所有空间点，由 UI 层决定怎么画框
                        valid3DTiles.Add(pos3D);
                    }
                }

                return valid3DTiles;
            }

            private Vector3Int GetForwardVector()
            {
                //TODO 这里的逻辑可以优化，比如记录 Unit 的 transform.forward
                return new Vector3Int(1, 0, 0); 
            }

            // 核心判定：判断我能不能打中某个怪 (Intersection Logic)
            public bool CanAttack(MapUnit target)
            {
                if (target == null) return false;

                // 1. 获取我的所有攻击范围格子
                // 注意：这里传入 target.gridPosition 是为了确定“朝向”，如果是全向技能则无所谓
                List<Vector3Int> myRange = GetCurrentAttackRange(target.gridPosition);

                // 2. 获取目标的“受击体素 (Hitbox Voxels)”
                // 假设怪物占据 [Pos, Pos+Height] 的空间
                List<Vector3Int> targetOccupiedTiles = target.GetOccupiedTiles();

                // 3. 判断交集 (Intersection)
                // 只要攻击范围里有一个格子 = 怪物占据的格子，就算命中
                foreach (var hitPos in myRange)
                {
                    if (targetOccupiedTiles.Contains(hitPos)) return true;
                }

                return false;
            }

            // 获取单位占据的所有格子 (用于判定受击)
            public List<Vector3Int> GetOccupiedTiles()
            {
                List<Vector3Int> tiles = new List<Vector3Int>();
                int height = 2; // 假设人物高度 2 格，以后读配置 TODO
                
                for (int i = 0; i < height; i++)
                {
                    tiles.Add(new Vector3Int(gridPosition.x, gridPosition.y + i, gridPosition.z));
                }
                return tiles;
            }

            private void Die()
            {
                Debug.Log($"{name} has died.");
                UndoSystem.Instance.RegisterDirty(this);
                UnitManager.Instance.UnregisterUnit(this);
                // Destroy(gameObject);
                gameObject.SetActive(false);
                SwitchState(UnitState.Dead);
            }

            // ================== Movement Logic ==================

            public void SetGridPosition(Vector3Int pos)
            {
                gridPosition = pos;
                
                // 计算世界坐标 (假设 Grid y=0 对应 World y=0，如果 Pivot 在底部)
                // 如果你的方块 Pivot 在中心，这里可能需要偏移
                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;
                
                // 获取该方块的“站立面”高度
                float standY = pos.y;
                if (_mapManager != null)
                {
                    var blockType = _mapManager.logicalGrid.GetBlock(pos);
                    standY += _mapManager.logicalGrid.GetBlockHeight(blockType);
                }

                transform.position = new Vector3(pos.x * cellSize, standY, pos.z * cellSize);
            }

            public void SetGridPosition(int x, int y, int z)
            {
                SetGridPosition(new Vector3Int(x, y, z));
            }

            public void MoveAlongPath(List<Vector3Int> path) // 改为 List<Vector3Int>
            {
                if (path == null || path.Count == 0) return;
                
                // 记录移动前的状态（这是关键，Undo 会回到这里）
                UndoSystem.Instance.RegisterDirty(this);
                
                if (isMoving) StopAllCoroutines();
                StartCoroutine(MoveRoutine(path));
            }

            IEnumerator MoveRoutine(List<Vector3Int> path)
            {
                SwitchState(UnitState.Moving);
                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;

                foreach (var step in path)
                {
                    // 计算目标点的世界坐标
                    float standHeight = 0;
                    if (_mapManager != null)
                    {
                        var blockType = _mapManager.logicalGrid.GetBlock(step);
                        standHeight = _mapManager.logicalGrid.GetBlockHeight(blockType);
                    }

                    Vector3 targetWorldPos = new Vector3(
                        step.x * cellSize, 
                        step.y * cellSize + standHeight, 
                        step.z * cellSize
                    );

                    // 动画：移动到下一个格
                    while (Vector3.Distance(transform.position, targetWorldPos) > 0.05f)
                    {
                        transform.position = Vector3.MoveTowards(transform.position, targetWorldPos, moveSpeed * Time.deltaTime);
                        yield return null; 
                    }

                    // 修正最终位置
                    transform.position = targetWorldPos;
                    
                    // 更新逻辑坐标 (每走一步更新一次，确保 UnitManager 里的位置是新的)
                    gridPosition = step;
                    
                    // TODO: 这里需要 UnitManager.Instance.UpdateUnitPosition(this, oldPos)
                    // 但你需要先把 UnitManager 里的 Dictionary<Vector2Int, MapUnit> 改成 Vector3Int
                }

                SwitchState(UnitState.Idle);
            }

            //=============Level===============
            public virtual void LevelUp()
            {
                Character.LevelUp();
            }

            private void SwitchState(UnitState newState)
            {
                if (currentState == UnitState.Dead) return; // 死人不能复生
                
                // OnExitState(currentState);

                currentState = newState;
                
                // 进入新状态逻辑
                switch (newState)
                {
                    case UnitState.Idle:
                        // 恢复呼吸动画
                        break;
                    case UnitState.Dead:
                        //HandleDeath();
                        break;
                }
            }

            IEnumerator HitFlashRoutine()
            {
                Renderer renderer = GetComponentInChildren<Renderer>();

                if (renderer != null)
                {
                    Color originalColor = renderer.material.color;

                    renderer.material.color = Color.red;

                    yield return new WaitForSeconds(0.1f);

                    if (renderer != null)
                    {
                        renderer.material.color = originalColor;
                    }
                }
            }
            public object CaptureState() => new UnitSnapshot(this);
            public void RestoreState(object state)
            {
                var snap = (UnitSnapshot)state;

                if (!gameObject.activeSelf)
                {
                    gameObject.SetActive(true);
                    UnitManager.Instance.RegisterUnit(this); 
                }
                
                // 1. 还原位置
                SetGridPosition(snap.GridPosition.x, snap.GridPosition.y, snap.GridPosition.z);
                
                // 2. 还原 HP
                Character.statSystem.currentHP = snap.CurrentHP;
                // 如果有血条UI，这里记得调用 UpdateHealthUI();

                // 3. 还原 Buff (最复杂的部分)
                // A. 删除多余的 (现在的有，快照里没的)
                for (int i = ActiveBuffs.Count - 1; i >= 0; i--)
                {
                    if (!snap.ActiveBuffs.Contains(ActiveBuffs[i]))
                    {
                        RemoveBuff(ActiveBuffs[i]); // 触发 OnRemove，移除属性修正
                    }
                }
                // B. 补回缺失的 (快照里有，现在的没的)
                foreach (var buff in snap.ActiveBuffs)
                {
                    if (!ActiveBuffs.Contains(buff))
                    {
                        ActiveBuffs.Add(buff);
                        buff.OnApply(this); // 重新触发 OnApply，挂载属性修正
                    }
                }

                currentState = snap.State;
                
                // 4. 重置状态
                StopAllCoroutines();
            }
        }
    }
}