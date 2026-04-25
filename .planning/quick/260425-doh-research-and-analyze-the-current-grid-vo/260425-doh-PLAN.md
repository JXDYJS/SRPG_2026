# Quick Task 260425-doh: AI LoS Occlusion Architecture Analysis

## Task
Research and analyze the current grid/voxel system, AI pathfinding/scoring system, and TacticalMapManager code related to Line-of-Sight occlusion in Threat Map rebuilding, then produce an architecture solution document in `.planning/` folder.

## Tasks

### Task 1: Codebase reconnaissance
- Glob search for all grid/voxel system files (`*Grid*`, `*Voxel*`, `*Cell*`, `*Tile*`)
- Search AI scoring/pathfinding system (`*TacticalMap*`, `*ThreatMap*`, `*InfluenceMap*`, `*Scoring*`, `*Utility*`)
- Search TacticalMapManager and related files
- Read key files to understand:
  - Voxel/terrain data structure
  - Threat map rebuild pipeline
  - AI scoring functions and LoS handling
  - Performance constraints

### Task 2: Architecture document generation
Produce comprehensive document at `.planning/260425-doh-los-occlusion-solution.md` with:
1. Status & Bottleneck Analysis (current voxel data assessment, pseudo-occlusion, classic LoS algorithms, precomputation caching)
2. Final Architecture Recommendation
3. System Integration Plan (TacticalMapManager.RebuildThreatMapSnapshot hook, 3D height difference handling)
4. Performance & Multi-threading (Job System + Burst, async refresh)
5. Key Interface Contracts (C# interfaces for occlusion calculation and score update)
