using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using Modifier;
using GamePlay.Buff;
using Global;
using Command;
using GamePlay.Grid;
using GamePlay.Skill;
using DG.Tweening;
using Core.Data;
namespace GamePlay.Units
{
    using Character.instance;
    using Status.damage;
    using Modifier;
    using GamePlay.Relics;
    using Command;
    using Unity.VisualScripting;
    using UnityEditor;
    using Character;
    using System;

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

        [field: System.NonSerialized]
        public event System.Action<MapUnit> OnActionValueChanged;

        [SerializeField] private float _currentActionValue;
        public float CurrentActionValue
        {
            get => _currentActionValue;
            set
            {
                if (!Mathf.Approximately(_currentActionValue, value))
                {
                    _currentActionValue = value;
                    OnActionValueChanged?.Invoke(this);
                }
            }
        }

        [Header("Runtime State (Read-Only)")]
        public Vector3Int gridPosition;
        public bool isMoving => CurrentState == UnitState.Moving;

        [Header("朝向系统")]
        [SerializeField] // 方便 Inspector 调试看状态
        private UnitFacing currentFacing = UnitFacing.North;
        public UnitFacing CurrentFacing => currentFacing;
        private UnitFacing previousFacing = UnitFacing.North; // 用于记录技能前的朝向

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
        // [Header("阵营")]
        public FactionType Faction;
        public HashSet<MapUnit> _personalEnemies = new HashSet<MapUnit>();
        public virtual bool HasGrudgeAgainst(MapUnit target) => _personalEnemies.Contains(target);
        public int actionPoints = 1;
        public bool hasMoved = false;

        public SkillDataSO NormalAttackSkill => Character?.SkillInventory?.GetSkill(SkillSlotType.NormalAttack);
        public SkillDataSO getNormalAttackSkill()
        {
            //TODO写着一段是为了未来职业能直接提供普攻
            string name = GetUnitName();
            if (Character != null)
            {
                if (Character.SkillInventory != null)
                {
                    SkillDataSO originalSkill = Character.SkillInventory.GetSkill(SkillSlotType.NormalAttack);
                    if (originalSkill == null)
                    {
                        Debug.LogError(name + "没有配置普通攻击技能");
                        return null;
                    }
                    
                    if(View != null)
                    {
                        var normalAttackViews = View.NormalAttackVisualData;
                        int viewSize = normalAttackViews.Count;
                        int skillSize = originalSkill.Phases.Count;
                        if(viewSize != skillSize)
                        {
                            Debug.LogError(name+"的普通攻击视觉效果数量和技能阶段长度不等");
                            return null;
                        }
                        
                        // 深度复制一份，避免修改原始SO资产
                        SkillDataSO clonedSkill = originalSkill.DeepClone();
                        for(int i = 0;i < skillSize; i++)
                        {
                            clonedSkill.Phases[i].VisualData = normalAttackViews[i];
                        }
                        return clonedSkill;
                    }
                }
            }
            Debug.LogError(name+"获取普攻失败");
            return null;
        }
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

            // 重要：确保初始位置是有效的脚底方块坐标
            Vector3Int startPos = new Vector3Int(startX, startY, startZ);
            
            // 验证并修正起始位置
            if (!GridPositionTool.IsValidFloorPosition(startPos))
            {
                Debug.LogWarning($"单位 {name} 的起始位置 {startPos} 不是有效的脚底方块，尝试向下修正");
                for (int y = startPos.y; y >= 0; y--)
                {
                    Vector3Int checkPos = new Vector3Int(startPos.x, y, startPos.z);
                    if (GridPositionTool.IsValidFloorPosition(checkPos))
                    {
                        startPos = checkPos;
                        break;
                    }
                }
            }
            
            // Snap to grid
            SetGridPosition(startPos.x, startPos.y, startPos.z);
            
