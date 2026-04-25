# Quick Task 260425-doh: AI LoS Occlusion Architecture Solution Summary

## Completed

1. **Codebase reconnaissance**: Analyzed all relevant files:
   - `TacticalMapManager.cs` (121 lines) - Threat map rebuild with commented-out Manhattan diffusion
   - `InfluenceMapLayer.cs` (27 lines) - Dictionary-based score map
   - `LogicalGrid.cs` (69 lines) - Voxel grid with BlockType + YSizes
   - `Astar.cs` (316 lines) - 3D A* with height-aware pathfinding
   - `AttackRangeSystem.cs` (832 lines) - LoS checking for skill trajectories
   - `EnemyAIManager.cs` (70 lines) - Basic enemy AI with no tactical map usage
   - `MapData.cs`, `MapDataSO.cs`, `MapObject.cs` - Terrain data structures
   - `Global.cs` - BlockType, TrajectoryType enums
   - `MapManager.cs` - Grid construction and world coordinate mapping

2. **Architecture document produced**: `.planning/260425-doh-los-occlusion-solution.md` (22,878 bytes)

## Key Findings

- **Current status**: `RebuildThreatMapSnapshot()` calculates per-unit threat scores but grid diffusion is **commented out** - ThreatMap stays empty
- **Recommended solution**: Recursive Shadowcasting 2D + height difference post-processing
- **Performance**: O(P × R²) for typical 40×40 grids - under 0.5ms single-threaded
- **3D handling**: 2D projection + Y-axis height correction handles high-ground overlook, slab cover, and low-ground occlusion
- **Interface contracts**: Defined IThreatOcclusionDiffuser, IShadowCaster2D, IHeightCorrector, IStaticVisibilityCache
- **Optimization path**: Precomputed cache → Job System + Burst for extreme scale
