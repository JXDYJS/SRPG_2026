// Temporal screen-space reflections with voxel DDA fallback, computed in
// post-processing (after transparent, before tonemap). Runs only on block
// reflectors (CustomLit ReflectionData pass wrote per-pixel rough/metal/
// normal); units (stock Lit) and water keep their own paths.
//
// Trace pass: per reflector pixel, GGX-importance-sample one reflection ray
// (roughness from _ReflRoughMetal), march the scene depth buffer; on a screen
// hit sample the scene color; on a miss march the voxel world (map + units)
// and relight the hit (block/unit -> Lambert color, sky -> sky color, water ->
// miss). Temporal accumulation: reproject this pixel into the previous frame's
// accumulation buffer via previous VP, validate by depth + normal, blend 1/N
// into a hit-count .w, clamp to neighbors. Outputs _Accum (radiance.rgb +
// count.w), published globally.
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

            float4x4 _PrevVP;
            float4x4 _InvViewProj;
            float4   _SSRParams;   // x = unused, y = maxAccum, z = (unused), w = (unused)
            float    _Frame;       // temporal noise decorrelation
            int      _FrameIdx;

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

            // Interleaved gradient noise; index with pixel pos + frame index so
            // consecutive frames use decorrelated sequence positions.
            float InterleavedGradientNoise(float2 pix, int frameIdx)
            {
                float frame = (float)frameIdx * 0.0009764375; // one step per frame
                return frac(52.9829189 * frac(dot(pix, float2(0.06711056, 0.00583715)) + frame));
            }

            // Relight a voxel hit along the reflection ray (Lambert + SH + sun).
            float3 SSRRelightHit(VoxelRaytraceRes hit, float3 dir, float3 sunDir, float3 sunColor)
            {
                if (hit.typeId == VOXEL_HIT_NONE)
                {
                    return IrcSkyAmbient(dir); // sky: valid color, not a miss
                }
                if (hit.typeId == VOXEL_HIT_WATER)
                {
                    return 0; // water color not computed here -> miss (no color)
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

                float3 radiance = 0;
                bool hitSomething = false;

                // 1) Screen-space ray march over the current depth buffer.
                float3 viewOri = TransformWorldToView(worldPos + normalWS * 1e-3);
                float3 viewDirS = TransformWorldToViewDir(dir, false);
                SSRRaytraceRes ssrHit = SSRRaytrace(viewOri, viewDirS);
                if (ssrHit.alpha > 0.5)
                {
                    float3 hitView = ssrHit.hitPos;
                    float4 clipHit = mul(UNITY_MATRIX_P, float4(hitView, 1.0));
                    float2 hitUv = clipHit.xy / clipHit.w * 0.5 + 0.5;
                    if (all(hitUv >= 0.0) && all(hitUv <= 1.0))
                    {
                        radiance = SAMPLE_TEXTURE2D(_SceneColor, sampler_SceneColor, hitUv).rgb;
                        hitSomething = true;
                    }
                }

                // 2) Voxel DDA fallback along the reflection ray when SSR missed.
                if (!hitSomething)
                {
                    VoxelRaytraceRes dda = VoxelRaytrace(worldPos, dir);
                    if (dda.alpha > 0.5 || dda.typeId != VOXEL_HIT_NONE)
                    {
                        radiance = SSRRelightHit(dda, dir, sunDir, sunColor);
                        hitSomething = true;
                    }
                }

                // Temporal accumulation: reproject this pixel into the previous
                // frame's accumulation buffer; only count when a ray hit.
                float4 prevClip = mul(_PrevVP, float4(worldPos, 1.0));
                float2 prevUv = prevClip.xy / max(prevClip.w, 1e-6) * 0.5 + 0.5;
                float prevValid = (all(prevUv >= 0.0) && all(prevUv <= 1.0)) ? 1.0 : 0.0;

                float4 prev = SAMPLE_TEXTURE2D(_PrevAccum, sampler_PrevAccum, prevUv);
                float prevN = prev.a;

                float3 accumulated = radiance;
                float count = 1.0;
                if (prevValid > 0.5 && prevN > 0.5 && _FrameIdx > 1)
                {
                    if (hitSomething && any(radiance > 1e-4))
                    {
                        // Real hit: advance the integer hit count and blend.
                        count = min(prevN + 1.0, _SSRParams.y);
                        accumulated = lerp(prev.rgb, radiance, 1.0 / count);
                    }
                    else if (hitSomething)
                    {
                        // water-miss: keep history, do not advance count
                        accumulated = prev.rgb;
                        count = prevN;
                    }
                    else
                    {
                        // no hit at all this frame: keep the color, drop one
                        // count. History expires after prevN frames of misses.
                        accumulated = prev.rgb;
                        count = max(prevN - 1.0, 0.0);
                    }
                }

                return float4(accumulated, count);
            }
            ENDHLSL
        }
    }
}
