# Screen-Space Reflections with Temporal Accumulation + Voxel DDA Fallback

## Status
Proposal — granularity + milestones for discussion before implementation.

## Context
After SH/IRadianceCache was finished, the next step is screen-space reflections.
This doc proposes the architecture, buffer/layout decisions, and an 8-milestone
plan. Grounded in the actual code (files below), the iterationRP Alpha 0.8.22
reference (screen-projection + binary-refine SSR, temporal accumulation with
reprojection + rejection, GGX-lobe sampling, voxel fallback), and decisions
made with the user this session.

## Key decisions (locked)
1. **Forward stage computes no environment reflection.** The PBR material
   (CustomLit ForwardLit / `CustomDynamicGI`) keeps diffuse GI (IRC/SH) but
   drops specular IBL (`_DynamicSkyMap` sampling). SSR becomes the specular
   term, computed post-processing (before tonemap). This avoids double-counting
   the sky IBL and makes reflection tuning independent of the material.
2. **`_GBuffer.ba` is repurposed from normalWS to roughness+metallic.** The
   normals that SSR needs are world-space per-texel normals; those already
   exist as `_CameraNormalsTexture` (SSAO's DepthNormals prepass output) and are
   higher quality than the flat face normals Gbuffer wrote. The old `.ba`
   (flat x/z world normal, used only by UnitStroke for debug/classification, not
   for lighting) is free to be replaced. `_GBuffer.R` (visible face id) and `G`
   (nearest unit id) are untouched, so UnitStroke's R/G visibility logic keeps
   working.
3. **Roughness/metallic are written per-texel by the PBR material itself.**
   Gbuffer's block/water pass writes `.ba`. A per-type/per-voxel table cannot
   recover per-texel material/map data (a block's rough/metal lives in whatever
   material/map instance drew it, not in the type id), so the data must be
   emitted where the material's UV/parameters already are. The type-table route
   is not used for on-screen reflectors.
4. **Units (characters) use standard URP Lit** (`Custom/Lit`), have no
   rough/metal maps, and their voxelized volume (`_PackedUnitVolume`,
   RGBA=color+occupancy) is the reflection data source. Unit roughness ≈ 1 /
   metal ≈ 0 (diffuse-ish, no specular reflections off units). The combined
   voxel raymarch (`VoxelRaytrace` in `VoxelRaytrace.hlsl`, which marches both
   the static map and unit volumes) is the fallback when SSR misses.
5. **Reflection content source = full HDR scene color** including transparent
   (water/glass). Needs one color-copy/target-bind in the post pass, after
   transparent rendering, before tonemap.
6. **Temporal accumulation: hit-count `.w`.** The reflection buffer stores
   `radiance.rgb + count.w`. Accumulate only when a ray hits (SSR screen hit,
   DDA hit, or sky-hit); disocclusion / validation failures reset. Capped count
   (e.g. 16-64). Ping-pong two buffers (A/B), reproject the current pixel into
   the previous frame using previous VP, validate by depth+normal, blend 1/N.
7. **Fallback boundary = all SSR misses.** When SSR ray misses (exits screen or
   hits nothing in depth), fall back to the voxel DDA (map + units) along the
   reflection dir. DDA outcome classes:
   - block / unit volume hit -> relight and give color (the DDA relight path);
   - sky hit -> valid, give sky color (`IrcSkyAmbient` / `_DynamicSkyMap`); NOT
     a miss. (User: "DDA打到天没问题不算miss".)
   - water hit -> geometrically a hit but water color is not computed in this
     pass, so treat as miss, give no color. (User: "水颜色不好算所以算作miss".)
   This gives correct reflection content even off-screen for blocks/units/sky;
   water content only appears on-screen via the sampled scene color.

## Architecture overview
Pass order (before tonemap, after opaque+transparent):
```
[GBuffer pass]  R=faceId G=nearestUnitId  B/A=roughness/metallic   (existing GbufferRenderFeature + new material write)
[SSAO]          -> _CameraDepthTexture + _CameraNormalsTexture (URP built-in, already active)
[SSR pass]      full-screen, per-pixel:
                  1. world pos + world normal from depth + _CameraNormalsTexture
                  2. read _GBuffer.R/.ba => classify (block/water/unit/sky) + rough/metal
                  3. skip sky pixels (no reflector)
                  4. GGX importance-sample reflection lobe (roughness-driven)
                  5. ray march depth buffer (SSR.hlsl) -> on hit: sample scene color
                  6. on miss: VoxelRaytrace(map+units) along R -> relight hit:
                     block/unit = relight (albedo + shadow + SH diffuse + emissive),
                     sky = sky color (valid), water = miss (no color)
                  7. temporal accumulate into A/B with .w count, reproject+validate, clamp
[Final compose] in CustomDynamicGI / post: replace indirectSpecular with SSR result
```

### Data source per reflector surface
| Surface | rough/metal | normal | reflected content |
|---|---|---|---|
| block (faceId 253) | GBuffer.ba (material per-texel) | _CameraNormalsTexture | HDR scene color / DDA relight |
| unit (1..250) | n/a (≈1/≈0) | geometric/voxel approx | voxel volume color + DDA |
| water (254) | material const (smooth dielectric) | material | HDR scene color (on-screen only) |
| sky | no reflector | — | — |

### DDA-hit relight (M4) outcome
DDA along the reflection dir, on SSR miss:
- block hit -> albedo face tile + `IrcSunVisibility` shadow + `IrcSampleDiffuse`
  (SH indirect) + `IrcEmissive` -> color.
- unit volume hit -> voxel color (rough≈1 / metal≈0) -> color.
- sky hit -> `IrcSkyAmbient` / `_DynamicSkyMap` -> color (valid, not miss).
- water hit -> miss (no color) — water is only visible via on-screen color sample.
- nothing -> miss (no color).

The relight is the same Lambert model + same data (SH cache, shadow) that the
forward CustomLit block shading uses, so DDA-returned color matches the on-screen
forward result as a block slides off-screen (no "pop" at the screen edge).

## Files
- `Assets/shader/Gbuffer.shader` — write .ba = rough/metal instead of normal
  (passes 0/1/2).
- `Assets/Script/Render/GBufferRenderFeature.cs` — (nothing required for layout;
  maybe comment/doc only).
- `Assets/shader/reflect/SSR.hlsl` — already has depth-march + binary refine +
  thickness/continuity; reuse for the SSR stage.
- `Assets/shader/voxel/VoxelRaytrace.hlsl` — `VoxelRaytrace` combined
  map+units; fallback march + relight helpers.
- `Assets/shader/voxel/IrradianceCacheCommon.hlsl` — `IrcSampleDiffuse`,
  `IrcSkyAmbient`, `IrcSunVisibility`, `IrcSampleRadiance` for relighting the
  DDA-hit.
- `Assets/shader/pbr/CustomLighting.hlsl` — `CustomDynamicGI` (line 293): drop
  the `_DynamicSkyMap` indirectSpecular; leave diffuse; later consume the SSR
  buffer.
- `Assets/shader/pbr/CustomLit.shader` + `CustomLitForwardPass.hlsl` — the
  ForwardLit pass must write rough/metal somewhere SSR can read it, or the data
  must be available another way; see milestone M3 note.
- `Assets/Script/Render/IrradianceCacheFeature.cs` — reference pattern for
  RendererFeature + ping-pong RenderTextures + global publish. SSR feature
  mirrors this.

## Milestones (each a reviewable commit)
1. **M1** — GBuffer `.ba` = rough/metal: update Gbuffer.shader + material
   (CustomLit block/water) to write .ba; verify block/water classify in the
   existing debug view; keep UnitStroke working (R/G unchanged).
2. **M2** — SSR Feature skeleton + raw 1-frame SSR to a debug RT: Feature +
   full-screen pass; read depth + normals; write debug (R/G classification,
   rough/metal, normals) overlay; validate on walls/floor.
3. **M3** — Rough/metal plumbing from materials into the SSR data (this is the
   "material must write .ba" hook; CustomLit ForwardLit extra-data write, or
   reuse the Gbuffer override material data path — decide during M3).
4. **M4** — DDA fallback on SSR miss: march map+units, relight via IRC helpers;
   debug overlay of fallback region.
5. **M5** — Temporal ping-pong + reprojection + `.w` + neighbor/variance clamp;
   publish `_SSRReflection`; validate convergence / ghosting.
6. **M6** — GI integration: drop `_DynamicSkyMap` indirectSpecular in
   `CustomDynamicGI`, consume `_SSRReflection` (blend by buffer confidence);
   keep diffuse; tune on a metal/block surface.
7. **M7** — Units refinement: unit reflections via voxel volume + DDA color.
   (Water stays out of this SSR/block pass end-to-end — its own shader + SSPR
   path is untouched; water content in reflections only via on-screen color.)
8. **M8** — Tuning/perf/config: half-res option, quality knobs, SSR buffer
   format/size, config toggles.

## Open items (to settle during implementation)
- Exact RT format for the reflection buffer and SSR intermediate (HDR, format).
- Previous-frame VP + motion-vector availability / computation.
- Whether the "material writes .ba" hook is via a second ForwardLit extra output
  or the Gbuffer override material path; decide in M3.
- GGX lobe sampling + blue-noise seeding (per-frame decorrelation like SH bake).
