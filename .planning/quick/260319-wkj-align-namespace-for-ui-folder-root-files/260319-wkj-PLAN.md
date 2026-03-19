---
must_haves:
  truths:
    - "TimelineIconUI.cs currently uses namespace GamePlay.UI, needs to change to UI"
    - "TimelineUIManager.cs currently uses namespace Managers, needs to change to UI"
    - "Changing namespaces will break external references that need fixing"
    - "Must process one file at a time with compilation validation"
  artifacts:
    - "TimelineIconUI.cs namespace changed to UI"
    - "TimelineUIManager.cs namespace changed to UI"
    - "All external references fixed"
    - "Zero Unity compilation errors"
  key_links:
    - "Assets/Script/UI/TimelineIconUI.cs"
    - "Assets/Script/UI/TimelineUIManager.cs"
    - "External files that reference these classes"
---

# Quick Task 260319-wkj: Align Namespace for UI Folder Root Files

**Status:** Ready for execution
**Created:** 2026-03-19

## Overview

Ensure all C# scripts in the root of UI folder (TimelineIconUI.cs and TimelineUIManager.cs) use exact namespace UI. Fix any external reference breakage.

## Tasks

### Task 1: Change TimelineIconUI.cs namespace to UI

**Files:**
- Assets/Script/UI/TimelineIconUI.cs
- External files that reference TimelineIconUI (to be discovered via compilation errors)

**Action:**
1. Open TimelineIconUI.cs
2. Change namespace from `GamePlay.UI` to `UI`
3. Commit the change
4. Trigger Unity compilation
5. If CS0246 or CS0234 errors occur in external files:
   - Open each external file mentioned in errors
   - Update using statements: `using GamePlay.UI;` → `using UI;`
   - Do NOT touch any logic, variables, or function bodies
6. Verify zero compilation errors before proceeding

**Verify:**
- TimelineIconUI.cs uses namespace `UI`
- Unity compiles with zero errors

**Done:**
- All compilation errors resolved
- External references updated correctly

### Task 2: Change TimelineUIManager.cs namespace to UI

**Files:**
- Assets/Script/UI/TimelineUIManager.cs
- External files that reference TimelineUIManager (to be discovered via compilation errors)

**Action:**
1. Open TimelineUIManager.cs
2. Change namespace from `Managers` to `UI`
3. Commit the change
4. Trigger Unity compilation
5. If CS0246 or CS0234 errors occur in external files:
   - Open each external file mentioned in errors
   - Update using statements: `using Managers;` → `using UI;` or add `using UI;`
   - Do NOT touch any logic, variables, or function bodies
6. Verify zero compilation errors

**Verify:**
- TimelineUIManager.cs uses namespace `UI`
- Unity compiles with zero errors

**Done:**
- All compilation errors resolved
- External references updated correctly
- Task complete message shown