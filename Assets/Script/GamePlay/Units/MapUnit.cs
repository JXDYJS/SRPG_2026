using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using Modifier;
using GamePlay.buff;
using Global;
using Command;

namespace GamePlay
{
    namespace unit
    {
        using Character.instance;
        using Status.damage;
        using Modifier;
        using GamePlay.relics;
        using Command;
        
        // --- Auxiliary Class for Movement Definition ---

        public class UnitMoveStats
        {
            [Header("Movement Capabilities")]
            public MoveType moveType = MoveType.Ground;

            [Tooltip("Max height difference to climb up (default 1)")]
            public int jumpHeight = 1; 

            [Tooltip("Max height difference to drop down (default 3)")]
            public int dropHeight = 3;
        }

        // --- Main MapUnit Class ---
        public class MapUnit : MonoBehaviour,ITrackable
        {
            [Header("Movement Config")]
            public UnitMoveStats moveStats = new UnitMoveStats(); 
            public float moveSpeed = 5.0f;

            [Header("Runtime State (Read-Only)")]
            public Vector2Int gridPosition; // Current Logical Position
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

            public void Setup(CharacterInstance character, MapManager mapManager, int startX, int startZ)
            {
                this.Character = character;
                this._mapManager = mapManager;

                // Snap to grid
                SetGridPosition(startX, startZ);
                
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

            public void TakeDamage(DamageInfo info)
            {
                UndoSystem.Instance.RegisterDirty(this);
                Character.statSystem.currentHP -= (int)info.damage;
                Debug.Log($"{name} 受到 {info.damage} 点伤害 ({info.damageType})");
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

            private void Die()
            {
                Debug.Log($"{name} has died.");
                UnitManager.Instance.UnregisterUnit(this);
                Destroy(gameObject);
            }

            // ================== Movement Logic ==================

            public void SetGridPosition(int x, int z)
            {
                Vector2Int oldPos = gridPosition;
                gridPosition = new Vector2Int(x, z);

                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                }

                float y = 0;
                if (_mapManager != null && _mapManager.logicalGrid != null)
                {
                    var cell = _mapManager.logicalGrid.GetCell(x, z);
                    if (cell != null) y = cell.floorHeight;
                }

                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;
                transform.position = new Vector3(x * cellSize, y, z * cellSize);
            }

            public void MoveAlongPath(List<Vector2Int> path)
            {
                if (path == null || path.Count == 0) return;
                UndoSystem.Instance.RegisterDirty(this);
                
                if (isMoving) StopAllCoroutines();
                StartCoroutine(MoveRoutine(path));
            }

            IEnumerator MoveRoutine(List<Vector2Int> path)
            {
                //isMoving = true;
                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;

                foreach (var step in path)
                {
                    float targetY = 0;
                    if (_mapManager != null && _mapManager.logicalGrid != null)
                    {
                        var cell = _mapManager.logicalGrid.GetCell(step.x, step.y);
                        if (cell != null) targetY = cell.floorHeight;
                    }

                    Vector3 targetWorldPos = new Vector3(
                        step.x * cellSize, 
                        targetY, 
                        step.y * cellSize
                    );

                    while (Vector3.Distance(transform.position, targetWorldPos) > 0.05f)
                    {
                        transform.position = Vector3.MoveTowards(transform.position, targetWorldPos, moveSpeed * Time.deltaTime);
                        yield return null; 
                    }

                    transform.position = targetWorldPos;
                    
                    Vector2Int oldPos = gridPosition;
                    gridPosition = step;

                    if (UnitManager.Instance != null)
                    {
                        UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                    }
                }

                //isMoving = false;
            }

            //=============Level===============
            public virtual void LevelUp()
            {
                Character.LevelUp();
            }

            private void SwitchState(UnitState newState)
            {
                if (currentState == UnitState.Dead) return; // 死人不能复生
                
                // 退出旧状态逻辑 (可选)
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
                
                // 1. 还原位置
                SetGridPosition(snap.GridPosition.x, snap.GridPosition.y);
                
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