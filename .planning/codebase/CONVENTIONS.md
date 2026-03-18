# Coding Conventions

**Analysis Date:** 2026-03-18

## Naming Patterns

**Files:**
- PascalCase for C# scripts: `MapUnit.cs`, `CharacterData.cs`
- Matching class name with file name (standard Unity practice)
- Directories: PascalCase, singular form (`GamePlay`, `Unit`, `Skill`)

**Functions:**
- PascalCase for public methods: `Setup()`, `TakeDamage()`, `GetModifiers()`
- PascalCase for private methods: `RebuildModifierCache()`, `UpdateTransformRotation()`
- Async methods: No specific pattern detected (UniTask usage likely)

**Variables:**
- camelCase for private fields: `_cachedModifiers`, `_isModifiersDirty`, `_mapManager`
- camelCase for local variables: `finalDamage`, `effectiveDefense`, `existingBuff`
- PascalCase for public fields and properties: `Character`, `CurrentState`, `ActiveBuffs`
- `readonly` fields: Not commonly used

**Types:**
- PascalCase for classes, structs, enums, interfaces
- Interface prefix `I`: `IDamageModifier`, `IDefenseModifier`, `ITrackable`
- Enum values: PascalCase: `UnitState.Idle`, `DamageType.Physical`, `Facing.North`

## Code Style

**Formatting:**
- Tool: Unity's default C# formatter (no `.editorconfig` detected)
- Indentation: 4 spaces (consistent across files)
- Braces: Allman style (braces on new line)
  ```csharp
  public void Method()
  {
      // code
  }
  ```
- Line length: No strict limit (some lines exceed 100 chars)

**Linting:**
- Tool: No external linter configuration found
- Unity's internal compilation warnings as primary quality check
- Common patterns: Null checks, validation before operations

## Import Organization

**Order:**
1. System namespaces: `using System.Collections;`
2. Third-party namespaces: `using UnityEngine;`, `using DG.Tweening;`
3. Project namespaces: `using Managers;`, `using Modifier;`, `using Global;`
4. Nested namespace aliases: `using Character.instance;`, `using Status.damage;`

**Path Aliases:**
- No custom namespace aliases detected
- Nested namespace usage: `namespace GamePlay { namespace unit { ... } }`

## Error Handling

**Patterns:**
- Defensive programming with early returns
- Null checks: `if (buff == null) return;`
- Debug logging: `Debug.LogError()`, `Debug.LogWarning()`
- No structured exception handling (no `try-catch` blocks in examined code)

**Validation:**
- Parameter validation at method entry
- State validation before operations
- Recovery: Attempt correction (e.g., position adjustment in `Setup()`)

## Logging

**Framework:** Unity `Debug` class exclusively

**Patterns:**
- Informational: `Debug.Log($"{name} 受到 {damage} 点伤害")`
- Warnings: `Debug.LogWarning($"单位 {name} 的起始位置无效")`
- Errors: `Debug.LogError($"尝试添加无效 Buff 为 Null")`
- No log levels or conditional compilation for logging

## Comments

**When to Comment:**
- Chinese comments for complex logic explanation
- Section headers with `// ==================` separators
- TODO markers: `// TODO` for future work
- Tooltip attributes: `[Tooltip("...")]` for Inspector documentation

**JSDoc/TSDoc:**
- XML documentation not used
- Chinese summary comments above classes/methods:
  ```csharp
  /// <summary>
  /// 给单位添加一个 Buff，并自动标记缓存失效
  /// </summary>
  ```
- Attribute documentation: `[Header("基本信息")]` for Inspector organization

## Function Design

**Size:**
- Methods range from 1 line to 100+ lines (`MapUnit.cs` has many large methods)
- No clear size constraints

**Parameters:**
- Typically 1-4 parameters
- `ref` parameters for mutable value types: `ref float damage`
- Optional parameters: `Vector3Int? targetPos = null`

**Return Values:**
- Methods often return `void`
- Value returns: `float`, `List<Vector3Int>`, etc.
- Nullable returns: `Character?.SkillInventory?.GetSkill(...)`

## Module Design

**Exports:**
- Public methods for external interaction
- Protected virtual methods for inheritance (`MapUnit` derived classes)
- Internal logic kept private

**Barrel Files:**
- No barrel files (single-file namespace definitions)
- Namespace nesting: `GamePlay.unit`, `Character.data`, `Status.damage`

---

*Convention analysis: 2026-03-18*