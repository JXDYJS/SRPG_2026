//
//https://www.shadertoy.com/view/MstBWs
//

Shader "Skybox/Fakeskybox"
{
    Properties
    {
        [Header(Sun Settings)]
        _SunIntensity ("Sun Intensity", Float) = 3.0
        [HDR]_SunColor ("Sun Color", Color) = (1, 1, 1, 1)
        
        [Header(Fake Atmosphere Settings)]
        _RayleighRed ("Rayleigh Red Coeff", Float) = 0.27
        _RayleighGreen ("Rayleigh Green Coeff", Float) = 0.50
        _RayleighBlue ("Rayleigh Blue Coeff", Float) = 1.00
        
        [Header(Ground Settings)]
        _GroundAlbedo ("Ground Albedo", Color) = (0.08, 0.08, 0.08, 1)
        
        [Header(Stylization LMS Matrix)]
        [Toggle] _UseLMS ("Use LMS Matrix", Float) = 1
        _LMS_Row1 ("LMS Red Weights", Vector) = (1.6858, -0.4624, -0.0069, 0)
        _LMS_Row2 ("LMS Green Weights", Vector) = (-0.0374, 1.0598, -0.0742, 0)
        _LMS_Row3 ("LMS Blue Weights", Vector) = (-0.0283, -0.1119, 1.0491, 0)

        [Header(Tonemapping)]
        [Toggle] _UseCustomTonemap ("Use Built-in Robobo1221 Tonemap", Float) = 1
        _Exposure ("Built-in Exposure", Float) = 0.5
    }

    CGINCLUDE
    #include "UnityCG.cginc"

    float _SunIntensity;
    float3 _SunColor;
    float _RayleighRed, _RayleighGreen, _RayleighBlue;
    float3 _GroundAlbedo;
    
    float _UseLMS;
    float4 _LMS_Row1, _LMS_Row2, _LMS_Row3;

    float _UseCustomTonemap;
    float _Exposure;

    #define d0(x) (abs(x) + 1e-8)

    float3 scatter(float3 coeff, float depth) { return coeff * depth; }
    float3 absorb(float3 coeff, float depth) { return exp2(scatter(coeff, -depth)); }

    float calcParticleThickness(float depth) {
        depth = depth * 2.0;
        depth = max(depth + 0.01, 0.01);
        depth = 1.0 / depth;
        return 100000.0 * depth;   
    }

    float rayleighPhase(float x) { return 0.375 * (1.0 + x * x); }
    float hgPhase(float x, float g) {
        float g2 = g * g;
        return 0.25 * ((1.0 - g2) * pow(1.0 + g2 - 2.0 * g * x, -1.5));
    }
    float miePhaseSky(float x, float depth) { return hgPhase(x, exp2(-0.000003 * depth)); }

    float3 ApplyLMS(float3 color) {
        float3x3 lms = float3x3(_LMS_Row1.xyz, _LMS_Row2.xyz, _LMS_Row3.xyz);
        return mul(lms, color);
    }

    float3 robobo1221Tonemap(float3 color) {
        float l = length(color);
        color = lerp(color, color * 0.5, l / (l + 1.0));
        return color / sqrt(color * color + 1.0);
    }

    float3 calcAtmosphericScatter(float3 sunDir, float3 viewDir) {
        const float ln2 = 0.69314718056; 
        
        float3 rayleighCoeff = float3(_RayleighRed, _RayleighGreen, _RayleighBlue) * 1e-5;
        float3 mieCoeff = float3(0.5e-6, 0.5e-6, 0.5e-6);
        float3 totalCoeff = rayleighCoeff + mieCoeff;

        float lDotW = dot(sunDir, viewDir);
        float lDotU = dot(sunDir, float3(0.0, 1.0, 0.0));
        float uDotW = max(dot(float3(0.0, 1.0, 0.0), viewDir), 0.0); 
        
        float opticalDepth = calcParticleThickness(uDotW);
        float opticalDepthLight = calcParticleThickness(lDotU);
        
        float3 scatterView = scatter(totalCoeff, opticalDepth);
        float3 absorbView = absorb(totalCoeff, opticalDepth);
        float3 scatterLight = scatter(totalCoeff, opticalDepthLight);
        float3 absorbLight = absorb(totalCoeff, opticalDepthLight);
        
        float3 absorbSun = abs(absorbLight - absorbView) / d0((scatterLight - scatterView) * ln2);
        
        float3 mieScatter = scatter(mieCoeff, opticalDepth) * miePhaseSky(lDotW, opticalDepth);
        float3 rayleighScatter = scatter(rayleighCoeff, opticalDepth) * rayleighPhase(lDotW);
        
        float3 scatterSun = mieScatter + rayleighScatter;
        float3 sunSpot = smoothstep(0.9999, 0.99993, lDotW) * absorbView * _SunIntensity;
        
        return (scatterSun * absorbSun + sunSpot) * _SunIntensity * _SunColor.rgb;
    }

    float3 GetFinalSkyColor(float3 viewDir, float3 sunDir) {
        float3 color = float3(0,0,0);
        if (viewDir.y < 0.0) {
            float NdotL = max(sunDir.y, 0.0);
            float3 directSun = _SunIntensity * _SunColor.rgb * NdotL;
            float3 ambientSky = calcAtmosphericScatter(sunDir, float3(0.0, 1.0, 0.0)) * 0.15;
            float3 groundRadiance = _GroundAlbedo * (directSun + ambientSky);
            
            float3 horizonSky = calcAtmosphericScatter(sunDir, normalize(float3(viewDir.x, 0.0, viewDir.z)));
            float fogFactor = exp2(viewDir.y * 15.0); 
            color = lerp(groundRadiance, horizonSky, fogFactor);
        } else {
            color = calcAtmosphericScatter(sunDir, viewDir);
        }

        if (_UseCustomTonemap > -0.5) color = robobo1221Tonemap(color * _Exposure);//这里存在问题todo 修复天空图绘制中颜色压缩不起作用
        if (_UseLMS > -0.5) color = ApplyLMS(color);
        
        return max(color, 0.0); 
    }
    ENDCG

    SubShader
    {
        Tags { "Queue"="Background" "RenderType"="Background" "PreviewType"="Skybox" }
        Cull Off ZWrite Off

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 3.0
            // === 核心：定义一个专门用于烘焙的编译宏 ===
            #pragma multi_compile _ BAKE_MODE

            struct appdata_t {
                float4 vertex : POSITION;
                float3 texcoord : TEXCOORD0;
            };
            struct v2f {
                float4 vertex : SV_POSITION;
                float3 texcoord : TEXCOORD0; // 用于传递视线或 UV
            };

            v2f vert (appdata_t v) {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.texcoord = v.texcoord; 
                return o;
            }

            fixed4 frag (v2f i) : SV_Target {
                float3 viewDir;
                
                #if BAKE_MODE
                    // 开启烘焙时，把传入的 2D 坐标（i.texcoord.xy）当作经纬度，映射为 3D 球面射线
                    float phi = i.texcoord.x * UNITY_TWO_PI;
                    float theta = (i.texcoord.y - 0.5) * UNITY_PI;
                    viewDir = float3(cos(theta) * sin(phi), sin(theta), cos(theta) * cos(phi));
                #else
                    // 正常天空盒渲染时，直接使用 3D 射线
                    viewDir = normalize(i.texcoord);
                #endif

                float3 sunDir = normalize(_WorldSpaceLightPos0.xyz);
                float3 color = GetFinalSkyColor(normalize(viewDir), sunDir);

                // === DEBUG: 左上角像素标记 tonemap 状态 ===
                // if (i.texcoord.x < 0.02 && i.texcoord.y < 0.02)
                // {
                //     if (_UseCustomTonemap > -0.5)
                //         color = float3(0, 10, 0); // 绿 = tonemap ON
                //     else
                //         color = float3(10, 0, 0); // 红 = tonemap OFF
                // }

                return float4(color, 1.0);
            }
            ENDCG
        }
    }
}