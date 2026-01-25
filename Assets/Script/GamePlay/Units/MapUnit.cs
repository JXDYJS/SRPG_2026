using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;

namespace GamePlay
{
    namespace unit
    {
        using Character.instance;
        using Status.damage;
            // --- Auxiliary Class for Movement Definition ---
        [System.Serializable]

        public enum MoveType
        {
            Ground,     // Standard walking
            Flying,     // Ignores terrain height/liquids
            Amphibious  // Can walk on water
        }
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
        public class MapUnit : MonoBehaviour
        {
            [Header("Movement Config")]
            public UnitMoveStats moveStats = new UnitMoveStats(); 
            public float moveSpeed = 5.0f;

            [Header("Runtime State (Read-Only)")]
            public Vector2Int gridPosition; // Current Logical Position
            public bool isMoving = false;

            // --- 1. Soul Reference (The Data) ---
            public CharacterInstance Character { get; private set; }

            // --- 2. Cache Optimization for Modifiers ---
            // We reuse this list instead of creating a new one every time damage is calculated.
            private List<IDamageModifier> _cachedModifiers = new List<IDamageModifier>();
            private bool _isModifiersDirty = true; // Default dirty to ensure first build

            // Internal Reference
            private MapManager _mapManager; // Ensure you have a MapManager script to reference

            // ================== Lifecycle ==================

            void Start()
            {
                // Register self to the global UnitManager
                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.RegisterUnit(this);
                }
            }

            void OnDestroy()
            {
                // Unregister self when destroyed/killed
                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.UnregisterUnit(this);
                }
            }

            // ================== Initialization ==================

            /// <summary>
            /// Called by BattleManager to spawn the unit and inject data.
            /// </summary>
            public void Setup(CharacterInstance character, MapManager mapManager, int startX, int startZ)
            {
                this.Character = character;
                this._mapManager = mapManager;

                // TODO: Here you would also update the visual Model/Animator based on CharacterData
                // e.g., GetComponent<MeshFilter>().mesh = character.Data.Prefab...

                // Snap to grid
                SetGridPosition(startX, startZ);
                
                // Mark cache dirty just in case setup adds initial buffs
                SetModifiersDirty();
            }

            /// <summary>
            /// Call this whenever Buffs change or Relics are obtained
            /// </summary>
            public void SetModifiersDirty()
            {
                _isModifiersDirty = true;
            }

            // ================== Damage Pipeline Interface ==================

            /// <summary>
            /// Retrieves all damage modifiers (Buffs + Relics) for this unit.
            /// Uses caching to avoid Garbage Collection allocation in hot paths.
            /// </summary>
            public List<IDamageModifier> GetDamageModifiers()
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

                // 1. Add Buffs from the Character Data (Soul)
                // Assuming Character.BuffManager exists and holds IDamageModifier
                /* if (Character.BuffManager != null) {
                    foreach (var buff in Character.BuffManager.ActiveBuffs) {
                        if (buff is IDamageModifier mod) _cachedModifiers.Add(mod);
                    }
                }
                */

                // 2. Add Relics from Global Manager (Only if this is a Player Unit)
                if (CompareTag("Player") && RunManager.Instance != null)
                {
                    foreach (var relic in RunManager.Instance.Relics)
                    {
                        if (relic is IDamageModifier mod) _cachedModifiers.Add(mod);
                    }
                }

                // 3. Sort by priority (Lowest number first)
                _cachedModifiers.Sort((a, b) => a.Priority.CompareTo(b.Priority));

                _isModifiersDirty = false; // Cache is now clean
            }

            // ================== Combat Logic ==================

            public void TakeDamage(float amount)
            {
                // Modify the actual data (Soul)
                Character.statSystem.currentHP -= (int)amount;

                // Update Visuals (Body)
                // e.g. Show floating text, update Health Bar UI, Play Animation
                Debug.Log($"{name} took {amount} damage. Current HP: {Character.statSystem.currentHP}");

                if (Character.statSystem.currentHP <= 0)
                {
                    Die();
                }
            }

            private void Die()
            {
                // Logic for death (Animation, removing from turn order, etc.)
                Debug.Log($"{name} has died.");
                UnitManager.Instance.UnregisterUnit(this);
                Destroy(gameObject);
            }

            // ================== Movement Logic ==================

            public void SetGridPosition(int x, int z)
            {
                Vector2Int oldPos = gridPosition;
                gridPosition = new Vector2Int(x, z);

                // Notify Manager
                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                }

                // Update World Position
                float y = 0;
                if (_mapManager != null && _mapManager.logicalGrid != null)
                {
                    var cell = _mapManager.logicalGrid.GetCell(x, z);
                    if (cell != null) y = cell.floorHeight;
                }

                // Assumes mapManager.cellSize exists. If static, change accordingly.
                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;
                transform.position = new Vector3(x * cellSize, y, z * cellSize);
            }

            public void MoveAlongPath(List<Vector2Int> path)
            {
                if (path == null || path.Count == 0) return;
                
                if (isMoving) StopAllCoroutines();
                StartCoroutine(MoveRoutine(path));
            }

            IEnumerator MoveRoutine(List<Vector2Int> path)
            {
                isMoving = true;
                float cellSize = _mapManager != null ? _mapManager.cellSize : 1f;

                foreach (var step in path)
                {
                    // 1. Get Target Height
                    float targetY = 0;
                    if (_mapManager != null && _mapManager.logicalGrid != null)
                    {
                        var cell = _mapManager.logicalGrid.GetCell(step.x, step.y);
                        if (cell != null) targetY = cell.floorHeight;
                    }

                    // 2. Get Target World Position
                    Vector3 targetWorldPos = new Vector3(
                        step.x * cellSize, 
                        targetY, 
                        step.y * cellSize
                    );

                    // 3. Smooth Movement
                    while (Vector3.Distance(transform.position, targetWorldPos) > 0.05f)
                    {
                        transform.position = Vector3.MoveTowards(transform.position, targetWorldPos, moveSpeed * Time.deltaTime);
                        yield return null; 
                    }

                    // 4. Snap to Grid & Update Logic
                    transform.position = targetWorldPos;
                    
                    Vector2Int oldPos = gridPosition;
                    gridPosition = step;

                    if (UnitManager.Instance != null)
                    {
                        UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                    }
                }

                isMoving = false;
            }
        }
    }
}