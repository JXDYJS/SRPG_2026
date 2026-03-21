# Plan: Align Namespace with Folder Structure for Units Folder (HIGH IMPACT)

**Task ID:** 260319-lbv
**Date:** 2026-03-19
**Status:** Ready for execution

## Must Haves
- **Truths**: All C# scripts in Assets/Script/GamePlay/Units must use namespace GamePlay.Units (plural, not singular)
- **Artifacts**: Updated namespace declarations in 3 files, updated using statements across the entire project
- **Key Links**: 
  - Target files: `Assets/Script/GamePlay/Units/UnitAnimation.cs`, `Assets/Script/GamePlay/Units/MapObject.cs`, `Assets/Script/GamePlay/Units/MapUnit.cs`
  - Namespace standard: `GamePlay.Units` (per AGENTS.md namespace structure guidelines)

---

## Task 1: Fix UnitAnimation.cs Namespace (Warm-up)

**Files**: 
- Primary: `Assets/Script/GamePlay/Units/UnitAnimation.cs`

**Action**:
1. Read `Assets`/Script/GamePlay/Units/UnitAnimation.cs
2. Check current namespace declaration
3. Update namespace to `namespace GamePlay.Units` if different
4. Load Unity skill and trigger compilation to check for errors
5. If compilation errors appear, fix using statements in any files that reference UnitAnimation
6. Repeat compilation check until zero errors across entire project

**Verify**:
- [ ] UnitAnimation.cs declares `namespace GamePlay.Units`
- [ ] Unity compilation has zero errors
- [ ] All files referencing UnitAnimation have correct using statements

**Done**: 
- Namespace declaration is correct
- Project compiles without errors

---

## Task 2: Fix MapObject.cs Namespace (Add Namespace Wrapper)

**Files**:
- Primary: `Assets/Script/GamePlay/Units/MapObject.cs`
- Potential references: All files that use MapObject without full namespace qualification

**Action**:
1. Read `Assets/Script/GamePlay/Units/MapObject.cs`
2. Wrap entire class content in `namespace GamePlay.Units { ... }` block
3. Load Unity skill and trigger compilation
4. If compilation errors appear (likely files that referenced MapObject globally), fix by adding `using GamePlay.Units;` at top
5. Repeat compilation check until zero errors across entire project

**Verify**:
- [ ] MapObject.cs declares `namespace GamePlay.Units`
- [ ] Unity compilation has zero errors
- [ ] All files referencing MapObject have `using GamePlay.Units;` or use full namespace

**Done**:
- MapObject is wrapped in namespace GamePlay.Units
- Project compiles without errors

---

## Task 3: Fix MapUnit.cs Namespace (Flatten Nested Namespaces)

**Files**:
- Primary: `Assets/Script/GamePlay/Units/MapUnit.cs`
- Expected references: Hundreds of files across UI, Managers, Core, Skill folders

**Action**:
1. Read `Assets/Script/GamePlay/Units/MapUnit.cs`
2. Replace nested namespace structure:
   - FROM: `namespace GamePlay { namespace Unit { ... } }`
   - TO: `namespace GamePlay.Units { ... }`
3. Load Unity skill and trigger compilation
4. When compilation errors appear (expected in many files):
   - For each error file, update using statements: change `using GamePlay.Unit;` to `using GamePlay.Units;`
   - Add `using GamePlay.Units;` where files referenced MapUnit globally
   - STRICTLY DO NOT modify any logic, variable names, or function bodies
5. Re-trigger compilation and repeat until zero errors across entire project

**Verify**:
- [ ] MapUnit.cs declares `namespace GamePlay.Units` (not nested GamePlay.Unit)
- [ ] Unity compilation has zero errors
- [ ] All files using `using GamePlay.Unit;` have been updated to `using GamePlay.Units;`

**Done**:
- MapUnit uses flattened namespace GamePlay.Units
- Entire project compiles without errors
- All cross-folder references correctly use new namespace

---

## Success Criteria
- [ ] All three files in Units folder use namespace GamePlay.Units
- [ ] Project compiles with zero errors
- [ ] No files still reference old namespace GamePlay.Unit
- [ ] All cross-folder references updated with correct using statements
