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
    using Character;
    using System;

    public class UnitMoveStats
    {
        [Header("Movement Capabilities")]
        public MoveType moveType = MoveType.Ground;

        [Tooltip("Max height difference to climb up (default 1)")]
        public float jumpHeight = 0.6f;

        [Tooltip("Max height difference to drop down (default 3)")]
        public float dropHeight = 0.6f;
    }

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
        [SerializeField]
        private UnitFacing currentFacing = UnitFacing.North;
        public UnitFacing CurrentFacing => currentFacing;
        private UnitFacing previousFacing = UnitFacing.North; // Facing before skill cast

        [Header("FSM")]
        [SerializeField]
        private UnitState currentState = UnitState.Idle;
        public UnitState CurrentState => currentState;

        public bool IsBusy => currentState != UnitState.Idle;

        public CharacterInstance Character { get; private set; }

        /// <summary>
        /// Whether the unit is alive. Subclasses may override for feigned-death states.
        /// </summary>
        public virtual bool IsAlive => Character != null && Character.statSystem.currentHP > 0;

        public List<BuffBase> ActiveBuffs = new List<BuffBase>();

        public View.UnitView View { get { return GetComponent<View.UnitView>(); } }

        private List<CombatModifier> _cachedModifiers = new List<CombatModifier>();
        private bool _isModifiersDirty = true; // Default dirty to ensure first build

        private MapManager _mapManager; 
        public FactionType Faction;
        public HashSet<MapUnit> _personalEnemies = new HashSet<MapUnit>();
        public virtual bool HasGrudgeAgainst(MapUnit target) => _personalEnemies.Contains(target);
        public int actionPoints = 1;
        public bool hasMoved = false;

        public SkillDataSO NormalAttackSkill => Character?.SkillInventory?.GetSkill(SkillSlotType.NormalAttack);
        public SkillDataSO getNormalAttackSkill()
        {
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


        [Header("Deployment Preview")]
        public bool IsPreview;

        void Start()
        {
            if (!IsPreview && UnitManager.Instance != null)
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


        public void Setup(CharacterInstance character, MapManager mapManager, int startX, int startY, int startZ)
        {
            this.Character = character;
            this._mapManager = mapManager;

            Vector3Int startPos = new Vector3Int(startX, startY, startZ);
            
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
            
            SetGridPosition(startPos.x, startPos.y, startPos.z);
            
            if (MapManager.Instance != null)
            {
                Vector3 expectedWorldPos = MapManager.Instance.GetWorldPosition(startPos);
                if (Vector3.Distance(transform.position, expectedWorldPos) > 0.1f)
                {
                    transform.position = expectedWorldPos;
                    Debug.Log($"单位 {name} 的transform.position已同步到gridPosition: {startPos}");
                }
            }
            
            ActiveBuffs.Clear();
            ApplyPassiveBuffs();
            SetModifiersDirty();
        }

        public int CurrentMP => Character?.MP ?? 0;
        public int MaxMP => Character?.MaxMP ?? 0;

        public void SetModifiersDirty()
        {
            _isModifiersDirty = true;
        }


        private void ApplyPassiveBuffs()
        {
            if (Character?.SkillInventory == null) return;

            var passiveSlots = new[]
            {
                SkillSlotType.Passive1,
                SkillSlotType.Passive2,
                SkillSlotType.Passive3,
                SkillSlotType.Passive4,
                SkillSlotType.Passive5
            };

            foreach (var slot in passiveSlots)
            {
                var skill = Character.SkillInventory.GetSkill(slot);
                if (skill == null) continue;

                foreach (var phase in skill.Phases)
                {
                    foreach (var effect in phase.Effects)
                    {
                        if (effect.EffectType == GamePlay.Skill.EffectType.AddBuff)
                        {
                            var buff = BuffManager.CreateBuffFromID(effect.BuffID, effect.BuffStacks);
                            if (buff != null)
                            {
                                buff.IsHidden = true;
                                AddBuff(buff);
                                Debug.Log($"{GetUnitName()} 加载被动技能: {skill.SkillName} → Buff: {effect.BuffID}");
                            }
                        }
                    }
                }
            }
        }


        /// <summary>Adds a buff and invalidates the modifier cache.</summary>
        public void AddBuff(BuffBase buff)
        {
            UndoSystem.Instance.RegisterDirty(this);
            
            if (buff == null)
            {
                Debug.LogError($"尝试添加无效 Buff 为 Null");
                return;
            }

            // Deduplicate by ID, not by reference
            var existingBuff = ActiveBuffs.Find(b => b.ID == buff.ID);

            if (existingBuff != null)
            {
                existingBuff.OnRepeatedlyObtain(buff.Stacks);
                
                UnityEngine.Object.Destroy(buff);
                
                Debug.Log($"{name} 叠加了 Buff: {buff.ID}, 增加层数: {buff.Stacks}");
            }
            else
            {
                buff.Initialize(this);
                ActiveBuffs.Add(buff);
                buff.OnApply(this);
                SetModifiersDirty();
                
                Debug.Log($"{name} 获得了新 Buff: {buff.ID}, 初始层数: {buff.Stacks}");
            }
        }

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

            _cachedModifiers.AddRange(ActiveBuffs);

            if (Faction == FactionType.Player && RunManager.Instance != null)
            {
                foreach (var relic in RunManager.Instance.Relics)
                {
                    if (relic is CombatModifier mod)
                    {
                        _cachedModifiers.Add(mod);
                    }
                }
            }

            _cachedModifiers.Sort((a, b) => a.Priority.CompareTo(b.Priority));

            _isModifiersDirty = false;
        }


        public virtual void TakeDamage(DamageInfo info)
        {
            if (Data.CommandConfig.playerInvincible && this.Faction == FactionType.Player)
            {
                return;
            }

            UndoSystem.Instance.RegisterDirty(this);
            Character.statSystem.currentHP -= (int)info.damage;
            
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

        if (target == null || !target.IsAlive) return;

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

        public List<Vector3Int> GetCurrentAttackRange(Vector3Int? targetPos = null)
        {
            if (NormalAttackSkill == null)
            {
                Debug.LogWarning($"{name} 没有配置 NormalAttackSkill，无法计算攻击范围");
                return new List<Vector3Int>();
            }

            return AttackRangeSystem.GetSkillRange3D(this.gridPosition, targetPos, NormalAttackSkill);
        }

        /// <summary>Union of tiles normal attacks can reach after moving to any reachable tile.</summary>
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

                    List<Vector3Int> rangeInDir = AttackRangeSystem.GetCastRange3D(gridPosition, skill);
                    foreach (var pos in rangeInDir)
                    {
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
                allRange = AttackRangeSystem.GetCastRange3D(gridPosition, skill);
            }

            return allRange;
        }

        private Vector3Int GetForwardVector()
        {
            return Global.FacingTool.FacingToDirection(currentFacing);
        }

        public Vector3Int GetStandPos()
        {
            return gridPosition;
        }

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

        public List<Vector3Int> GetOccupiedTiles()
        {
            List<Vector3Int> tiles = new List<Vector3Int>();
            int height = 2; 
            
            for (int i = 0; i < height; i++)
            {
                tiles.Add(new Vector3Int(gridPosition.x, gridPosition.y + i, gridPosition.z));
            }
            return tiles;
        }

        protected virtual void Die()
        {
            Debug.Log($"{name} has died.");
            UndoSystem.Instance.RegisterDirty(this);
            UnitManager.Instance.UnregisterUnit(this);
            UnitManager.Instance.onUnitDead?.Invoke();

            // Logic/view split: death animation plays in the view layer; hide now if no view.
            if (View != null)
            {
                UnitManager.Instance.RegisterDeath(this);
            }
            else
            {
                gameObject.SetActive(false);
            }

            SwitchState(UnitState.Dead);
        }


        public void SetGridPosition(Vector3Int pos)
        {
            if (!GridPositionTool.IsValidFloorPosition(pos))
            {
                Debug.LogWarning($"尝试设置无效的脚底方块坐标: {pos}，单位: {name}");
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
            
            if (gridPosition != pos)
            {
                Vector3Int oldPos = gridPosition;
                SetGridPositionDirectly(pos);
                UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                
                if (MapManager.Instance != null)
                {
                    // GetWorldPosition already accounts for block height.
                    Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(pos);
                    transform.position = targetWorldPos;
                    
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
            // Faster speed requires less action value.
            CurrentActionValue = BASE_ACTION_DISTANCE / Mathf.Max(1, spd); 
        }

        public void SetGridPosition(int x, int y, int z)
        {
            SetGridPosition(new Vector3Int(x, y, z));
        }

        public void MoveAlongPath(List<Vector3Int> path)
        {
            if (path == null || path.Count == 0) return;
            
            // Record pre-move state; Undo restores from here.
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

                while (Vector3.Distance(transform.position, targetWorldPos) > 0.05f)
                {
                    transform.position = Vector3.MoveTowards(transform.position, targetWorldPos, moveSpeed * Time.deltaTime);
                    yield return null; 
                }

                transform.position = targetWorldPos;
                
                // Keep UnitManager position in sync each step.
                Vector3Int oldPos = gridPosition;
                gridPosition = step;
                UnitManager.Instance.UpdateUnitPosition(this, oldPos);
            }
            UnitManager.Instance.UpdateUnitPosition(this, gridPosition);

            SwitchState(UnitState.Idle);
        }

        public virtual void LevelUp()
        {
            Character.LevelUp();
        }

        public void SwitchState(UnitState newState)
        {
            if (currentState == UnitState.Dead) return; // Dead units cannot be revived
            
            currentState = newState;
            
            switch (newState)
            {
                case UnitState.Idle:
                    break;
                case UnitState.Dead:
                    break;
            }
        }
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
        }

        public virtual void OnWait()
        {
            foreach(var mod in this.GetModifiers())
            {
                mod.OnWait(this);
            }
        }

        /// <summary>Applies passive relics, then fires OnBattleStart to all modifiers.</summary>
        public virtual void OnBattleStart()
        {
            ApplyRelicPassives();
            foreach (var mod in GetModifiers())
            {
                mod.OnBattleStart(this);
            }
            SetModifiersDirty();
        }

        /// <summary>Fires OnBattleEnd to modifiers and removes passive relics.</summary>
        public virtual void OnBattleEnd()
        {
            foreach (var mod in GetModifiers())
            {
                mod.OnBattleEnd(this);
            }
            RemoveRelicPassives();
            SetModifiersDirty();
        }

        // Passive relics: OnApply/OnRemove lifecycle; player faction only.
        private void ApplyRelicPassives()
        {
            if (RunManager.Instance == null) return;
            if (Faction != FactionType.Player) return;
            foreach (var relic in RunManager.Instance.Relics)
            {
                relic.OnApply(this);
            }
        }

        private void RemoveRelicPassives()
        {
            if (RunManager.Instance == null) return;
            if (Faction != FactionType.Player) return;
            foreach (var relic in RunManager.Instance.Relics)
            {
                relic.OnRemove(this);
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
            
            SetGridPosition(snap.GridPosition.x, snap.GridPosition.y, snap.GridPosition.z);
            
            Character.statSystem.currentHP = snap.CurrentHP;
            Character.statSystem.currentMP = snap.CurrentMP;

            for (int i = ActiveBuffs.Count - 1; i >= 0; i--)
            {
                BuffBase buff = ActiveBuffs[i];
                buff.OnRemove(this); 
            }
            ActiveBuffs.Clear();

            if (snap.BuffSnapshots != null)
            {
                foreach (var buffSnap in snap.BuffSnapshots)
                {
                    BuffBase buff = buffSnap.buff;
                    
                    // Set stacks before OnApply.
                    buff.Stacks = buffSnap.stacks; 
                    
                    ActiveBuffs.Add(buff);
                    
                    buff.OnApply(this); 
                }
            }
            
            SetModifiersDirty();

            currentState = snap.State;
            
            actionPoints = snap.ActionPoints;
            hasMoved = snap.HasMoved;
            
            _personalEnemies = new HashSet<MapUnit>(snap.PersonalEnemies);
            
            StopAllCoroutines();
        }

        public void SetState(UnitState state)
        {
            SwitchState(state);
        }
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

        /// <summary>Projectile origin (block top center + chest height).</summary>
        public Vector3 GetProjectileOrigin(SkillDataSO skill = null)
        {
            Vector3 worldPos = MapManager.Instance.GetWorldPosition(gridPosition);
            float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;
            float halfCell = cellSize * 0.5f;
            float halfHeight = Character.characterData.Height * cellSize * 0.5f;
            if (skill != null)
            {
                // Reserved for custom skill override.
            }
            return new Vector3(worldPos.x, worldPos.y + halfHeight, worldPos.z);
        }

        /// <summary>Hit point (world coords); mirrors projectile origin computation.</summary>
        public Vector3 GetHitPoint()
        {
            Vector3 worldPos = MapManager.Instance.GetWorldPosition(gridPosition);
            float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;
            float halfCell = cellSize * 0.5f;
            float halfHeight = Character.characterData.Height * cellSize * 0.5f;
            return new Vector3(worldPos.x , worldPos.y + halfHeight, worldPos.z );
        }

        /// <summary>Hit point from grid coords for targets without a MapUnit (AoE/empty tiles).</summary>
        public static Vector3 GetGridHitPoint(Vector3Int gridPos)
        {
            Vector3 worldPos = MapManager.Instance.GetWorldPosition(gridPos);
            float cellSize = MapManager.Instance?.cellSize ?? 1f;
            float halfCell = cellSize * 0.5f;
            // No CharacterData here; assume a default target height.
            float defaultHalfHeight = cellSize;
            return new Vector3(worldPos.x , worldPos.y + defaultHalfHeight, worldPos.z );
        }

        public void SetGridPositionDirectly(Vector3Int pos)
        {
            UndoSystem.Instance.RegisterDirty(this);
            gridPosition = pos;
        }


        public void SetFacing(UnitFacing facing)
        {
            if (currentFacing == facing) return;
            
            transform.DOKill();
            
            UndoSystem.Instance.RegisterDirty(this);
            currentFacing = facing;
            
            UpdateTransformRotation();
        }

        public void SetFacingToDirection(Vector3Int direction)
        {
            UnitFacing facing = Global.FacingTool.DirectionToFacing(direction);
            SetFacing(facing);
        }

        public void FaceToPosition(Vector3Int targetPos, bool smoothRotation = true, float duration = 0.3f)
        {
            Vector3Int direction = Global.FacingTool.CalculateDirection(gridPosition, targetPos);
            
            if (smoothRotation)
            {
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetPos) + Vector3.up;
                
                RotateTowardsTargetSmoothly(targetWorldPos);
            }
            else
            {
                SetFacingToDirection(direction);
            }
        }

        public void FaceToUnit(MapUnit targetUnit)
        {
            if (targetUnit == null) return;
            FaceToPosition(targetUnit.gridPosition);
        }

        /// <summary>Records current facing before a skill cast.</summary>
        public void RecordCurrentFacing()
        {
            previousFacing = currentFacing;
        }

        /// <summary>Smoothly restore to the nearest cardinal facing after a skill cast.</summary>
        public void RestoreRecordedFacing()
        {
            float currentRotationY = transform.rotation.eulerAngles.y;
            
            UnitFacing nearestFacing = Global.FacingTool.RotationYToFacing(currentRotationY);
            
            RotateToFacingSmoothly(nearestFacing);
        }

        /// <summary>Constant-speed smooth rotation to a facing.</summary>
        public void RotateToFacingSmoothly(UnitFacing targetFacing, float duration = 0.3f)
        {
            RotateToFacingSmoothly(targetFacing);
        }



        /// <summary>Constant-speed smooth rotation toward a world position.</summary>
        public void RotateTowardsTargetSmoothly(Vector3 targetPosition, System.Action onComplete = null)
        {
            transform.DOKill();

            Vector3 direction = targetPosition - transform.position;
            direction.y = 0; // Ignore height: rotate on the horizontal plane only.
            
            if (direction.sqrMagnitude < 0.001f) return; // Guard against self-overlap.

            float targetRotationY = Quaternion.LookRotation(direction).eulerAngles.y;

            transform.DORotate(new Vector3(0, targetRotationY, 0), 180f, RotateMode.Fast)
                .SetSpeedBased(true)
                .SetEase(Ease.Linear)
                .OnComplete(() => {
                    transform.rotation = Quaternion.Euler(0, targetRotationY, 0);
                    
                    // Notify caller rotation is done so it can play the attack animation.
                    onComplete?.Invoke(); 
                });
        }

        public void RotateToFacingSmoothly(UnitFacing targetFacing)
        {
            currentFacing = targetFacing; 
            
            transform.DOKill();
            
            float targetRotationY = Global.FacingTool.FacingToRotationY(targetFacing);
            
            transform.DORotate(new Vector3(0, targetRotationY, 0), 180f, RotateMode.Fast)
                .SetSpeedBased(true)
                .SetEase(Ease.Linear)
                .OnComplete(() => {
                    transform.rotation = Quaternion.Euler(0, targetRotationY, 0);
                });
        }

        /// <summary>Constant-speed smooth rotation toward a direction.</summary>
        public void RotateToDirectionSmoothly(Vector3 direction, float duration = 0.3f)
        {
            Vector3 targetWorldPos = transform.position + direction.normalized;
            RotateTowardsTargetSmoothly(targetWorldPos);
        }

        private void UpdateTransformRotation()
        {
            float rotationY = Global.FacingTool.FacingToRotationY(currentFacing);
            transform.rotation = Quaternion.Euler(0, rotationY, 0);
        }

        public void UpdateFacingFromTransform()
        {
            float currentRotationY = transform.rotation.eulerAngles.y;
            currentFacing = Global.FacingTool.RotationYToFacing(currentRotationY);
        }

        public Vector3Int GetFacingDirection()
        {
            return Global.FacingTool.FacingToDirection(currentFacing);
        }

        public Vector3 GetFacingWorldDirection()
        {
            Vector3Int dir = GetFacingDirection();
            return new Vector3(dir.x, 0, dir.z);
        }
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
        /// <summary>Subscribes to stat-change events.</summary>
        public void OnStatusChanged(Action action)
        {
            this.Character.statSystem.onChanged(action);
        }
    }
}
