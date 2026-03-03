using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using Modifier;
using GamePlay.buff;
using Global;
using Command;
using GamePlay.Grid;
using GamePlay.Skill;

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
            public const float BASE_ACTION_DISTANCE = 10000f;
            public float CurrentActionValue; //行动倒计时

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

            // --- 3. View Reference (New!) ---
            // 视觉表现层引用
            public View.UnitView View { get { return GetComponent<View.UnitView>(); } }

            // --- 3. Cache Optimization for Modifiers ---
            private List<CombatModifier> _cachedModifiers = new List<CombatModifier>();
            private bool _isModifiersDirty = true; // Default dirty to ensure first build

            // Internal Reference
            private MapManager _mapManager; 
            [Header("阵营")]
            public FactionType Faction;
            public HashSet<MapUnit> _personalEnemies = new HashSet<MapUnit>();
            public virtual bool HasGrudgeAgainst(MapUnit target) => _personalEnemies.Contains(target);
            public int actionPoints = 1;
            public bool hasMoved = false;

            public SkillDataSO NormalAttackSkill => Character?.SkillInventory?.GetSkill(SkillSlotType.NormalAttack);

            public bool CanMove => !hasMoved && actionPoints > 0;
            public bool CanAction => actionPoints > 0;
            public bool IsActionDone => actionPoints <= 0 && hasMoved;

            public List<SkillDataSO> GetAvailableSkills()
            {
                return Character?.SkillInventory?.GetAllAvailableSkills() ?? new List<SkillDataSO>();
            }

            public List<SkillDataSO> GetActiveSkills()
            {
                return Character?.SkillInventory?.GetActiveSkills() ?? new List<SkillDataSO>();
            }

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
                
                // 处理仇恨
                if(info.sourceUnit != null && info.sourceUnit != this)
                {
                    if(!_personalEnemies.Contains(info.sourceUnit))
                    {
                        _personalEnemies.Add(info.sourceUnit);
                        Debug.Log($"{name} 被激怒了！将 {info.sourceUnit.name} 视为敌人！");
                    }
                }

                if (info.sourceUnit != null)
                {
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
                    if (info.sourceUnit != null)
                    {
                        foreach (var mod in info.sourceUnit.GetModifiers())
                        {
                            mod.OnKill(info);
                        }
                    }
                    
                    foreach (var mod in this.GetModifiers())
                    {
                        mod.OnDie(info);
                    }

                    Die();
                }
            }

        public virtual void Attack(MapUnit target)
        {

            if (target == null || target.Character.statSystem.currentHP <= 0) return;

            DamageInfo info = new DamageInfo(
                Character.statSystem.ATK.getValue(),
                this,
                target,
                DamageType.Physical,
                DamageMethod.Normal
            );

            CombatCalculator.CalculateDamage(info);
            target.TakeDamage(info); 
        }

            // private void ExecuteAttackLogic(MapUnit target,DamageInfo info = null)
            // {
            //     if (target != null && target.Character.statSystem.currentHP > 0)
            //     {
            //         if(info == null)
            //         {
            //             Debug.LogError($"<color=red>⚠️ {name} 尝试攻击 {target.name}，但未提供伤害信息！</color>");
            //             return;
            //         }

            //         CombatCalculator.CalculateDamage(info);
            //         target.TakeDamage(info); 
            //     }
            // }

            // IEnumerator AttackVisualRoutine(MapUnit target)
            // {
            //     SwitchState(UnitState.Attacking);
            //     transform.LookAt(target.transform);

            //     // 前摇动画
            //     yield return new WaitForSeconds(0.2f); 

            //     // 【关键点】这里不再调用 TakeDamage（因为血已经扣过了）
            //     // 这里只触发“视觉上的受击反馈”
            //     if (target != null)
            //     {
            //         Debug.Log($"<color=red>⚔️ {name} 攻击命中视觉效果！</color>");
            //         // 告诉目标：你该播放挨打动画了
            //         target.PlayHitVisual(); 
            //     }

            //     // 后摇
            //     yield return new WaitForSeconds(0.3f); 
            //     SwitchState(UnitState.Idle);
            // }

            public List<Vector3Int> GetCurrentAttackRange(Vector3Int? targetPos = null)
            {
                if (NormalAttackSkill == null)
                {
                    Debug.LogWarning($"{name} 没有配置 NormalAttackSkill，无法计算攻击范围");
                    return new List<Vector3Int>();
                }

                return AttackRangeSystem.GetSkillRange3D(this.gridPosition, targetPos, NormalAttackSkill);
            }

            public List<Vector3Int> GetSkillRange(SkillDataSO skill, Vector3Int? targetPos = null)
            {
                if (skill == null)
                {
                    Debug.LogWarning($"{name} 技能为空，无法计算范围");
                    return new List<Vector3Int>();
                }

                return AttackRangeSystem.GetSkillRange3D(this.gridPosition, targetPos, skill);
            }

            public List<Vector3Int> GetSkillAllPossibleRange(SkillDataSO skill)
            {
                if (skill == null)
                {
                    Debug.LogWarning($"{name} 技能为空，无法计算范围");
                    return new List<Vector3Int>();
                }

                List<Vector3Int> allRange = new List<Vector3Int>();
                HashSet<Vector3Int> uniquePositions = new HashSet<Vector3Int>();

                if (skill.AttackPattern == AttackPatternType.Line || skill.AttackPattern == AttackPatternType.Cone)
                {
                    Vector2Int[] directions = new Vector2Int[]
                    {
                        Vector2Int.up,
                        Vector2Int.down,
                        Vector2Int.left,
                        Vector2Int.right
                    };

                    foreach (var dir in directions)
                    {
                        Vector3Int fakeTarget = new Vector3Int(
                            gridPosition.x + dir.x,
                            gridPosition.y,
                            gridPosition.z + dir.y
                        );

                        List<Vector3Int> rangeInDir = AttackRangeSystem.GetSkillRange3D(gridPosition, fakeTarget, skill);
                        foreach (var pos in rangeInDir)
                        {
                            if (uniquePositions.Add(pos))
                            {
                                allRange.Add(pos);
                            }
                        }
                    }
                }
                else
                {
                    allRange = AttackRangeSystem.GetSkillRange3D(gridPosition, null, skill);
                }

                return allRange;
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
                Vector3Int oldPos = gridPosition;
                SetGridPositionDirectly(pos);
                UnitManager.Instance.UpdateUnitPosition(this,oldPos);
                if (MapManager.Instance != null)
                {
                    transform.position = MapManager.Instance.GetWorldPosition(pos);
                }
            }

            public void ResetActionValue()
            {
                float spd = Character.statSystem.Speed.getValue();
                // 速度越快，所需的 AV 越小
                CurrentActionValue = BASE_ACTION_DISTANCE / Mathf.Max(1, spd); 
            }

            public void SetGridPosition(int x, int y, int z)
            {
                SetGridPosition(new Vector3Int(x, y, z));
            }

            public void MoveAlongPath(List<Vector3Int> path)
            {
                if (path == null || path.Count == 0) return;
                
                // 记录移动前的状态（这是关键，Undo 会回到这里）
                UndoSystem.Instance.RegisterDirty(this);
                
                if (isMoving) StopAllCoroutines();
                StartCoroutine(MoveRoutine(path));
            }

            IEnumerator MoveRoutine(List<Vector3Int> path)
            {
                //弃用
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
                    Vector3Int oldPos = gridPosition;
                    gridPosition = step;
                    UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                }
                UnitManager.Instance.UpdateUnitPosition(this, gridPosition);

                SwitchState(UnitState.Idle);
            }

            //=============Level===============
            public virtual void LevelUp()
            {
                Character.LevelUp();
            }

            public void SwitchState(UnitState newState)
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
            //=============Action===============
            public virtual void OnTurnStart()
            {
                hasMoved = false;
                foreach(var mod in this.GetModifiers())
                {
                    mod.OnTurnStart(this);
                }
                actionPoints++;
                //TODO
            }

            public virtual void OnTurnEnd()
            {
                actionPoints = 0;
                foreach(var mod in this.GetModifiers())
                {
                    mod.OnTurnEnd(this);
                }
                //TODO
            }

            public virtual void OnWait()
            {
                foreach(var mod in this.GetModifiers())
                {
                    mod.OnWait(this);
                }
                //TODO
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
                
                //1. 还原位置
                SetGridPosition(snap.GridPosition.x, snap.GridPosition.y, snap.GridPosition.z);
                
                // 更新 UnitManager 中的位置记录
                // if (UnitManager.Instance != null)
                // {
                //     UnitManager.Instance.UpdateUnitPosition(this, snap.GridPosition);
                // }
                
                //2. 还原 HP
                Character.statSystem.currentHP = snap.CurrentHP;
                // 如果有血条UI，这里记得调用 UpdateHealthUI();

                //3. 还原 Buff 
                for (int i = ActiveBuffs.Count - 1; i >= 0; i--)
                {
                    if (!snap.ActiveBuffs.Contains(ActiveBuffs[i]))
                    {
                        RemoveBuff(ActiveBuffs[i]); // 触发 OnRemove，移除属性修正
                    }
                }
                //补回缺失的 (快照里有，现在的没的)
                foreach (var buff in snap.ActiveBuffs)
                {
                    if (!ActiveBuffs.Contains(buff))
                    {
                        ActiveBuffs.Add(buff);
                        buff.OnApply(this); // 重新触发 OnApply，挂载属性修正
                    }
                }

                currentState = snap.State;
                
                //4. 还原行动状态
                actionPoints = snap.ActionPoints;
                hasMoved = snap.HasMoved;
                
                //5. 还原个人仇恨列表
                _personalEnemies = new HashSet<MapUnit>(snap.PersonalEnemies);
                
                //6. 重置状态
                StopAllCoroutines();
            }

            public void SetState(UnitState state)
            {
                SwitchState(state);
            }
            //========Turn==========
            public void MarkAsMoved()
            {
                UndoSystem.Instance.RegisterDirty(this);
                hasMoved = true;
                Debug.Log($"{name} 已移动");
            }
            public void MarkAsActionDone()
            {
                UndoSystem.Instance.RegisterDirty(this);
                actionPoints = 0;
                Debug.Log($"{name} 已行动完毕");
            }
            public void ResetTurnState()
            {
                hasMoved = false;
                actionPoints = 1;
            }
            //========Tools===========
            public Vector3 GetWorldPositionFromGrid(Vector3Int gridPos)
            {
                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;
                
                float blockBottomY = gridPos.y * cellSize;
                
                float blockHeight = 0f;
                if (_mapManager != null)
                {
                    blockHeight = _mapManager.logicalGrid.GetBlockYSize(gridPos) * cellSize;
                }
                float standY = blockBottomY + blockHeight;

                return new Vector3(
                    gridPos.x * cellSize, 
                    standY, 
                    gridPos.z * cellSize
                );
            }

            public void SetGridPositionDirectly(Vector3Int pos)
            {
                UndoSystem.Instance.RegisterDirty(this);
                gridPosition = pos;
            }
        }
    }
}