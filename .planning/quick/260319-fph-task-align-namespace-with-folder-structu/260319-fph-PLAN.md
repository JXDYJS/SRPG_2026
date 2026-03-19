---
quick_id: 260319-fph
mode: quick-full
description: Align namespace with folder structure in Assets/Script/GamePlay/Relics using one-file-at-a-time compile gates.
must_haves:
  truths:
    - Only files under Assets/Script/GamePlay/Relics are in scope.
    - Only single-namespace files are processed.
    - Only namespace declaration line may be changed when needed.
    - Unity compilation must pass after each processed file.
  artifacts:
    - .planning/quick/260319-fph-task-align-namespace-with-folder-structu/260319-fph-SUMMARY.md
    - .planning/quick/260319-fph-task-align-namespace-with-folder-structu/260319-fph-VERIFICATION.md
    - .planning/STATE.md
  key_links:
    - Assets/Script/GamePlay/Relics/RelicBase.cs
---

# Quick Task 260319-fph Plan

## Task 1
- files:
  - Assets/Script/GamePlay/Relics/RelicBase.cs
- action:
  - Verify file has a single namespace declaration.
  - Current namespace is `GamePlay.relics` (lowercase 'r'), needs to be `GamePlay.Relics`.
  - Modify namespace declaration line from `namespace GamePlay.relics` to `namespace GamePlay.Relics`.
  - Trigger Unity compile and inspect Console errors.
- verify:
  - Namespace is `GamePlay.Relics` (uppercase 'R').
  - Unity compile completes with zero errors after this file gate.
- done:
  - RelicBase file passes namespace and compile gate.
