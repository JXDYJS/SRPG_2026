# Task Plan: Align Namespace for Relics (Incremental)

## Must Haves
- **Truths**: RelicBase.cs has namespace `GamePlay.relics` (lowercase 'r'), needs to be `GamePlay.Relics` (capital 'R')
- **Artifacts**: Updated RelicBase.cs with correct namespace, any external files that need using statement updates
- **Key Links**: Related task 260319-ewv (previous namespace alignment work)

## Context
- **Source Files**: 1 file in Assets/Script/GamePlay/Relics
  - RelicBase.cs
- **Current State**: RelicBase.cs uses `namespace GamePlay.relics` (incorrect case)
- **Target State**: RelicBase.cs uses `namespace GamePlay.Relics` (correct case matching folder name)
- **Risk**: External files in Manager, Core, Units may reference this namespace with wrong case

## Plan

### Task 1: Update RelicBase.cs namespace declaration

**Description**: Change namespace from `GamePlay.relics` to `GamePlay.Relics` in RelicBase.cs

**Files**:
- Read: `Assets/Script/GamePlay/Relics/RelicBase.cs`

**Action**:
1. Change line 5 from `namespace GamePlay.relics` to `namespace GamePlay.Relics`
2. Save the file
3. Trigger Unity compilation via UnitySkill
4. Check for compilation errors

**Verification**:
- Unity compiles successfully with zero errors, OR
- Identifies specific compilation errors (CS0246, CS0234) in external files
- If errors found, note which files have issues

**Done When**:
- RelicBase.cs has `namespace GamePlay.Relics`
- Unity compilation status is confirmed (success or error list)

---

### Task 2: Fix external using statements (if needed)

**Description**: Update `using GamePlay.relics;` to `using GamePlay.Relics;` in any external files that report compilation errors

**Files**:
- Any external files (Manager, Core, Units, etc.) that report compilation errors after Task 1

**Action**:
1. For each external file with compilation errors:
   - Open the file
   - Find `using GamePlay.relics;` statements
   - Change to `using GamePlay.Relics;`
   - Also check for fully qualified names using `GamePlay.relics.TypeName` and update to `GamePlay.Relics.TypeName`
   - Save the file
2. After each file change, trigger Unity compilation
3. Continue until all compilation errors are resolved

**Verification**:
- All external files that reference GamePlay.relics are updated to GamePlay.Relics
- Unity compiles with zero errors

**Done When**:
- Unity compiles successfully with zero compilation errors
- No external files have namespace mismatch references

---

### Task 3: Validate and document completion

**Description**: Confirm namespace alignment is complete and update project state

**Files**:
- Read: `Assets/Script/GamePlay/Relics/RelicBase.cs`
- Update: `STATE.md`

**Action**:
1. Verify RelicBase.cs has correct namespace `GamePlay.Relics`
2. Run Unity compilation to confirm zero errors
3. Update STATE.md with completion record
4. Document any external files that were modified

**Verification**:
- RelicBase.cs namespace matches folder name
- Unity Editor compiles without errors
- STATE.md reflects completed task

**Done When**:
- Namespace alignment for Relics folder is complete
- Project compiles successfully
- Task is recorded in STATE.md

