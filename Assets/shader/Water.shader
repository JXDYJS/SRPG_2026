//
//SOURCE:https://zhuanlan.zhihu.com/p/2010582216581862517
//
Shader "Custom/PhysicsWater_Final_Strict_Fixed"
{
    Properties
    {
        [Header(Surface)]
        _Fresnel0("Fresnel F0", Range(0, 1)) = 0.02
        _PhaseG("Phase G (Mie)", Range(-1, 1)) = 0.8
        _ScatterColor("Scatter (uS)", Color) = (0.15, 0.20, 0.25, 1.0)
        _AbsorptionColor("Absorption (uA)", Color) = (0.35, 0.05, 0.02, 1.0)
        _Smoothness("Smoothness", Range(0, 1)) = 0.15

        [Header(Volumetrics)]
        _ExpFactor("EXP_FACTOR", Float) = 15.0
        _MaxRayLength("Max Ray Length", Float) = 50.0
        _DitherStrength("Dither", Range(0, 1)) = 0.05

        [Header(Waves)]
        _NoiseTex("Noise Texture", 2D) = "white" {}
        _WaveSpeed("Wave Speed", Float) = 1.0
        _WaveFrequency("Wave Frequency", Float) = 0.5
        _NoiseFrequency("Noise Frequency", Float) = 1.0
        _NoiseStrength("Noise Strength", Float) = 0.1
        _Iterations("Iterations", Int) = 4
        _NormalInfluence("Normal Influence", Range(0, 1)) = 0.5

        [Header(SSS and Backlit)]
        _SSSBoost("SSS Boost", Float) = 2.0
        _SSSPathScale("SSS Path Scale", Float) = 20.0
        _BacklitPathScale("Backlit Path Scale", Float) = 15.0
    }

    SubShader
    {
        Tags { "RenderType"="Transparent" "Queue"="Transparent" "RenderPipeline"="UniversalPipeline" }

        Pass
        {
            Tags { "LightMode" = "UniversalForward" }
            ZWrite Off
            Blend SrcAlpha OneMinusSrcAlpha

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE
            #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareDepthTexture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareOpaqueTexture.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/ImageBasedLighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/GlobalIllumination.hlsl"

            #define WATER_SAMPLE_COUNT 32

            CBUFFER_START(UnityPerMaterial)
                float4 _ScatterColor;
                float4 _AbsorptionColor;
                float _Fresnel0;
                float _PhaseG;
                float _ExpFactor;
                float _MaxRayLength;
                float _DitherStrength;
                float _WaveSpeed;
                float _WaveFrequency;
                float _NoiseFrequency;
                float _NoiseStrength;
                int _Iterations;
                float _NormalInfluence;
                float _SSSBoost;
                float _SSSPathScale;
                float _BacklitPathScale;
                float _Smoothness;
            CBUFFER_END

            TEXTURE2D(_NoiseTex); SAMPLER(sampler_NoiseTex);
            TEXTURE2D(_SSPR_ReflectionTexture); SAMPLER(sampler_SSPR_ReflectionTexture);
            
            // === 替换原有的 CubeMap，引入全局动态天空贴图 ===
            TEXTURE2D(_DynamicSkyMap); 
            SAMPLER(sampler_DynamicSkyMap);

            struct Attributes { float4 positionOS : POSITION; float2 uv : TEXCOORD0; };
            struct Varyings { float4 positionCS : SV_POSITION; float3 positionWS : TEXCOORD0; float2 uv : TEXCOORD1; };

            // === 新增：将 3D 方向向量转换为 2D 全景图 UV 的核心函数 ===
            float2 DirToEquirectangularUV(float3 dir) {
                // atan2 算出经度 (Phi) [-PI, PI]，asin 算出纬度 (Theta) [-PI/2, PI/2]
                float phi = atan2(dir.x, dir.z);
                float theta = asin(clamp(dir.y, -1.0, 1.0));
                // 映射到 [0, 1] UV 空间
                return float2(phi * 0.15915494309 + 0.5, theta * 0.31830988618 + 0.5); 
            }

            float get_spherical_fog(float view_dist, float start, float density) {
                return exp2(-density * max(view_dist - start, 0.0));
            }

            float get_border_fog(float view_dist, float max_distance) {
                float fog_ratio = clamp(view_dist / max_distance, 0.0, 1.0);
                float pow8 = fog_ratio * fog_ratio;
                pow8 *= pow8;                       
                pow8 *= pow8;
                return exp2(-8.0 * pow8);
            }

            float gerstner_wave(float2 coord, float2 wave_dir, float t, float noise) {
                float k = 6.283185; 
                float w = sqrt(9.8 * k);
                float x = w * t - k * (dot(wave_dir, coord) + noise);
                float s = sin(x) * 0.5 + 0.5;
                return s * s;
            }

            float get_water_height(float2 coord, float t) {
                float2 wave_dir = float2(0.866, 0.5); 
                float2x2 rot = float2x2(cos(2.39996), -sin(2.39996), sin(2.39996), cos(2.39996));
                float h = 0; float amp = 1.0; float freq = _WaveFrequency;
                for (int i = 0; i < _Iterations; i++) {
                    float n = SAMPLE_TEXTURE2D_LOD(_NoiseTex, sampler_NoiseTex, coord * _NoiseFrequency, 0).g;
                    h += gerstner_wave(coord * freq, wave_dir, t * _WaveSpeed, n * _NoiseStrength) * amp;
                    amp *= 0.5; freq *= 1.7; wave_dir = mul(rot, wave_dir);
                }
                return h;
            }

            float HenyeyPhase(float cosTheta, float g) {
                float g2 = g * g;
                float denom = 1.0 + g2 - 2.0 * g * cosTheta;
                return (1.0 - g2) * rcp(pow(abs(denom), 1.5)) * (1.0 / (4.0 * PI));
            }

            float3 CalculateScatterPhase(float cosTheta, float g) {
                float rayleigh = (1.0 + cosTheta * cosTheta) * (3.0 / (16.0 * PI));
                float mie = HenyeyPhase(cosTheta, g);
                return rayleigh * 0.05 + mie * 0.95;
            }

            float3 CalculateScatteredLight(float3 originLight, float3 uA, float3 uS, float d, float3 phase, out float3 transmittance) {
                float3 uT = uA + uS;
                transmittance = exp(-uT * d);
                float3 scatteringAlbedo = uS * rcp(max(uT, 0.0001));
                return originLight * (1.0 - transmittance) * scatteringAlbedo * phase;
            }

            Varyings vert(Attributes input) {
                Varyings output;
                output.positionWS = TransformObjectToWorld(input.positionOS.xyz);
                output.positionCS = TransformWorldToHClip(output.positionWS);
                output.uv = input.uv;
                return output;
            }

            half4 frag(Varyings input) : SV_Target {
                float3 V = normalize(GetCameraPositionWS() - input.positionWS);
                float2 screenUV = input.positionCS.xy / _ScreenParams.xy;
                
                float rawDepth = SampleSceneDepth(screenUV);
                float sceneZ = LinearEyeDepth(rawDepth, _ZBufferParams);
                float surfaceZ = LinearEyeDepth(input.positionCS.z, _ZBufferParams);
                float totalRayLength = min(_MaxRayLength, sceneZ - surfaceZ);
                float thickness = saturate(totalRayLength / _MaxRayLength);

                float step_size = 0.1;
                float2 worldUV = input.positionWS.xz;
                float w0 = get_water_height(worldUV, _Time.y);
                float w1 = get_water_height(worldUV + float2(step_size, 0), _Time.y);
                float w2 = get_water_height(worldUV + float2(0, step_size), _Time.y);
                float3 N = normalize(float3((w0 - w1) * _NormalInfluence, (w0 - w2) * _NormalInfluence, step_size));
                float3 worldTangent = float3(1, 0, 0);
                float3 worldBitangent = float3(0, 0, 1);
                float3 worldNormal = float3(0, 1, 0);
                float3x3 TBN = float3x3(worldTangent, worldBitangent, worldNormal);
                N = normalize(TransformTangentToWorld(N, TBN));
                N.xz *= smoothstep(0.0,_NormalInfluence,abs(dot(float3(0.0,1.0,0.0),-V)));

                Light mainLight = GetMainLight(TransformWorldToShadowCoord(input.positionWS));
                float3 L = mainLight.direction;
                float cosTheta = dot(-V, L);
                float3 uS = _ScatterColor.rgb; float3 uA = _AbsorptionColor.rgb; float3 uT = uS + uA;

                float rcpCount = 1.0 / float(WATER_SAMPLE_COUNT);
                float kDenom = 1.0 / (_ExpFactor - 1.0);
                float kDD = log(_ExpFactor) * rcpCount * kDenom;
                float expStep = pow(_ExpFactor, rcpCount);
                float dither = InterleavedGradientNoise(input.positionCS.xy, _Time.y % 1000) * _DitherStrength;
                float currentExp = pow(_ExpFactor, dither * rcpCount);

                float3 scatteredLight = 0;
                float3 accumTransmittance = 1.0;
                float lastShadow = 1.0;

                for (int i = 0; i < WATER_SAMPLE_COUNT; i++) {
                    float d = (currentExp - 1.0) * kDenom;
                    float dd = currentExp * kDD;
                    
                    float3 sampleWS = input.positionWS - V * (d * totalRayLength);
                    float4 shadowCoord = TransformWorldToShadowCoord(sampleWS);
                    float shadow = MainLightRealtimeShadow(shadowCoord);
                    if(i == 0) lastShadow = shadow;

                    float3 stepTrans;
                    float3 scatterPhase = CalculateScatterPhase(cosTheta, _PhaseG);
                    float3 effectivePhase = lerp(scatterPhase, float3(1,1,1)/(4.0*PI), saturate(Luminance(uS/uT) * 0.5));
                    float3 stepS = CalculateScatteredLight(mainLight.color * shadow, uA, uS, dd * totalRayLength, effectivePhase, stepTrans);
                    
                    scatteredLight += stepS * accumTransmittance;
                    accumTransmittance *= stepTrans;
                    currentExp *= expStep;
                }

                float G_entry = saturate(dot(N, L));
                float G_sss = 1.0 - G_entry;
                float G_backlit = saturate(-dot(N, L));
                float3 T_entry = 1.0 - F_Schlick(_Fresnel0, G_entry);
                
                float sssPath = thickness * _SSSPathScale;
                float3 sss_T;
                float3 S_sss = CalculateScatteredLight(mainLight.color, uA, uS, sssPath, CalculateScatterPhase(cosTheta, _PhaseG), sss_T);
                float3 thinLayerSSS = lerp(scatteredLight * G_sss, S_sss * G_sss * lastShadow * _SSSBoost, saturate(1.0 - Luminance(sss_T)));

                float backlitPath = thickness * _BacklitPathScale;
                float3 T_backlit = exp(-uT * backlitPath);
                float P_backlit = HenyeyPhase(dot(V, -L), 0.998);
                float3 backlitTrans = mainLight.color * G_backlit * T_backlit * P_backlit * lastShadow;

                float2 distortedUV = screenUV + N.xz * 0.02;
                float3 T_exit = 1.0 - F_Schlick(_Fresnel0, saturate(dot(N, V)));
                float3 sceneColor = SampleSceneColor(distortedUV);
                float3 sceneInScattering = sceneColor * accumTransmittance * uS * totalRayLength * Luminance(mainLight.color);

                float3 H = SafeNormalize(L + V);
                float NoH = saturate(dot(N, H));
                float LoH = saturate(dot(L, H));

                float perceptualRoughness = 1.0 - _Smoothness;
                float roughness = perceptualRoughness * perceptualRoughness;
                float roughness2 = max(roughness * roughness, 0.0078125); 

                float d_denom = NoH * NoH * (roughness2 - 1.0) + 1.00001;
                float D = roughness2 / (d_denom * d_denom);
                float specularTerm = D / (max(0.1, LoH * LoH) * (roughness * 4.0 + 2.0));
                specularTerm = clamp(specularTerm, 0.0, 1000.0);
                float3 directSpecular = specularTerm * mainLight.color * _Fresnel0;

                // === 间接高光 (Indirect Specular) 采样动态天空图 ===
                float3 R = reflect(-V, N);
                float4 ssprData = SAMPLE_TEXTURE2D(_SSPR_ReflectionTexture, sampler_SSPR_ReflectionTexture, distortedUV);
                
                float mip = PerceptualRoughnessToMipmapLevel(perceptualRoughness);
                // 转换 3D 反射向量到 2D 贴图 UV
                float2 envUV = DirToEquirectangularUV(R);
                // 采样我们的动态天空图 (因为我们烘焙时本身就是 HDR/Half，所以不需要再 DecodeHDR)
                float3 envReflection = SAMPLE_TEXTURE2D_LOD(_DynamicSkyMap, sampler_DynamicSkyMap, envUV, mip).rgb;
                
                float3 finalReflection;
                float reflectionMask = saturate(ssprData.a);
                finalReflection = lerp(envReflection, ssprData.rgb, reflectionMask);

                float F = F_Schlick(_Fresnel0, saturate(dot(N, V)));
                
                float3 finalColor = (G_entry * T_entry * scatteredLight + thinLayerSSS + backlitTrans) * T_exit 
                                  + (sceneColor * accumTransmittance) * T_exit + finalReflection * (1.0 - T_exit) + sceneInScattering + directSpecular;
                
                // === 远景雾 (Fog) 采样动态天空图 ===
                float view_dist = length(GetCameraPositionWS() - input.positionWS);
                float transmittance = get_border_fog(view_dist, 150.0);
                // 同样转换视线反方向到 UV (这里通常不需要模糊，所以 mip 直接设为 0)
                float2 fogUV = DirToEquirectangularUV(-V);
                float3 fogColor = SAMPLE_TEXTURE2D_LOD(_DynamicSkyMap, sampler_DynamicSkyMap, fogUV, 0).rgb;
                
                finalColor = lerp(fogColor, finalColor, transmittance);

                return half4(finalColor,1.0);
            }
            ENDHLSL
        }
    }
}