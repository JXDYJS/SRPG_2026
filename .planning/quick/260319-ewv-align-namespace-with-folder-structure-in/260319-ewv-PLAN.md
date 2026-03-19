---
quick_id: 260319-ewv
mode: quick-full
description: Align namespace with folder structure in Assets/Script/GamePlay/Buff using one-file-at-a-time compile gates.
must_haves:
  truths:
    - Only files under Assets/Script/GamePlay/Buff are in scope.
    - Only single-namespace files are processed.
    - Only namespace declaration line may be changed when needed.
    - Unity compilation must pass after each processed file.
  artifacts:
    - .planning/quick/260319-ewv-align-namespace-with-folder-structure-in/260319-ewv-SUMMARY.md
    - .planning/quick/260319-ewv-align-namespace-with-folder-structure-in/260319-ewv-VERIFICATION.md
    - .planning/STATE.md
  key_links:
    - Assets/Script/GamePlay/Buff/BuffBase.cs
    - Assets/Script/GamePlay/Buff/BuffManager.cs
    - Assets/Script/GamePlay/Buff/BuffStrength.cs
---

# Quick Task 260319-ewv Plan

## Task 1
- files:
  - Assets/Script/GamePlay/Buff/BuffBase.cs
- action:
  - Verify file has a single namespace declaration.
  - If namespace is not `GamePlay.Buff`, modify namespace declaration line only.
  - Trigger Unity compile and inspect Console errors.
- verify:
  - Namespace is `GamePlay.Buff`.
  - Unity compile completes with zero errors after this file gate.
- done:
  - BuffBase file passes namespace and compile gate.

## Task 2
- files:
  - Assets/Script/GamePlay/Buff/BuffManager.cs
- action:
  - Verify file has a single namespace declaration.
  - If namespace is not `GamePlay.Buff`, modify namespace declaration line only.
  - Trigger Unity compile and inspect Console errors.
- verify:
  - Namespace is `GamePlay.Buff`.
  - Unity compile completes with zero errors after this file gate.
- done:
  - BuffManager file passes namespace and compile gate.

## Task 3
- files:
  - Assets/Script/GamePlay/Buff/BuffStrength.cs
- action:
  - Verify file has a single namespace declaration.
  - If namespace is not `GamePlay.Buff`, modify namespace declaration line only.
  - Trigger Unity compile and inspect Console errors.
- verify:
  - Namespace is `GamePlay.Buff`.
  - Unity compile completes with zero errors after this file gate.
- done:
  - BuffStrength file passes namespace and compile gate.
