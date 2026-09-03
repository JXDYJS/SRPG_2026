// Temporal screen-space reflections with voxel DDA fallback, computed in
// post-processing (after transparent, before tonemap). Runs only on block
// reflectors (CustomLit ReflectionData pass wrote per-pixel rough/metal/
// normal); units (stock Lit) and water keep their own paths.
//
// Trace pass: per reflector pixel, GGX-importance-sample one reflection ray
// (roughness from _ReflRoughMetal), march the scene depth buffer; on a screen
// hit sample the scene color; on a miss march the voxel world (map + units)
// and relight the hit (block/unit -> Lambert color, sky -> sky color, water ->
// Fresnel water shade). Every outcome is a valid radiance sample. Temporal
// accumulation: reproject this pixel into the previous frame's accumulation
// buffer via previous VP; history is accepted only when the reprojected point
// is the same reflector surface (prev normal cone + depth at the reprojected
// UV), otherwise the count resets to 1. Blend is 1/N with N = min(prev+1, cap).
// Outputs _Accum (radiance.rgb + count.w), published globally.
//
// The reflector's own per-pixel BRDF (albedo/rough/metal/NoV/fresnel) is
// applied when the material consumes _Accum in CustomDynamicGI, so no
// fullscreen composite is needed and the env weight matches the forward shade.

