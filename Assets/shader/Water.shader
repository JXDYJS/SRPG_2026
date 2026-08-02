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

        [Header(Sun Glint)]
        _GlintSmoothness("Glint Smoothness (Sun Glint)", Range(0, 1)) = 0.65
        _SunAngularRadius("Sun Angular Radius (deg)", Range(0.1, 6.0)) = 2.0
        _GlintIntensity("Glint Intensity", Range(0, 8)) = 3.0

        [Header(Debug)]
        _DebugMode("Debug Mode (0=Off, 1-9)", Range(0, 9)) = 0

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
            // === 标准 PBR BRDF 库（labPBR 扩展：GGX NDF / Smith G2 / DirectBRDFSpecular_GGX）===
            // 必须在 URP Lighting.hlsl 之前 include：它复用 UNIVERSAL_BRDF_INCLUDED guard，
            // 先 include 才能让 URP 自带的 BRDF.hlsl 被跳过（与 CustomLit 管线同款做法）。
            #include "Assets/shader/pbr/CustomBRDF.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareDepthTexture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareOpaqueTexture.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/ImageBasedLighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/GlobalIllumination.hlsl"
            #include "Assets/shader/global.hlsl"

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
                float _GlintSmoothness;
                float _SunAngularRadius;
                float _GlintIntensity;
                float _DebugMode;
            CBUFFER_END

            float _WaterSurfaceHeight;

            TEXTURE2D(_NoiseTex); SAMPLER(sampler_NoiseTex);
            TEXTURE2D(_SSPR_ReflectionTexture); SAMPLER(sampler_SSPR_ReflectionTexture);
            
            // === 替换原有的 CubeMap，引入全局动态天空贴图 ===
            TEXTURE2D(_DynamicSkyMap); 
            SAMPLER(sampler_DynamicSkyMap);

            struct Attributes { float4 positionOS : POSITION; float2 uv : TEXCOORD0; };
            struct Varyings { float4 positionCS : SV_POSITION; float3 positionWS : TEXCOORD0; float2 uv : TEXCOORD1; };

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
                //return originLight * (1.0 - transmittance) * scatteringAlbedo * (phase + rcp(4*PI) * (uS / uT));
                return originLight * (1.0 - transmittance) * scatteringAlbedo * (phase);
            }

            // === HZD 球形面光源近似（Horizon: Zero Dawn），Photon 移植 ===
            // 已弃用：Newton 迭代在特定几何下存在跳变/NaN，会被锐利 NDF 放大成"擦除线"，
            // 现改在 frag 内用"点光源 NoH² + 软太阳盘 smoothstep 平顶"替代（处处连续）。
            // 保留本函数仅供比对/回退。
            float get_NoH_squared(float NoL, float NoV, float LoV, float light_radius) {
                float radius_cos = cos(light_radius);
                float radius_tan = tan(light_radius);

                // 反射方向已落在太阳圆盘内，直接取峰值
                float RoL = 2.0 * NoL * NoV - LoV;
                if (RoL >= radius_cos) {
                    return 1.0;
                }

                float r_over_length_t
                    = radius_cos * radius_tan * rcp(sqrt(max(1.0 - RoL * RoL, 1e-6)));
                float not_r = r_over_length_t * (NoV - RoL * NoL);
                float vot_r = r_over_length_t * (2.0 * NoV * NoV - 1.0 - RoL * LoV);

                float triple = sqrt(clamp01(
                    1.0 - NoL * NoL - NoV * NoV - LoV * LoV + 2.0 * NoL * NoV * LoV
                ));

                // 做一次 Newton 迭代修正弯曲的光方向
                float NoB_r = r_over_length_t * triple;
                float VoB_r = r_over_length_t * (2.0 * triple * NoV);
                float NoL_vt_r = NoL * radius_cos + NoV + not_r;
                float LoV_vt_r = LoV * radius_cos + 1.0 + vot_r;
                float p = NoB_r * LoV_vt_r;
                float q = NoL_vt_r * LoV_vt_r;
                float s = VoB_r * NoL_vt_r;
                float x_num = q * (-0.5 * p + 0.25 * VoB_r * NoL_vt_r);
                float x_denom = p * p + s * (s - 2.0 * p)
                              + NoL_vt_r * ((NoL * radius_cos + NoV) * LoV_vt_r * LoV_vt_r
                                             + q * (-0.5 * (LoV_vt_r + LoV * radius_cos) - 0.5));
                // 除零防护：Newton 修正量在退化几何下可能 0/0 → inf/NaN，钳制为 0（退化为未迭代值）
                float newton_denom = x_denom * x_denom + x_num * x_num;
                float two_x_1 = newton_denom > 1e-8 ? 2.0 * x_num / newton_denom : 0.0;
                float sin_theta = two_x_1 * x_denom;
                float cos_theta = 1.0 - two_x_1 * x_num;
                // 用修正后的 T 更新 not_r / vot_r
                not_r = cos_theta * not_r + sin_theta * NoB_r;
                vot_r = cos_theta * vot_r + sin_theta * VoB_r;

                // 基于弯曲后的光方向计算 (N.H)^2
                float new_NoL = NoL * radius_cos + not_r;
                float new_LoV = LoV * radius_cos + vot_r;
                float NoH = NoV + new_NoL;
                float HoH = 2.0 * new_LoV + 2.0;

                float NoH_sq = NoH * NoH / HoH;
                // NaN 兜底：任何退化几何都不允许泄漏 NaN，避免高光被硬擦除
                return clamp01(isfinite(NoH_sq) ? NoH_sq : 0.0);
            }

            Varyings vert(Attributes input) {
                Varyings output;
                output.positionWS = TransformObjectToWorld(input.positionOS.xyz);
                output.positionCS = TransformWorldToHClip(output.positionWS);
                output.uv = input.uv;
                return output;
            }

            half4 frag(Varyings input) : SV_Target {
                const float maxDistance = 64.0f;
                float3 V = normalize(GetCameraPositionWS() - input.positionWS);
                float2 screenUV = input.positionCS.xy / _ScreenParams.xy;
                float view_dist = length(GetCameraPositionWS() - input.positionWS);
                
                float rawDepth = SampleSceneDepth(screenUV);
                float sceneZ = LinearEyeDepth(rawDepth, _ZBufferParams);
                float surfaceZ = LinearEyeDepth(input.positionCS.z, _ZBufferParams);
                float totalRayLength = min(_MaxRayLength, sceneZ - surfaceZ);
                bool hasBackScene = sceneZ - surfaceZ <= 2 * _MaxRayLength && rawDepth > 1e-5;
                float distanceToBackScene = hasBackScene ? sceneZ - surfaceZ : 1e5;
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
                N.xz *= linear_step(maxDistance,maxDistance * 0.5,view_dist);
                N = normalize(N);
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
                float3 sceneInScattering = 0.0.xxx;
                float2 distortedUV = screenUV + N.xz * 0.02;
                float3 sceneColor = SampleSceneColor(distortedUV);

                float3 scatteredLight = 0;
                float3 accumTransmittance = 1.0;
                float3 lastLightTransmittance = 1.0;
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
                    float  distanceToLight = max(((_WaterSurfaceHeight - sampleWS.y) / max(L.y,0.001)),0.001 );
                    float3 LightTransmittance = exp(-uT * distanceToLight);
                    if(i == WATER_SAMPLE_COUNT - 1) lastLightTransmittance = LightTransmittance; 
                    float3 stepS = CalculateScatteredLight(mainLight.color * shadow * LightTransmittance, uA, uS, dd * totalRayLength, effectivePhase, stepTrans);
                    
                    scatteredLight += stepS * accumTransmittance;
                    accumTransmittance *= stepTrans;
                    sceneInScattering += sceneColor * LightTransmittance * uS * (dd * totalRayLength) * CalculateScatterPhase(1, _PhaseG) * exp(-uT * distanceToBackScene);
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

                float3 T_exit = 1.0 - F_Schlick(_Fresnel0, saturate(dot(N, V)));
                //sceneInScattering = sceneColor * accumTransmittance * uS * totalRayLength * Luminance(mainLight.color);

                // === PBR 直接高光（标准 GGX Cook-Torrance，复用 CustomBRDF.hlsl）===
                // 原实现：手写 Minimalist Cook-Torrance（URP 近似 D/(LoH^2*(roughness*4+2))），
                // 且只乘 mainLight.color，缺 NdotL 与阴影衰减。以下保留供比对/回退。
                // float3 H = SafeNormalize(L + V);
                // float NoH = saturate(dot(N, H));
                // float LoH = saturate(dot(L, H));

                float perceptualRoughness = 1.0 - _Smoothness;
                // float roughness = perceptualRoughness * perceptualRoughness;
                // float roughness2 = max(roughness * roughness, 0.0078125); 

                // float d_denom = NoH * NoH * (roughness2 - 1.0) + 1.00001;
                // float D = roughness2 / (d_denom * d_denom);
                // float specularTerm = D / (max(0.1, LoH * LoH) * (roughness * 4.0 + 2.0));
                // specularTerm = clamp(specularTerm, 0.0, 1000.0);
                // float3 directSpecular = specularTerm * mainLight.color * F_Schlick(_Fresnel0, saturate(dot(H, V)));
                // float3 directSpecular = specularTerm * mainLight.color * _Fresnel0;

                // 双瓣高光（参考 Photon 水面）：specular = _Fresnel0（水的电介质 F0 ≈ 0.02）。
                // 1) 宽光瓣 sheen：_Smoothness 控制，整片水面偏亮的湿润泛光。
                // 2) 亮斑瓣 glint：_GlintSmoothness（高光滑）控制锐度，_SunAngularRadius 面光源太阳
                //    给光斑物理尺寸（不是点），GGX NDF 分布决定高光范围。
                // 函数复用 CustomBRDF.hlsl：InitializeBRDFData / DirectBRDFSpecular_GGX / NDF / v2_smith_ggx / fresnelSchlick。
                half alpha = 1.0h;
                BRDFData sheenBRDF;
                InitializeBRDFData(half3(0.0, 0.0, 0.0), 0.0h, half3(_Fresnel0, _Fresnel0, _Fresnel0), _Smoothness, alpha, sheenBRDF);

                BRDFData glintBRDF;
                InitializeBRDFData(half3(0.0, 0.0, 0.0), 0.0h, half3(_Fresnel0, _Fresnel0, _Fresnel0), _GlintSmoothness, alpha, glintBRDF);

                float NoL = saturate(dot(N, L));
                float NoV = abs(dot(N, V)) + HALF_MIN;
                float3 H = SafeNormalize(L + V);
                float LoH = saturate(dot(L, H));
                float LoV = saturate(dot(L, V));

                // 宽光瓣：标准 GGX Cook-Torrance（直接复用上轮移植的 DirectBRDFSpecular_GGX）
                half3 outFresnel;
                float3 sheen = DirectBRDFSpecular_GGX(sheenBRDF, N, L, V, outFresnel)
                             * mainLight.color * NoL * mainLight.shadowAttenuation;

                // 亮斑瓣：纯点光源 NoH²（平滑、无平顶/硬边，彻底消除盘边跳变）。
                // HZD 与软盘平顶方案都会引入可感知的硬边，太阳盘一移动就像"擦除线"。
                // 光斑尺寸完全由 NDF(_GlintSmoothness) 控制。
                float NoH_sq = saturate((NoL + NoV) * (NoL + NoV) / max(2.0 * LoV + 2.0, 1e-4));
                float glintD = NDF(glintBRDF.roughness, sqrt(NoH_sq));
                float glintG = v2_smith_ggx(max(NoL, 1e-4), max(NoV, 1e-4), glintBRDF.roughness2);
                float3 glintF = fresnelSchlick(glintBRDF.specular, 1.0h, LoH);
                float3 glint = NoL * glintD * glintG * glintF
                             * mainLight.color * mainLight.shadowAttenuation * _GlintIntensity;
                glint = min(glint, 4.0); // 防 bloom 过载（同 Photon specular_max_value）

                float3 directSpecular = sheen + glint;

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
                
                // === 修复双重 Fresnel ===
                // 环境反射仍按 Fresnel(NoV) 加权；(1.0 - T_exit) 只作用于环境反射；
                // 直接高光（sheen + glint）内部已含 Fresnel(LoH)，不再额外乘 (1.0 - T_exit)，
                // 避免 F0=0.02 时被双重衰减到几乎不可见（与 Photon/URP 一致，只加一次）。
                float3 finalColor = (G_entry * T_entry * scatteredLight + thinLayerSSS + backlitTrans + sceneInScattering + sceneColor * accumTransmittance * lastLightTransmittance) * T_exit 
                                  + finalReflection * (1.0 - T_exit)
                                  + directSpecular;
                
                // === 远景雾 (Fog) 采样动态天空图 ===
                float transmittance = get_border_fog(view_dist, 150.0);
                // 同样转换视线反方向到 UV (这里通常不需要模糊，所以 mip 直接设为 0)
                float3 fogDir = -V;
                
                //fogDir.y = abs(fogDir.y); 
                fogDir = normalize(fogDir);
                float phi = atan2(fogDir.x, fogDir.z);
                float theta = asin(clamp(fogDir.y, -1.0, 1.0));

                float2 fogUV = float2(phi * 0.15915494309, theta * 0.31830988618 + 0.5);
                float3 fogColor = SAMPLE_TEXTURE2D_LOD(_DynamicSkyMap, sampler_DynamicSkyMap, fogUV, 0).rgb;
                
                finalColor = lerp(fogColor, finalColor, transmittance);
                //finalColor = transmittance;
                //finalColor = hasBackScene ? float3(1.0,1.0,1.0) : float3(0.0,0.0,0.0);
                //finalColor = sceneInScattering;
                //finalColor = directSpecular;
                //finalColor = T_exit;

                // === DEBUG: 检视面板把 _DebugMode 切到 1-9，逐个隔离排查哪一项带"擦除线" ===
                if (_DebugMode == 1) {
                    // R=GlintIntensity  G=GlintSmoothness  B=SunAngularRadius/6
                    finalColor = float3(_GlintIntensity, _GlintSmoothness, _SunAngularRadius / 6.0);
                } else if (_DebugMode == 2) {
                    // R=NoL  G=NoH_sq  B=glintF 亮度
                    finalColor = float3(NoL, NoH_sq, Luminance(glintF));
                } else if (_DebugMode == 3) {
                    // R=glintD*1e4  G=glintG(Smith)  B=shadowAttenuation
                    finalColor = float3(glintD * 1e4, glintG, mainLight.shadowAttenuation);
                } else if (_DebugMode == 4) {
                    // 最终 glint 放大 10 倍
                    finalColor = glint * 10.0;
                } else if (_DebugMode == 5) {
                    // 主光颜色
                    finalColor = mainLight.color;
                } else if (_DebugMode == 6) {
                    // glint 去掉 shadowAttenuation（×10）：若此模式下"擦除线"消失 → 是阴影造成
                    finalColor = min(NoL * glintD * glintG * glintF * mainLight.color * _GlintIntensity, 4.0) * 10.0;
                } else if (_DebugMode == 7) {
                    // shadowAttenuation 灰度：看"擦除线"是否正好是阴影边界
                    finalColor = mainLight.shadowAttenuation.xxx;
                } else if (_DebugMode == 8) {
                    // sheen 宽光瓣 ×10
                    finalColor = sheen * 10.0;
                } else if (_DebugMode == 9) {
                    // 环境反射（动态天空图）
                    finalColor = envReflection;
                }
                return half4(finalColor,1.0);
            }
            ENDHLSL
        }
    }
}