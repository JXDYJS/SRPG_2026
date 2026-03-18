# Codebase Structure

**Analysis Date:** 2026-03-18

## Directory Layout

```
SRPG_2026/
├── Assets/
│   ├── Script/                    # All C# source code
│   │   ├── Core/                  # Data models and core systems
│   │   │   ├── Status.cs          # Damage calculation, CombatCalculator
│   │   │   ├── Modifier.cs        # Interface definitions, CombatModifier base
│   │   │   ├── CharacterData.cs   # ScriptableObject character configuration
│   │   │   └── GlobalLevelConfig.cs # Level progression configuration
│   │   ├── GamePlay/              # Runtime gameplay systems
│   │   │   ├── Units/             # Unit implementations
│   │   │   │   └── MapUnit.cs     # Main unit MonoBehaviour (1000+ lines)
│   │   │   ├── Grid/              # Grid and pathfinding systems
│   │   │   ├── Skill/             # Skill execution and range calculation
│   │   │   ├── Relics/            # Relic (power-up) system
│   │   │   └── Buff/              # Buff/debuff system
│   │   ├── Managers/              # Singleton managers
│   │   │   ├── UnitManager.cs     # Unit registration and tracking
│   │   │   ├── MapManager.cs      # Grid management
│   │   │   ├── RunManager.cs      # Run state and relics
│   │   │   └── LevelingManager.cs # Global progression
│   │   ├── UI/                    # User interface scripts
│   │   ├── Command/               # Command pattern implementations
│   │   ├── Global/                # Global utilities and enums
│   │   └── View/                  # Visual representation components
│   ├── Scenes/                    # Unity scene files
│   ├── Resources/                 # Unity Resources folder
│   ├── UI/                        # UI assets (sprites, prefabs)
│   ├── textures/                  # Texture assets
│   ├── Animation/                 # Animation clips and controllers
│   ├── shader/                    # Shader files
│   ├── Data/                      # Game data files
│   ├── Settings/                  # Configuration assets
│   └── StreamingAssets/           # Assets loaded at runtime
├── ProjectSettings/               # Unity project configuration
├── Packages/                      # Unity Package Manager dependencies
├── Library/                       # Unity generated cache (excluded from git)
├── Logs/                         # Runtime logs
├── Temp/                         # Temporary files
└── UserSettings/                 # Editor user preferences
```

## Directory Purposes

**Assets/Script/Core:**
- Purpose: Foundational data structures and systems
- Contains: ScriptableObject data classes, combat calculation systems, interface definitions
- Key files: `Modifier.cs`, `Status.cs`, `CharacterData.cs`

**Assets/Script/GamePlay:**
- Purpose: Runtime gameplay implementation
- Contains: Unit behaviors, grid systems, skill execution, buff/relic logic
- Key files: `Units/MapUnit.cs`, `Skill/SkillExecutor.cs`, `Grid/GridManager.cs`

**Assets/Script/Managers:**
- Purpose: Global system coordination
- Contains: Singleton managers for units, map, progression, undo system
- Key files: `UnitManager.cs`, `MapManager.cs`, `RunManager.cs`, `UndoSystem.cs`

**Assets/Script/UI:**
- Purpose: User interface logic
- Contains: Health bars, timeline UI, skill buttons
- Key files: `TimelineUIManager.cs`, `UnitView.cs`

## Key File Locations

**Entry Points:**
- `Assets/Scenes/*.unity` - Scene files containing game objects
- `Assets/Script/Managers/*Manager.cs` - Manager Start() methods

**Configuration:**
- `ProjectSettings/` - Unity project settings
- `Packages/manifest.json` - Package dependencies
- `Assets/Data/` - Game balance data (ScriptableObjects)

**Core Logic:**
- `Assets/Script/Core/Status.cs` - Combat calculation pipeline
- `Assets/Script/Core/Modifier.cs` - Modifier interface and base class
- `Assets/Script/GamePlay/Units/MapUnit.cs` - Main unit implementation

**Testing:**
- No dedicated test directory found
- Unity Test Framework configured but no test files detected

## Naming Conventions

**Files:**
- PascalCase for C# scripts: `MapUnit.cs`, `CharacterData.cs`
- PascalCase for directories: `GamePlay`, `Managers`
- Suffixes: `SO` for ScriptableObjects (`SkillDataSO`), `Manager` for managers

**Directories:**
- Singular form for feature categories: `Unit`, `Skill`, `Buff`
- Plural for collections: `Assets`, `Scripts` (though `Script` singular)

## Where to Add New Code

**New Feature:**
- Primary code: `Assets/Script/GamePlay/` relevant subdirectory
- Tests: Not yet established (would be `Assets/Tests/`)

**New Component/Module:**
- Implementation: Appropriate subdirectory under `Assets/Script/`
- Data: `Assets/Script/Core/` for ScriptableObject data classes
- Manager: `Assets/Script/Managers/` if needs global coordination

**Utilities:**
- Shared helpers: `Assets/Script/Global/` or `Assets/Script/Utilities/`

## Special Directories

**Library/:**
- Purpose: Unity-generated cache and temporary files
- Generated: Yes
- Committed: No (in `.gitignore`)

**Temp/:**
- Purpose: Unity build temporary files
- Generated: Yes
- Committed: No

**UserSettings/:**
- Purpose: Editor-specific user preferences
- Generated: Yes
- Committed: No

---

*Structure analysis: 2026-03-18*