            // 重要：确保transform.position与gridPosition同步
            // 如果transform.position与gridPosition对应的世界位置不一致，强制同步
            if (MapManager.Instance != null)
            {
                Vector3 expectedWorldPos = MapManager.Instance.GetWorldPosition(startPos);
                if (Vector3.Distance(transform.position, expectedWorldPos) > 0.1f)
                {
                    transform.position = expectedWorldPos;
                    Debug.Log($"单位 {name} 的transform.position已同步到gridPosition: {startPos}");
                }
            }
            
            // 初始化时清空旧 Buff，并强制重刷缓存
            ActiveBuffs.Clear();
            SetModifiersDirty();
        }

        public int CurrentMP => Character?.MP ?? 0;
        public int MaxMP => Character?.MaxMP ?? 0;

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
            
            if (buff == null)
            {
                Debug.LogError($"尝试添加无效 Buff 为 Null");
                return;
            }

            // 使用 ID 查重，而不是对象引用
            var existingBuff = ActiveBuffs.Find(b => b.ID == buff.ID);

            if (existingBuff != null)
            {
                // 叠加分支：已有同 ID 的 Buff
                existingBuff.OnRepeatedlyObtain(buff.Stacks);
                
                // 销毁传入的新克隆体（它只是个携带数据的临时空壳）
                UnityEngine.Object.Destroy(buff);
                
                Debug.Log($"{name} 叠加了 Buff: {buff.ID}, 增加层数: {buff.Stacks}");
            }
            else
            {
                // 全新挂载分支
                buff.Initialize(this);
                ActiveBuffs.Add(buff);
                buff.OnApply(this);
                SetModifiersDirty();
                
                Debug.Log($"{name} 获得了新 Buff: {buff.ID}, 初始层数: {buff.Stacks}");
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
            if (Data.CommandConfig.playerInvincible && this.Faction == FactionType.Player)
            {
                return;
            }

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

        public virtual void TakeHeal(DamageInfo info)
        {
            UndoSystem.Instance.RegisterDirty(this);
            
            if (info.sourceUnit != null)
            {
                foreach (var mod in info.sourceUnit.GetModifiers())
                {
                    mod.OnHeal(info);
                }
            }

            foreach (var mod in this.GetModifiers())
            {
                mod.OnBeHealed(info);
            }

            Character.statSystem.currentHP += (int)info.damage;
            
            int maxHP = (int)Character.statSystem.maxHP.getValue();
            if (Character.statSystem.currentHP > maxHP)
            {
                Character.statSystem.currentHP = maxHP;
            }
            
            Debug.Log($"{name} 受到 {info.damage} 点治疗");
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

        /// <summary>
        /// 计算移动+攻击的全威胁范围（所有可移动到的格子后普攻能覆盖的格子的并集）
        /// </summary>
        public List<Vector3Int> GetAllPossibleAttackRange()
        {
            if (NormalAttackSkill == null)
            {
                Debug.LogWarning($"{name} 没有配置 NormalAttackSkill，无法计算全攻击范围");
                return new List<Vector3Int>();
            }

            HashSet<Vector3Int> allRange = new HashSet<Vector3Int>();

            int moveRange = (int)Character.statSystem.moveRange.getValue();

            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                gridPosition,
                moveRange,
                MapManager.Instance.logicalGrid,
                moveStats
            );

            foreach (Vector3Int pos in reachableTiles)
            {
                List<Vector3Int> attackRange = AttackRangeSystem.GetCastRange3D(pos, NormalAttackSkill);
                foreach (var tile in attackRange)
                {
                    allRange.Add(tile);
        }
            }
        
            return new List<Vector3Int>(allRange);
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

            // 使用新的CastPattern字段
            if (skill.CastPattern == CastPatternType.Line)
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

                    // 使用新的GetCastRange3D方法
                    List<Vector3Int> rangeInDir = AttackRangeSystem.GetCastRange3D(gridPosition, skill);
                    foreach (var pos in rangeInDir)
                    {
                        // 只添加当前方向上的格子
                        Vector3Int posDir = pos - gridPosition;
                        posDir.y = 0;
                        Vector3Int normalizedPosDir = new Vector3Int(
                            posDir.x != 0 ? (int)Mathf.Sign(posDir.x) : 0,
                            0,
                            posDir.z != 0 ? (int)Mathf.Sign(posDir.z) : 0
                        );
                        
                        Vector3Int normalizedTargetDir = new Vector3Int(
                            dir.x != 0 ? (int)Mathf.Sign(dir.x) : 0,
                            0,
                            dir.y != 0 ? (int)Mathf.Sign(dir.y) : 0
                        );

                        if (normalizedPosDir == normalizedTargetDir)
                        {
                            if (uniquePositions.Add(pos))
                            {
                                allRange.Add(pos);
                            }
                        }
                    }
                }
            }
            else
            {
                // 对于非直线模式，直接获取施法范围
                allRange = AttackRangeSystem.GetCastRange3D(gridPosition, skill);
            }

            return allRange;
        }

        private Vector3Int GetForwardVector()
        {
            // 使用当前朝向返回方向向量
            return Global.FacingTool.FacingToDirection(currentFacing);
        }

        public Vector3Int GetStandPos()
        {
            // 重要：根据新的坐标规则，gridPosition已经是脚底方块坐标
            // 所以直接返回gridPosition，不需要减1
            return gridPosition;
        }

        // 核心判定：判断我能不能打中某个怪 (Intersection Logic)
        public bool CanAttack(MapUnit target)
        {
            if (target == null) return false;

            List<Vector3Int> myRange = GetCurrentAttackRange(target.gridPosition);

            List<Vector3Int> targetOccupiedTiles = target.GetOccupiedTiles();
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
            
            // 交给 View 播放死亡动画并自动隐藏；无 View 时（如环境伤害）立即隐藏
            if (View != null)
            {
                _ = View.PlayDeathAnimation(() => View.HideModel());
            }
            else
            {
                gameObject.SetActive(false);
            }
            
            SwitchState(UnitState.Dead);
        }

        // ================== Movement Logic ==================

        public void SetGridPosition(Vector3Int pos)
        {
            // 重要：确保pos是脚底方块坐标
            // 验证目标位置是否是有效的脚底方块
            if (!GridPositionTool.IsValidFloorPosition(pos))
            {
                Debug.LogWarning($"尝试设置无效的脚底方块坐标: {pos}，单位: {name}");
                // 尝试向下查找有效的脚底方块
                for (int y = pos.y; y >= 0; y--)
                {
                    Vector3Int checkPos = new Vector3Int(pos.x, y, pos.z);
                    if (GridPositionTool.IsValidFloorPosition(checkPos))
                    {
                        pos = checkPos;
                        break;
                    }
                }
            }
            
            // 如果传入的位置与当前脚底位置不同，才进行移动
            if (gridPosition != pos)
            {
                Vector3Int oldPos = gridPosition;
                SetGridPositionDirectly(pos);
                UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                
                if (MapManager.Instance != null)
                {
                    // 使用MapManager的GetWorldPosition，它已经考虑了方块高度
                    Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(pos);
                    transform.position = targetWorldPos;
                    
                    // 重要：确保transform.position与gridPosition完全同步
                    // 如果还有偏差，强制修正
                    if (Vector3.Distance(transform.position, targetWorldPos) > 0.01f)
                    {
                        transform.position = targetWorldPos;
                    }
                }
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

            if (Character != null)
            {
                int maxMP = (int)Character.statSystem.maxMP.getValue();
                int recoverAmount = Mathf.Max(1, maxMP / 5);
                Character.statSystem.currentMP = Mathf.Min(maxMP, Character.statSystem.currentMP + recoverAmount);
                Debug.Log($"{GetUnitName()} 回合开始，回复 {recoverAmount} MP，当前: {Character.MP}/{maxMP}");
            }
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
            
            // 1. 还原位置
            SetGridPosition(snap.GridPosition.x, snap.GridPosition.y, snap.GridPosition.z);
            
            // 2. 还原 HP
            Character.statSystem.currentHP = snap.CurrentHP;
            // 2.5. 还原 MP
            Character.statSystem.currentMP = snap.CurrentMP;

            // 3. 还原 Buff (核心修改部分)
            // 【清理阶段】彻底移除当前身上的所有Buff，触发 OnRemove 清理旧的属性修饰器
            for (int i = ActiveBuffs.Count - 1; i >= 0; i--)
            {
                BuffBase buff = ActiveBuffs[i];
                buff.OnRemove(this); 
            }
            ActiveBuffs.Clear();

            // 【重建阶段】根据详细的快照数据，精确恢复 Buff 和层数
            if (snap.BuffSnapshots != null)
            {
                foreach (var buffSnap in snap.BuffSnapshots)
                {
                    BuffBase buff = buffSnap.buff;
                    
                    // 恢复准确的层数 (关键点：一定要在 OnApply 前设置好层数)
                    buff.Stacks = buffSnap.stacks; 
                    
                    ActiveBuffs.Add(buff);
                    
                    // 重新触发 OnApply，让 Buff 内部根据当前恢复的 Stacks 挂载正确的 StatModifier
                    buff.OnApply(this); 
                }
            }
            
            // 强制刷新一下战斗修饰器缓存 (对应 MapUnit 里的 _isModifiersDirty = true)
            SetModifiersDirty();

            currentState = snap.State;
            
            // 4. 还原行动状态
            actionPoints = snap.ActionPoints;
            hasMoved = snap.HasMoved;
            
            // 5. 还原个人仇恨列表
            _personalEnemies = new HashSet<MapUnit>(snap.PersonalEnemies);
            
            // 6. 重置状态
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

        // ================= 朝向系统方法 =================

        /// <summary>
        /// 设置单位朝向（立即生效）
        /// </summary>
        public void SetFacing(UnitFacing facing)
        {
            if (currentFacing == facing) return;
            
            // 停止可能正在进行的DOTween旋转
            transform.DOKill();
            
            UndoSystem.Instance.RegisterDirty(this);
            currentFacing = facing;
            
            // 更新transform的旋转
            UpdateTransformRotation();
        }

        /// <summary>
        /// 设置单位朝向到指定方向向量
        /// </summary>
        public void SetFacingToDirection(Vector3Int direction)
        {
            UnitFacing facing = Global.FacingTool.DirectionToFacing(direction);
            SetFacing(facing);
        }

        /// <summary>
        /// 设置单位朝向到目标位置
        /// </summary>
        public void FaceToPosition(Vector3Int targetPos, bool smoothRotation = true, float duration = 0.3f)
        {
            Vector3Int direction = Global.FacingTool.CalculateDirection(gridPosition, targetPos);
            
            if (smoothRotation)
            {
                // 计算目标的世界位置（脚底方块坐标+1得到角色身体高度）
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetPos) + Vector3.up;
                
                // 使用新的平滑旋转方法
                RotateTowardsTargetSmoothly(targetWorldPos);
            }
            else
            {
                SetFacingToDirection(direction);
            }
        }

        /// <summary>
        /// 设置单位朝向到目标单位
        /// </summary>
        public void FaceToUnit(MapUnit targetUnit)
        {
            if (targetUnit == null) return;
            FaceToPosition(targetUnit.gridPosition);
        }

        /// <summary>
        /// 记录当前朝向（用于技能释放前）
        /// </summary>
        public void RecordCurrentFacing()
        {
            previousFacing = currentFacing;
        }

        /// <summary>
        /// 恢复到最近的四个基本朝向之一（用于技能释放后）
        /// 从当前攻击角度平滑旋转到最近的四个大方向之一
        /// </summary>
        public void RestoreRecordedFacing()
        {
            // 获取当前transform的Y轴旋转角度
            float currentRotationY = transform.rotation.eulerAngles.y;
            
            // 找到最近的四个基本朝向
            UnitFacing nearestFacing = Global.FacingTool.RotationYToFacing(currentRotationY);
            
            // 平滑旋转到这个最近的朝向
            RotateToFacingSmoothly(nearestFacing);
        }

        /// <summary>
        /// 平滑旋转到目标朝向（用于动画）- DOTween定速旋转版本
        /// </summary>
        public void RotateToFacingSmoothly(UnitFacing targetFacing, float duration = 0.3f)
        {
            RotateToFacingSmoothly(targetFacing);
        }



        /// <summary>
        /// 平滑旋转到目标朝向（用于动画）- DOTween定速旋转版本
        /// </summary>
        public void RotateTowardsTargetSmoothly(Vector3 targetPosition, System.Action onComplete = null)
        {
            // 1. 杀掉旧动画
            transform.DOKill();

            // 2. 计算从自己指向敌人的方向向量
            Vector3 direction = targetPosition - transform.position;
            direction.y = 0; // 忽略高度差，保证角色只在水平面（Y轴）旋转，不会低头/仰头
            
            if (direction.sqrMagnitude < 0.001f) return; // 防止目标和自己重合报错

            // 3. 将方向向量转换为精确的 Y 轴欧拉角
            float targetRotationY = Quaternion.LookRotation(direction).eulerAngles.y;

            // 4. 开始定速旋转（180度/秒）
            transform.DORotate(new Vector3(0, targetRotationY, 0), 180f, RotateMode.Fast)
                .SetSpeedBased(true)
                .SetEase(Ease.Linear)
                .OnComplete(() => {
                    // 确保旋转精确到位
                    transform.rotation = Quaternion.Euler(0, targetRotationY, 0);
                    
                    // 【核心技巧】：通过回调函数通知外部“我已经转好身了，可以播放攻击动画了”
                    onComplete?.Invoke(); 
                });
        }

        public void RotateToFacingSmoothly(UnitFacing targetFacing)
        {
            // 记录你要恢复到的网格方向
            currentFacing = targetFacing; 
            
            transform.DOKill();
            
            // 获取标准的网格角度 (0, 90, 180, 270 等)
            float targetRotationY = Global.FacingTool.FacingToRotationY(targetFacing);
            
            transform.DORotate(new Vector3(0, targetRotationY, 0), 180f, RotateMode.Fast)
                .SetSpeedBased(true)
                .SetEase(Ease.Linear)
                .OnComplete(() => {
                    transform.rotation = Quaternion.Euler(0, targetRotationY, 0);
                });
        }

        /// <summary>
        /// 平滑旋转到目标方向（用于动画）- DOTween定速旋转版本
        /// 保留此方法用于兼容性
        /// </summary>
        public void RotateToDirectionSmoothly(Vector3 direction, float duration = 0.3f)
        {
            // 计算目标位置（当前位置+方向向量）
            Vector3 targetWorldPos = transform.position + direction.normalized;
            RotateTowardsTargetSmoothly(targetWorldPos);
        }

        /// <summary>
        /// 更新transform的旋转以匹配当前朝向
        /// </summary>
        private void UpdateTransformRotation()
        {
            float rotationY = Global.FacingTool.FacingToRotationY(currentFacing);
            transform.rotation = Quaternion.Euler(0, rotationY, 0);
        }

        /// <summary>
        /// 从transform的旋转更新当前朝向
        /// </summary>
        public void UpdateFacingFromTransform()
        {
            float currentRotationY = transform.rotation.eulerAngles.y;
            currentFacing = Global.FacingTool.RotationYToFacing(currentRotationY);
        }

        /// <summary>
        /// 获取当前朝向的方向向量
        /// </summary>
        public Vector3Int GetFacingDirection()
        {
            return Global.FacingTool.FacingToDirection(currentFacing);
        }

        /// <summary>
        /// 获取当前朝向的世界方向向量
        /// </summary>
        public Vector3 GetFacingWorldDirection()
        {
            Vector3Int dir = GetFacingDirection();
            return new Vector3(dir.x, 0, dir.z);
        }
        /// <summary>
        /// 返回职业
        /// </summary>
        /// <returns></returns>
        public UnitClassSO GetClass()
        {
            return Character.characterData.unitClass;
        }
        public String GetClassName()
        {
            return Character.characterData.unitClass.ClassName;
        }
        public ClassInternalID GetClassId()
        {
            return Character.characterData.unitClass.InternalID;
        }
        public string GetUnitName()
        {
            return Character.characterData.name;
        }
    }
}
