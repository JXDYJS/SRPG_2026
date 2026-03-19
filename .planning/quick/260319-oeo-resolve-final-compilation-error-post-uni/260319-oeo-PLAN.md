---
must_haves:
  truths:
    - "Single remaining compilation error from GamePlay.Units namespace refactoring"
    - "Error is likely a namespace reference issue (missing using, outdated using, or need for fully qualified name)"
    - "Fix should only touch using statements or type declarations, not class logic"
  artifacts:
    - "Fixed compilation error"
    - "Zero Unity compilation errors"
  key_links:
    - "Unity console error log"
    - "File with namespace issue"
---

# Quick Task 260319-oeo: Resolve Final Compilation Error (Post-Units Refactoring)

**Status:** Ready for execution
**Created:** 2026-03-19

## Overview

Fix the single remaining Unity compilation error left over from the GamePlay.Units namespace refactoring. The error is likely a namespace reference issue.

## Tasks

### Task 1: Fix the remaining compilation error

**Files:**
- Unity console (to get error log)
- File mentioned in error (to fix namespace reference)

**Action:**
1. Trigger Unity compilation to get the exact CS error code, file path, and line number of the remaining error
2. Open the specific file mentioned in the error log
3. Fix the namespace reference issue:
   - Add missing `using GamePlay.Units;` statement if needed
   - Update outdated `using GamePlay.Unit;` to `using GamePlay.Units;`
   - Or use fully qualified name (e.g., `GamePlay.Units.MapUnit`)
4. Do NOT rewrite any class logic, variables, or function implementations - only touch using statements or type declarations

**Verify:**
- Trigger Unity compilation again
- Verify ZERO compilation errors exist

**Done:**
- Unity compiles with zero errors
- Task complete message shown