Shader "Hidden/SSR"
{
    SubShader
    {
        Tags { "RenderType" = "Opaque" }
        Cull Off
        ZWrite Off
        ZTest Always

        Pass
        {
            Name "Trace"
            HLSLPROGRAM
            #pragma vertex Vert
            #pragma fragment TraceFragment
            #pragma target 5.0

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.core/Runtime/Utilities/Blit.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonMaterial.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
            #include "Assets/shader/voxel/IrradianceCacheCommon.hlsl"
            #include "Assets/shader/reflect/SSR.hlsl"

            TEXTURE2D(_ReflNormal);     SAMPLER(sampler_ReflNormal);
            TEXTURE2D(_ReflRoughMetal); SAMPLER(sampler_ReflRoughMetal);
            TEXTURE2D(_GBuffer);        SAMPLER(sampler_GBuffer);
            TEXTURE2D(_SceneColor);     SAMPLER(sampler_SceneColor);
            // previous frame accumulation (ping-pong read side)
            TEXTURE2D(_PrevAccum);      SAMPLER(sampler_PrevAccum);
            // previous frame reflector meta (rg = oct world normal, a = 1 for a
            // reflector pixel). Used to reject history when the reprojected sample
            // is not the same surface (normal cone + depth-at-UV tests).
            TEXTURE2D(_PrevMeta);       SAMPLER(sampler_PrevMeta);

            float4x4 _PrevVP;
            float4x4 _InvViewProj;
            float4   _SSRParams;   // x = unused, y = maxAccum, z = (unused), w = (unused)
            float    _Frame;       // temporal noise decorrelation
            int      _FrameIdx;
            // Debug-only hit-path visualization toggle (see Settings.DebugHitPath
            // in SSRFeature). A plain uniform so the branch always exists in the
            // base variant (a shader_feature variant was silently skipped because
            // only the Trace pass of Hidden/SSR uses it, so the material keyword
            // never produced the alternate variant).
            float    _SSRDebugHitPath;

            // _ReflNormal stores oct-encoded world normals remapped to [0,1]
            // (see CustomLitReflectionDataPass.hlsl). Un-remap, then oct-decode.
            float3 SSRDecodeNormal(float2 enc)
            {
                return UnpackNormalOctQuadEncode(enc * 2.0 - 1.0);
            }

            // GGX (visible-normal-ish) sample of the reflection lobe around n,
            // given view direction v, roughness a.
            float3 SSRSampleGGX(float3 v, float3 n, float a, float r1, float r2)
            {
                float3 up = abs(n.y) < 0.999 ? float3(0, 1, 0) : float3(1, 0, 0);
                float3 t = normalize(cross(up, n));
                float3 b = cross(n, t);
                float phi = 6.2831853 * r2;
                float cosTheta = sqrt(max(0.0, (1.0 - r1) / max(1.0 + (a * a - 1.0) * r1, 1e-5)));
                float sinTheta = sqrt(max(0.0, 1.0 - cosTheta * cosTheta));
                float3 h = normalize(t * (sinTheta * cos(phi)) + b * (sinTheta * sin(phi)) + n * cosTheta);
                return reflect(-v, h);
            }

            // Relight a voxel hit along the reflection ray. Every outcome yields a
            // valid radiance sample so the temporal accumulator always advances:
            //   sky (VOXEL_HIT_NONE) -> dynamic sky color along the ray
            //   water               -> Fresnel sky reflection + scattered body light
            //   block/unit          -> Lambert + sun + SH irradiance at the hit
            float3 SSRRelightHit(VoxelRaytraceRes hit, float3 dir, float3 sunDir, float3 sunColor)
            {
                if (hit.typeId == VOXEL_HIT_NONE)
                {
                    return IrcSkyAmbient(dir); // sky: valid color, not a miss
                }
                if (hit.typeId == VOXEL_HIT_WATER)
                {
                    // Same water shade as the IRC bake: a downward ray reflects the
                    // sky (Fresnel) plus scattered body light along the water path.
                    if (dir.y < 0.0)
                    {
                        float cosT = abs(dir.y);
                        float F = 0.02 + 0.98 * pow(1.0 - cosT, 5.0);
                        float3 sunVis = sunColor * IrcSunVisibility(hit.hitPos);
                        float dist = (_WaterSurfaceHeight - hit.hitPos.y) / max(sunDir.y, 1e-3);
                        if (dist > 0.0) sunVis *= exp(-(_WaterScatter + _WaterAbsorb) * dist);
                        return F * IrcSkyAmbient(reflect(dir, float3(0, 1, 0)))
                             + (1.0 - F) * IrcWaterColor(dir, sunDir, sunVis);
                    }
                    return IrcSkyAmbient(float3(0, 1, 0)); // upward water hit: sky floor
                }
                bool isUnit = hit.typeId == VOXEL_HIT_UNIT;
                float3 albedo = isUnit ? hit.hitColor
                                       : VoxelSampleFace(hit.typeId, hit.hitNormal, hit.hitPos).rgb;
                float3 emissive = isUnit ? float3(0, 0, 0) : IrcEmissive(hit.typeId);
                float3 direct = emissive
                    + sunColor * saturate(dot(hit.hitNormal, sunDir)) * IrcSunVisibility(hit.hitPos);
                float3 indirect = IrcSampleDiffuse(hit.hitPos, hit.hitNormal);
                return albedo * (direct + indirect);
            }

            float4 TraceFragment(Varyings input) : SV_Target
            {
                float2 uv = input.texcoord;
                float rawDepth = SAMPLE_TEXTURE2D_LOD(_CameraDepthTexture, sampler_CameraDepthTexture, uv, 0).r;

                // Block-reflector gate: only CustomLit blocks reflect. Sky has
                // R==0 (and rawDepth at far), units/water have other R ids.
                float4 gb = SAMPLE_TEXTURE2D(_GBuffer, sampler_GBuffer, uv);
                float wallId = 253.0 / 255.0;
                if (abs(gb.r - wallId) > 0.002) return float4(0, 0, 0, 0);

                // World position + normal + view dir for this reflector pixel.
                float4 wpClip = float4(uv * 2.0 - 1.0, rawDepth, 1.0);
                float4 wp = mul(_InvViewProj, wpClip);
                float3 worldPos = wp.xyz / wp.w;
                float3 viewDir = normalize(_WorldSpaceCameraPos - worldPos);
                float3 normalWS = SSRDecodeNormal(SAMPLE_TEXTURE2D(_ReflNormal, sampler_ReflNormal, uv).rg);

                float4 rm = SAMPLE_TEXTURE2D(_ReflRoughMetal, sampler_ReflRoughMetal, uv);
                float perceptualRoughness = rm.r;
                float roughness = max(perceptualRoughness * perceptualRoughness, 0.02);

                // Interleaved gradient noise (Jimenez 2014): spatially
                // decorrelated blue-noise-like sequence; each frame slips the
                // noise field by one step so the 1-spp trace decorrelates
                // temporally and converges over frames.
                float2 pix = uv * _ScreenParams.xy;
                float n1 = InterleavedGradientNoise(pix, _FrameIdx);
                float n2 = InterleavedGradientNoise(pix + 12.0, _FrameIdx);
                float3 dir = SSRSampleGGX(viewDir, normalWS, roughness, n1, n2);

                float3 sunDir = normalize(_MainLightPosition.xyz);
                float3 sunColor = _MainLightColor.rgb;

                float3 radiance;
                int hitType = 0; // 0 = none yet, 1 = screen-space, 2 = voxel
                int ssrMissReason = 0; // SSRRaytrace miss code when hitType ends up voxel

                // 1) Screen-space ray march over the current depth buffer. The
                // march runs entirely in screen (uv, depth) space, so a hit's uv
                // is always inside [0,1]; sample the scene color there directly.
                float3 viewOri = TransformWorldToView(worldPos + normalWS * 1e-3);
                float3 viewDirS = TransformWorldToViewDir(dir, false);
                SSRRaytraceRes ssrHit = SSRRaytrace(viewOri, viewDirS);
                if (ssrHit.alpha > 0.5)
                {
                    radiance = SAMPLE_TEXTURE2D(_SceneColor, sampler_SceneColor, ssrHit.hitUv).rgb;
                    hitType = 1;
                }
                else
                {
                    ssrMissReason = ssrHit.typeId;
                }

                // 2) Voxel DDA along the reflection ray when SSR missed. Every
                // outcome is a valid radiance (block/unit relight, sky color, or
                // water shade), so the accumulator always advances.
                if (hitType == 0)
                {
                    VoxelRaytraceRes dda = VoxelRaytrace(worldPos, dir);
                    radiance = SSRRelightHit(dda, dir, sunDir, sunColor);
                    hitType = 2;
                }

                // Debug visualization of the hit path, skipping temporal accumulation:
                //   magenta = SSR projection round-trip broken: reprojecting this
                //             pixel's own view position (from the known-good
                //             _InvViewProj worldPos) through _SSRProj does NOT land
                //             back at this uv. Means _SSRProj/_SSRInvProj are wrong
                //             (not the camera's GPU projection), so no SSR can ever hit.
                //   red    = screen-space scene hit
                //   green  = voxel fallback because the SSR ray never aimed on-screen
                //            (started off-screen / pointed backward / depth regressed)
                //   blue   = voxel fallback because SSR marched the whole screen path
                //            but no surface crossed (ray aimed into empty/background)
                //   yellow = voxel fallback because SSR crossed a surface but the
                //            binary refine failed the thickness gate
                if (_SSRDebugHitPath > 0.5)
                {
                    // Consistency check: worldPos (via the known-good _InvViewProj)
                    // reprojected to view with the built-in view matrix, then to
                    // screen with _SSRProj, must land back at this uv. If _SSRProj
                    // is not the camera's real projection, the round-trip drifts and
                    // the reflector shows magenta (projection mismatch).
                    float3 vTrue = TransformWorldToView(worldPos);
                    float3 rt = SSRScreenPosFromViewPos(vTrue);
                    float rtErr = max(abs(rt.x - uv.x), abs(rt.y - uv.y));
                    float3 c;
                    if (rtErr > 0.01) c = float3(1, 0, 1); // magenta: projection broken
                    else
                    {
                        c = float3(0, 1, 0); // default green
                        if (hitType == 1) c = float3(1, 0, 0); // red: screen-space hit
                        else if (ssrMissReason == SSR_MISS_ORIGIN_OFFSCREEN) c = float3(0, 1, 0); // green
                        else if (ssrMissReason == SSR_MISS_Z_REGRESS) c = float3(1, 0.5, 0); // orange: dir points toward camera
                        else if (ssrMissReason == SSR_MISS_MARCHLEN) c = float3(1, 1, 0); // yellow
                        else if (ssrMissReason == SSR_MISS_NO_CROSSING) c = float3(0, 0, 1); // blue
                        else if (ssrMissReason == SSR_MISS_THICKNESS) c = float3(0, 1, 1); // cyan
                    }
                    return float4(c, 1.0);
                }

                // Temporal accumulation with manual 4-tap (catmull-free bilinear)
                // history fetch, gating each tap independently (iterationRP scheme):
                // the reprojected UV lands between texels, so instead of a single
                // point sample that can pick the wrong face at edges / scatter on
                // smooth planes, we fetch the 2x2 neighborhood and keep only the
                // taps that are on the *same* surface plane as this pixel. Coplanarity
                // is judged the iterationRP way: reconstruct the tap's world position
                // from the current-frame depth at its UV, then measure the distance
                // along the surface normal (dot(delta, normal)). Points on the same
                // plane project to ~0 whatever the view tilt, so oblique walls no
                // longer reject their own neighbours (a raw view-space depth compare
                // did). Kept taps are blended by their bilinear weights; count advances
                // from the largest kept count so edges don't reset to 1 every frame.
                float3 accumulated = radiance;
                float count = 1.0;

                float4 prevClip = mul(_PrevVP, float4(worldPos, 1.0));
                float2 prevUv = prevClip.xy / max(prevClip.w, 1e-6) * 0.5 + 0.5;
                bool prevInScreen = all(prevUv >= 0.0) && all(prevUv <= 1.0) && prevClip.w > 0.0;

                if (prevInScreen && _FrameIdx > 1)
                {
                    // World-space coplanarity tolerance along the normal (~ a few cm).
                    float planeTol = 0.05;

                    // Continuous texel coord of the reprojected point.
                    float2 prevTexel = prevUv * _ScreenParams.xy - 0.5;
                    int2 baseTexel = int2(floor(prevTexel));
                    float2 frac = prevTexel - baseTexel; // in [0,1)

                    float2 screenSize = _ScreenParams.xy;

                    float3 prevColor = 0;
                    float weightSum = 0;
                    float maxCount = 0;

                    [unroll]
                    for (int ty = 0; ty < 2; ty++)
                    {
                        [unroll]
                        for (int tx = 0; tx < 2; tx++)
                        {
                            int2 tapTexel = baseTexel + int2(tx, ty);
                            if (tapTexel.x < 0 || tapTexel.y < 0 ||
                                tapTexel.x >= (int)screenSize.x || tapTexel.y >= (int)screenSize.y) continue;

                            // Bilinear weight of this tap.
                            float2 tapFrac = float2(tx == 0 ? 1.0 - frac.x : frac.x,
                                                    ty == 0 ? 1.0 - frac.y : frac.y);
                            float bilinearW = tapFrac.x * tapFrac.y;

                            // Per-tap history + meta (point fetch).
                            float4 tap = _PrevAccum.Load(int3(tapTexel, 0));
                            float4 tapMeta = _PrevMeta.Load(int3(tapTexel, 0));
                            float3 tapNormal = SSRDecodeNormal(tapMeta.rg);

                            // Surface gates: was a reflector + tight normal cone.
                            bool keep = tapMeta.a > 0.5;
                            keep = keep && saturate(dot(tapNormal, normalWS)) > 0.9;

                            // Coplanarity gate (iterationRP): unproject the tap's
                            // current-frame depth to world and take the distance to
                            // this pixel along the surface normal. Same plane -> ~0.
                            float2 tapUv = (tapTexel + 0.5) / screenSize;
                            float tapRawDepth = SAMPLE_TEXTURE2D_LOD(_CameraDepthTexture, sampler_CameraDepthTexture, tapUv, 0).r;
                            float4 tapClip = float4(tapUv * 2.0 - 1.0, tapRawDepth, 1.0);
                            float4 tapW = mul(_InvViewProj, tapClip);
                            float3 tapWorldPos = tapW.xyz / tapW.w;
                            float planeDist = dot(tapWorldPos - worldPos, normalWS);
                            keep = keep && abs(planeDist) < planeTol;

                            if (keep)
                            {
                                prevColor += tap.rgb * bilinearW;
                                weightSum += bilinearW;
                                maxCount = max(maxCount, tap.a);
                            }
                        }
                    }

                    if (weightSum > 1e-5)
                    {
                        // Valid history on this surface: blend 1/N with the weighted
                        // previous color; N continues from the largest kept count so
                        // sub-pixel reprojection does not restart the accumulator.
                        prevColor /= weightSum;
                        float prevN = max(maxCount, 1.0);
                        count = min(prevN + 1.0, _SSRParams.y);
                        accumulated = lerp(prevColor, radiance, 1.0 / count);
                    }
                    // else: no kept tap -> the reprojected area is a different
                    // surface / disoccluded / empty history -> restart (count 1).
                }

                return float4(accumulated, count);
            }
            ENDHLSL
        }

        // Stores this frame's reflector surface meta (oct world normal + reflector
        // flag) into a ping-pong buffer that the next frame's Trace pass reads as
        // _PrevMeta to validate reprojected history.
        Pass
        {
            Name "StoreMeta"
            HLSLPROGRAM
            #pragma vertex Vert
            #pragma fragment StoreMetaFragment
            #pragma target 5.0

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.core/Runtime/Utilities/Blit.hlsl"

            TEXTURE2D(_ReflNormal); SAMPLER(sampler_ReflNormal);
            TEXTURE2D(_GBuffer);    SAMPLER(sampler_GBuffer);

            float4 StoreMetaFragment(Varyings input) : SV_Target
            {
                float2 uv = input.texcoord;
                float4 gb = SAMPLE_TEXTURE2D(_GBuffer, sampler_GBuffer, uv);
                float wallId = 253.0 / 255.0;
                if (abs(gb.r - wallId) > 0.002) return float4(0, 0, 0, 0);

                // _ReflNormal.rg is already the oct-encoded remapped world normal
                // (CustomLitReflectionDataPass layout); the next frame's Trace pass
                // decodes it with SSRDecodeNormal, so store it verbatim. .a=1 marks
                // a reflector surface for the history gate.
                float2 encNormal = SAMPLE_TEXTURE2D(_ReflNormal, sampler_ReflNormal, uv).rg;
                return float4(encNormal, 0.0, 1.0);
            }
            ENDHLSL
        }
    }
}
