# Architecture

**Analysis Date:** 2026-03-18

## Pattern Overview

**Overall:** Component-based Unity architecture with Manager pattern

**Key Characteristics:**
- MonoBehaviour-based game objects for runtime entities
- ScriptableObject data containers for configuration
- Singleton managers for global systems
- Modifier pattern for combat calculations (IDamageModifier, IDefenseModifier, etc.)
- Event-driven combat system with hooks for buffs/relics

## Layers

**Data Layer:**
- Purpose: Static game data and configuration
- Location: `Assets/Script/Core/`
- Contains: ScriptableObject classes (`CharacterData`, `SkillDataSO`, `GlobalLevelConfig`)
- Depends on: Unity Engine, no dependencies on gameplay
- Used by: All gameplay systems for data references

**Gameplay Layer:**
- Purpose: Runtime game logic and entity behavior
- Location: `Assets/Script/GamePlay/`
- Contains: `MapUnit`, `GridManager`, `SkillExecutor`, `AttackRangeSystem`
- Depends on: Data layer for stats, Core layer for calculations
- Used by: UI layer for visual representation

**Core Systems Layer:**
- Purpose: Foundational combat calculations and status systems
- Location: `Assets/Script/Core/Status.cs`, `Assets/Script/Core/Modifier.cs`
- Contains: `CombatCalculator`, `IDamageModifier` interface, `CombatModifier` base class
- Depends on: Unity Engine, no dependencies on specific gameplay
- Used by: Gameplay layer for damage calculation, buff/relic systems

**Manager Layer:**
- Purpose: Global state management and system coordination
- Location: `Assets/Script/Managers/`
- Contains: `UnitManager`, `MapManager`, `RunManager`, `LevelingManager`, `UndoSystem`
- Depends on: Gameplay layer for unit references, Core layer for calculations
- Used by: Gameplay layer for system access

**UI Layer:**
- Purpose: User interface and visual feedback
- Location: `Assets/Script/UI/`, `Assets/UI/`
- Contains: `UnitView`, `TimelineUIManager`, health bars, skill buttons
- Depends on: Gameplay layer for data to display
- Used by: Player input and feedback

## Data Flow

**Combat Damage Flow:**

1. Attack initiated → `MapUnit.Attack()` creates `DamageInfo`
2. `CombatCalculator.CalculateDamage()` processes:
   - Source modifiers via `GetModifiers()` (buffs/relics)
   - Defense/resistance calculations
   - Target modifiers
3. Result applied via `target.TakeDamage()`
4. UI updates via `UnitView` and event callbacks

**State Management:**
- Unit state managed via `UnitState` enum in `MapUnit`
- Turn state via `actionPoints` and `hasMoved` flags
- Global progression via `LevelingManager` (experience, upgrade points)
- Undo/redo via `UndoSystem` with snapshot capture/restore

## Key Abstractions

**CombatModifier:**
- Purpose: Base class for all combat-affecting systems (buffs, relics, passives)
- Examples: `Assets/Script/Core/Modifier.cs`, buff implementations
- Pattern: Strategy pattern via interface implementations

**CharacterInstance:**
- Purpose: Runtime representation of character with mutable stats
- Examples: Used throughout `MapUnit` as `Character` property
- Pattern: Bridge between static `CharacterData` and runtime `MapUnit`

**MapUnit:**
- Purpose: Bridge between data (`CharacterInstance`) and 3D representation
- Examples: `Assets/Script/GamePlay/Units/MapUnit.cs`
- Pattern: Mediator between multiple systems (movement, combat, UI)

## Entry Points

**Game Initialization:**
- Location: Unity scene `Assets/Scenes/` (specific scene not identified)
- Triggers: Unity `Start()` methods in managers
- Responsibilities: Setup managers, spawn units, initialize grid

**Player Input:**
- Location: Not yet identified (likely `InputManager` or similar)
- Triggers: Mouse clicks, keyboard input
- Responsibilities: Unit selection, movement commands, skill activation

## Error Handling

**Strategy:** Defensive programming with validation and logging

**Patterns:**
- Null checks before accessing references
- `Debug.LogWarning` for recoverable issues
- `Debug.LogError` for critical failures
- Early returns with validation

## Cross-Cutting Concerns

**Logging:** Unity `Debug.Log` statements throughout codebase
**Validation:** Parameter validation in public methods
**Authentication:** Not applicable (single-player)

---

*Architecture analysis: 2026-03-18*