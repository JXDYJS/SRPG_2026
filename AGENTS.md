# AGENTS.md - SRPG_2026 Unity Project

## Project Overview
- **Unity Version**: 2022.3.50f1 (LTS)
- **Project Type**: 2D/3D Strategy RPG (SRPG)
- **Platform**: Windows (primary)
- **Architecture**: Unity MonoBehaviour-based with C# scripts

## Build & Development Commands

### Unity Editor Operations
```bash
# Open project in Unity Editor
# (Unity Hub or command line: Unity.exe -projectPath "E:\unity\SRPG_2026")

# Build project (Windows)
# Use Unity Editor: File → Build Settings → Build

# Recompile scripts (in-editor)
# Ctrl+R or re-enter Play Mode
```

### Testing
```bash
# No automated test framework configured
# Manual testing through Unity Editor Play Mode

# Debug scripts (in Assets/Script/Debug/):
# - Test_Battle.cs: Combat system testing
# - Test_ClickMove.cs: Movement testing

# To run a specific test:
# 1. Attach test script to GameObject in scene
# 2. Enter Play Mode
# 3. Trigger test methods via Inspector buttons or console
```

### Code Quality
```bash
# Unity compilation (automatic in editor)
# Check for compilation errors in Console window

# No external linters configured
# Use Unity's built-in compilation warnings
```

## Code Style Guidelines

### File Organization
- **File Names**: PascalCase, match class name (`MapUnit.cs`, `CharacterData.cs`)
- **Directories**: PascalCase, singular form (`GamePlay`, `Unit`, `Skill`)
- **Namespace Structure**: Match folder hierarchy
  - `Assets/Script/GamePlay/Units/` → `namespace GamePlay.Units`
  - `Assets/Script/Core/` → `namespace Core.*` (e.g., `Core.Command`, `Core.Status`)

### Naming Conventions
- **Classes/Interfaces/Enums**: PascalCase (`MapUnit`, `IDamageModifier`, `UnitState`)
- **Public Methods/Properties**: PascalCase (`Setup()`, `CurrentState`, `ActiveBuffs`)
- **Private Fields**: camelCase with `_` prefix (`_cachedModifiers`, `_isModifiersDirty`)
- **Local Variables**: camelCase (`finalDamage`, `effectiveDefense`)
- **Constants**: PascalCase (`BASE_ACTION_DISTANCE`, `MAX_BUFF_STACKS`)

### Formatting Rules
- **Indentation**: 4 spaces (Unity default)
- **Braces**: Allman style (new line)
  ```csharp
  public void Method()
  {
      // code
  }
  ```
- **Line Length**: No strict limit, but keep readable
- **Spacing**: One space after control keywords (`if (condition)`)

### Import Organization
Order imports as follows:
```csharp
// 1. System namespaces
using System;
using System.Collections.Generic;

// 2. Unity/third-party namespaces
using UnityEngine;
using DG.Tweening;
using Cysharp.Threading.Tasks;

// 3. Project namespaces
using Managers;
using Core.Modifier;
using Core.Global;
using GamePlay.Units;

// 4. Nested namespace aliases (if needed)
using Status.damage;
using Character.instance;
```

### Type System
- **Use explicit types** over `var` for clarity in complex code
- **Nullable reference types**: Use `?` suffix (`Character?`, `string?`)
- **Collections**: Prefer `List<T>` over arrays for mutable collections
- **Enums**: PascalCase for values (`UnitState.Idle`, `DamageType.Physical`)

### Error Handling
- **Defensive programming**: Validate parameters at method entry
- **Null checks**: Use null-conditional operators (`?.`, `??`)
- **Early returns**: Return early on invalid state
- **Debug logging**: Use appropriate log levels:
  ```csharp
  Debug.Log("Info message");
  Debug.LogWarning("Warning: {condition}");
  Debug.LogError("Error: {errorDetails}");
  ```
- **No exception swallowing**: Let exceptions bubble up unless handling specifically

### Commenting Guidelines
- **Chinese comments** for complex logic explanation (primary language)
- **English comments** for public APIs and technical details
- **Section headers**: Use `// ================` separators for large methods
- **TODO markers**: `// TODO: Refactor this method`
- **Inspector documentation**: Use `[Tooltip("description")]` and `[Header("section")]`

### Function Design
- **Method size**: Keep methods focused (aim for < 50 lines)
- **Parameters**: Limit to 3-4 parameters; use structs/classes for complex data
- **Return values**: Prefer specific return types over `void` when useful
- **Async methods**: Use UniTask (`Cysharp.Threading.Tasks`) for async operations

### Unity-Specific Patterns
- **MonoBehaviour lifecycle**: Follow Unity event order (Awake → Start → Update)
- **Serialized fields**: Use `[SerializeField] private` for Inspector access
- **Public properties**: Use properties for calculated values
- **Component references**: Cache in `Awake()` or `Start()`
- **Coroutines**: Use UniTask for async operations instead of `IEnumerator`

### Performance Considerations
- **Avoid Update()** for frequent operations; use events or polling patterns
- **Cache component references**: Don't use `GetComponent<>()` every frame
- **Object pooling**: For frequently instantiated/destroyed objects
- **Garbage collection**: Minimize allocations in performance-critical code

## Project-Specific Notes

### Namespace Structure (Fixed)
Recent namespace fixes established this hierarchy:
- `GamePlay.*` (Units, Grid, Buff, Relics, Skill, etc.)
- `Core.*` (Command, Status, Modifier, Character, Global, System)
- `UI.*` (Component, Panel, Timeline)
- `Manager` (singular, not Managers)
- `Debug` (for test scripts)

### Technical Debt Areas
1. **MapUnit.cs**: God class (1011 lines) - needs refactoring
2. **Hardcoded values**: Magic numbers throughout - move to configurable constants
3. **Mixed language comments**: Standardize on English or maintain bilingual

### Dependencies
- **UniTask**: Async/await pattern
- **DOTween**: Animation tweening
- **Newtonsoft.Json**: JSON serialization
- **Unity Packages**: Addressables, Cinemachine, URP, etc.

## Agent Instructions
When working on this project:
1. **Always verify namespace alignment** with folder structure
2. **Follow existing patterns** in similar files
3. **Test changes in Unity Editor** before committing
4. **Update CONCERNS.md** when addressing technical debt
5. **Use Chinese comments** for gameplay logic, English for technical details
6. **Check .planning/STATE.md** for project status and blockers

## Quick Reference
- **Project analysis**: `.planning/codebase/` directory
- **Current concerns**: `.planning/codebase/CONCERNS.md`
- **State tracking**: `.planning/STATE.md`
- **Roadmap**: `.planning/ROADMAP.md`
- **Skills directory**: `.agent/skills/` for Unity automation tools
## Git Branching & Workflow Rules
1. **禁止在 main 分支直接修改**：所有开发、代码变更严禁直接提交到 `main` 分支。
2. **分支策略**：请切换至 `dev` 分支，或者（最推荐）针对特定 AI 开发任务创建自定义的独立分支，避免把所有开发任务堆积在 `dev` 上。
3. **代码评审机制**：在本地开发完成、确保 Unity 编辑器中编译无错且运行正常后，将代码 push 到远端仓库供用户进行 Review。
