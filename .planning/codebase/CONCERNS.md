# Codebase Concerns

**Analysis Date:** 2026-03-18

## Tech Debt

**MapUnit God Class:**
- Issue: `Assets/Script/GamePlay/Units/MapUnit.cs` (1011 lines) handles movement, combat, buffs, state, rotation, undo, etc.
- Files: `Assets/Script/GamePlay/Units/MapUnit.cs`
- Impact: High coupling, difficult to test, maintenance burden
- Fix approach: Extract concerns into separate components (MovementComponent, CombatComponent, BuffComponent)

**Hardcoded Values:**
- Issue: Magic numbers throughout code (e.g., height = 2, BASE_ACTION_DISTANCE = 10000f)
- Files: `MapUnit.cs:523`, `Astar.cs:199`, various locations
- Impact: Difficult to balance, configuration not data-driven
- Fix approach: Move to configurable constants or ScriptableObject tuning parameters

**Mixed Language Comments:**
- Issue: Comments primarily in Chinese, some English mixing
- Files: Throughout codebase
- Impact: Reduced accessibility for non-Chinese speakers
- Fix approach: Standardize on English or maintain bilingual documentation

## Known Bugs

**No bug tracking system identified. Potential issues:**

**Position Synchronization:**
- Symptoms: Grid position vs world position may desync
- Files: `MapUnit.cs` lines 154-163, 577-590
- Trigger: Movement with height differences, direct position setting
- Workaround: Manual validation and correction in `Setup()` and `SetGridPosition()`

**Buff Stacking Logic:**
- Symptoms: Buff duplication/reference management unclear
- Files: `MapUnit.cs` lines 190-213
- Trigger: Adding same buff multiple times
- Workaround: ID-based deduplication implemented but may have edge cases

## Security Considerations

**No security risks identified:**
- Risk: None (single-player offline game)
- Files: N/A
- Current mitigation: No network code, no sensitive data storage
- Recommendations: Maintain offline nature; if adding online features, implement proper authentication

## Performance Bottlenecks

**Modifier Cache Rebuilding:**
- Problem: `RebuildModifierCache()` called frequently, iterates over all buffs/relics
- Files: `MapUnit.cs` lines 240-266
- Cause: Cache marked dirty on any buff change, rebuilt every access
- Improvement path: Incremental updates, smarter dirty flag management

**Pathfinding Complexity:**
- Problem: A* algorithm may be called frequently with large grids
- Files: `Assets/Script/GamePlay/Grid/Astar.cs`
- Cause: Standard A* with height considerations
- Improvement path: Caching, hierarchical pathfinding, limit search depth

**Large File Compilation:**
- Problem: `MapUnit.cs` large file increases compilation time
- Files: `MapUnit.cs`
- Cause: Monolithic class
- Improvement path: Split into partial classes or separate components

## Fragile Areas

**Undo System:**
- Files: `Assets/Script/Managers/UndoSystem.cs`, `MapUnit.CaptureState()`
- Why fragile: Complex state capture/restore across multiple systems
- Safe modification: Ensure all stateful components implement `CaptureState`/`RestoreState`
- Test coverage: No tests for undo/redo functionality

**Combat Calculator Modifier Order:**
- Files: `Assets/Script/Core/Status.cs` lines 176-247
- Why fragile: Modifier priority system critical for balance
- Safe modification: Thorough testing of modifier combinations
- Test coverage: No automated tests for damage calculation

## Scaling Limits

**Unit Count:**
- Current capacity: Unknown (no performance profiling)
- Limit: CPU-bound by pathfinding, modifier calculations
- Scaling path: Spatial partitioning, level of detail, asynchronous calculations

**Modifier Count per Unit:**
- Current capacity: Linear iteration over all modifiers
- Limit: Performance degrades with many buffs/relics
- Scaling path: Modifier grouping, priority bucketing

## Dependencies at Risk

**Unity Version:**
- Risk: 2022.3.50f1c1 is LTS but may need upgrading
- Impact: Breaking changes in future Unity versions
- Migration plan: Regular LTS updates, test suite to catch regressions

**Third-party Packages:**
- UniTask, DOTween, Newtonsoft.Json - generally stable
- Risk: Package updates may break compatibility
- Impact: Build failures, runtime errors
- Migration plan: Lock versions, test updates in isolation

## Missing Critical Features

**Automated Testing:**
- Problem: No unit/integration tests
- Blocks: Safe refactoring, regression detection, continuous integration

**Configuration System:**
- Problem: Hardcoded values scattered
- Blocks: Data-driven balancing, modding support

**Input Abstraction:**
- Problem: Input handling not isolated
- Blocks: Multi-platform support, rebindable controls

## Test Coverage Gaps

**Combat System:**
- What's not tested: Damage calculation, modifier interactions, edge cases
- Files: `Status.cs`, `Modifier.cs`
- Risk: Balance changes may have unintended consequences
- Priority: High

**Undo/Redo System:**
- What's not tested: State capture/restore correctness
- Files: `UndoSystem.cs`, `MapUnit.CaptureState()`
- Risk: Game state corruption on undo
- Priority: Medium

**Movement & Pathfinding:**
- What's not tested: Grid navigation, height handling, obstacle avoidance
- Files: `Astar.cs`, `GridManager.cs`
- Risk: Units stuck, incorrect path calculation
- Priority: Medium

---

*Concerns audit: 2026-03-18*