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
                bool traced = false;

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
                        traced = true;
                    }
                }

                // 2) Voxel DDA along the reflection ray when SSR missed. Every
                // outcome is a valid radiance (block/unit relight, sky color, or
                // water shade), so the accumulator always advances.
                if (!traced)
                {
                    VoxelRaytraceRes dda = VoxelRaytrace(worldPos, dir);
                    radiance = SSRRelightHit(dda, dir, sunDir, sunColor);
                    traced = true;
                }

                // Temporal accumulation. The history is usable only if reprojecting
                // this surface point into the previous frame lands on the *same*
                // reflector surface: same reflector id, similar depth (projected on
                // the vertex normal) and a tight normal cone (iterationRP gates).
                // Otherwise the history belongs to another surface / disocclusion ->
                // reset to the current single sample (count = 1).
                float4 prevClip = mul(_PrevVP, float4(worldPos, 1.0));
                float2 prevUv = prevClip.xy / max(prevClip.w, 1e-6) * 0.5 + 0.5;
                bool prevInScreen = all(prevUv >= 0.0) && all(prevUv <= 1.0) && prevClip.w > 0.0;

                float3 accumulated = radiance;
                float count = 1.0;
                if (prevInScreen && _FrameIdx > 1)
                {
                    float4 prev = SAMPLE_TEXTURE2D(_PrevAccum, sampler_PrevAccum, prevUv);
                    float4 prevMeta = SAMPLE_TEXTURE2D(_PrevMeta, sampler_PrevMeta, prevUv);
                    float3 prevNormal = SSRDecodeNormal(prevMeta.rg);
                    float prevReflFlag = prevMeta.a;

                    // Same reflector surface at the reprojected point?
                    bool historyValid = prevReflFlag > 0.5;

                    // Normal reject: tight cone on world normals (world space -> camera
                    // independent). A disoccluded or different surface tilts beyond it.
                    float nDot = saturate(dot(prevNormal, normalWS));
                    historyValid = historyValid && nDot > 0.9;

                    // Depth/disocclusion reject: the surface currently shown at the
                    // reprojected UV must sit at this pixel's depth. A nearer/farther
                    // surface there means this point was occluded or moved last frame,
                    // so the stored history belongs to another object.
                    float reprojRawDepth = SAMPLE_TEXTURE2D_LOD(_CameraDepthTexture, sampler_CameraDepthTexture, prevUv, 0).r;
                    float3 reprojViewPos = SSRViewPosFromScreen(prevUv, reprojRawDepth);
                    float3 curViewPos = SSRViewPosFromScreen(uv, rawDepth);
                    float depthDiff = abs(-reprojViewPos.z - (-curViewPos.z));
                    historyValid = historyValid && depthDiff < 0.01 + 0.002 * max(-curViewPos.z, 0.1);

                    if (historyValid)
                    {
                        // Same surface: 1/N blend of the new radiance sample. A just
                        // discovered reflector (prev.a == 0) still starts accumulating.
                        float prevN = max(prev.a, 1.0);
                        count = min(prevN + 1.0, _SSRParams.y);
                        accumulated = lerp(prev.rgb, radiance, 1.0 / count);
                    }
                    else
                    {
                        // Different surface / disoccluded / first history: restart.
                        accumulated = radiance;
                        count = 1.0;
                    }
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
