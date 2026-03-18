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

## Namespace Issues

### 1. Namespace Not Matching Folder Structure

| File Location | Namespace | Issue |
|---------------|-----------|-------|
| `Assets/Script/GamePlay/Units/MapUnit.cs` | `GamePlay` | Should be `GamePlay.Units` or file in root GamePlay |
| `Assets/Script/GamePlay/Units/UnitAnimation.cs` | `GamePlay.unit` | Should match folder: `GamePlay.Units` |
| `Assets/Script/GamePlay/Grid/MapInteraction.cs` | `MapSystem` | Completely different namespace - file in GamePlay/Grid |
| `Assets/Script/GamePlay/Grid/Astar.cs` | `GamePlay` | Should be `GamePlay.Grid` |
| `Assets/Script/GamePlay/Grid/LogicalGrid.cs` | `GamePlay` | Should be `GamePlay.Grid` |
| `Assets/Script/Manager/` (all files) | `Managers` | Namespace uses plural, folder singular |
| `Assets/Script/Core/Command.cs` | `Command` | Should be `Core.Command` or file in root Core |
| `Assets/Script/Core/CommandInvoker.cs` | `Command` | Should be `Core.Command` |
| `Assets/Script/Core/UndoSystem.cs` | `Command` | Should be `Core.Command` |
| `Assets/Script/Core/UnitSnapshot.cs` | `Command` | Should be `Core` |
| `Assets/Script/Core/Status.cs` | `Status` | Should be `Core.Status` |
| `Assets/Script/Core/Modifier.cs` | `Modifier` | Should be `Core.Modifier` |
| `Assets/Script/Core/Character.cs` | `Character` | Should be `Core.Character` |
| `Assets/Script/Core/CharacterData.cs` | `Character` | Should be `Core.Character` |
| `Assets/Script/Core/Global.cs` | `Global` | Should be `Core.Global` |
| `Assets/Script/Core/FactionSystem.cs` | `Core.System` | Unique nested namespace under Core |
| `Assets/Script/UI/TimelineIconUI.cs` | `GamePlay.UI` | Should be `UI.Timeline` or similar |
| `Assets/Script/UI/TimelineUIManager.cs` | `Managers` | Should be `UI.Timeline` |
| `Assets/Script/Debug/` (all files) | `DebugSystem` | Namespace differs from folder name |
| `Assets/Script/Manager/EnemyAIManager.cs` | `GamePlay.AI` | Namespace under GamePlay, folder under Manager |
| `Assets/Script/Manager/GridVisualManager.cs` | `GamePlay.Visual` | Namespace under GamePlay, folder under Manager |

### 2. Case Inconsistency

| Namespace | Issue |
|-----------|-------|
| `GamePlay.buff` | Lowercase 'b' - inconsistent with PascalCase siblings |
| `GamePlay.relics` | Lowercase 'r' - inconsistent with PascalCase siblings |
| `GamePlay.unit` | Lowercase 'u' - inconsistent with PascalCase siblings |

Other GamePlay sub-namespaces use PascalCase: `Skill`, `Battle`, `Grid`, `View`, `AI`, `Visual`, `Control`, `VirtualCamera`

### 3. Mismatched Namespace Hierarchies

Multiple different top-level namespaces create fragmentation:
- `GamePlay.*` (14 files)
- `Managers` (6 files)
- `UI.*` (8 files)
- `Command` (4 files)
- `Core.*` (1 file - `Core.System`)
- `Character` (2 files)
- `Status`, `Modifier`, `Global`, `MapSystem`, `DebugSystem` (1 file each)

### 4. Deep Nesting (>3 levels)

**No true deep nesting found.** Most namespaces are 1-2 levels:
- Max depth: `GamePlay.AI`, `GamePlay.Visual`, `GamePlay.Control`, `GamePlay.VirtualCamera`, `Core.System` (2 levels)

---

*Concerns audit: 2026-03-18*