---
must_haves:
  truths:
    - "Previous namespace changes created compilation errors"
    - "MapUnit class is now in GamePlay.Unit namespace (not GamePlay.unit)"
    - "Many files still reference GamePlay.unit or have incorrect using statements"
    - "Errors must be fixed incrementally to avoid cascading issues"
  artifacts:
    - "Fixed C# files with correct namespace references"
    - "Unity compilation with zero errors"
    - "Error count tracking showing progress"
  key_links:
    - "Assets/Script/GamePlay/Skill/TargetResult.cs"
    - "Assets/Script/GamePlay/Skill/SkillTargetContext.cs"
    - "Assets/Script/Manager/UnitManager.cs"
    - "Assets/Script/GamePlay/Skill/SkillSequenceResult.cs"
---

# Quick Task 260318-trr: Fix namespace compilation errors

## Task Description
Continue fixing namespace refactor issues from previous task where namespace changes (GamePlay.buff → GamePlay.Buff, GamePlay.unit → GamePlay.Unit) created compilation errors.

## Current State
- 10+ compilation errors related to namespace changes
- MapUnit class moved to GamePlay.Unit namespace
- Files still reference GamePlay.unit or have incorrect using statements

## Constraints
- Only fix namespace-related errors
- Do NOT introduce new refactors
- Do NOT change class logic
- Fix ONE file at a time
- After each fix, run Unity compilation
- Ensure error count decreases
- Stop when Unity compiles with ZERO errors

## Tasks

### Task 1: Analyze and prioritize errors
**Files:**
- `.planning/quick/260318-trr-continue-fixing-namespace-refactor-issue/error-analysis.txt`

**Action:**
1. Get full list of compilation errors from Unity
2. Analyze error patterns and categorize by root cause
3. Create prioritized fix list starting with highest impact files
4. Document analysis in error-analysis.txt

**Verify:**
- Error analysis file created
- Clear understanding of error patterns
- Prioritized fix list established

**Done:**
- ✅ Error analysis complete
- ✅ Prioritized fix list created

### Task 2: Fix TargetResult.cs namespace references
**Files:**
- `Assets/Script/GamePlay/Skill/TargetResult.cs`

**Action:**
1. Read TargetResult.cs file
2. Identify and fix using statements referencing GamePlay.unit
3. Change to GamePlay.Unit
4. Verify only namespace-related changes
5. Trigger Unity compilation
6. Check error count decreased

**Verify:**
- File modified with correct using statements
- Unity compilation shows decreased error count
- No new errors introduced

**Done:**
- ✅ File fixed
- ✅ Error count decreased
- ✅ No new errors

### Task 3: Fix SkillTargetContext.cs namespace references
**Files:**
- `Assets/Script/GamePlay/Skill/SkillTargetContext.cs`

**Action:**
1. Read SkillTargetContext.cs file
2. Identify and fix using statements referencing GamePlay.unit
3. Change to GamePlay.Unit
4. Verify only namespace-related changes
5. Trigger Unity compilation
6. Check error count decreased

**Verify:**
- File modified with correct using statements
- Unity compilation shows decreased error count
- No new errors introduced

**Done:**
- ✅ File fixed
- ✅ Error count decreased
- ✅ No new errors

### Task 4: Fix UnitManager.cs namespace references
**Files:**
- `Assets/Script/Manager/UnitManager.cs`

**Action:**
1. Read UnitManager.cs file
2. Identify and fix using statements referencing GamePlay.unit
3. Change to GamePlay.Unit
4. Verify only namespace-related changes
5. Trigger Unity compilation
6. Check error count decreased

**Verify:**
- File modified with correct using statements
- Unity compilation shows decreased error count
- No new errors introduced

**Done:**
- ✅ File fixed
- ✅ Error count decreased
- ✅ No new errors

### Task 5: Fix SkillSequenceResult.cs namespace references
**Files:**
- `Assets/Script/GamePlay/Skill/SkillSequenceResult.cs`

**Action:**
1. Read SkillSequenceResult.cs file
2. Identify and fix using statements referencing GamePlay.unit
3. Change to GamePlay.Unit
4. Verify only namespace-related changes
5. Trigger Unity compilation
6. Check error count decreased

**Verify:**
- File modified with correct using statements
- Unity compilation shows decreased error count
- No new errors introduced

**Done:**
- ✅ File fixed
- ✅ Error count decreased
- ✅ No new errors

### Task 6: Final verification and cleanup
**Files:**
- All files modified in this task

**Action:**
1. Get final compilation status from Unity
2. Verify zero compilation errors
3. Create summary of files fixed
4. Document error count before/after

**Verify:**
- Unity compilation succeeds with zero errors
- Summary document created
- All namespace-related errors resolved

**Done:**
- ✅ Zero compilation errors achieved
- ✅ Summary document created
- ✅ Task complete