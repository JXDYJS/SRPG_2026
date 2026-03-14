Shader "Skybox/PhysicsBased_Final"
{
    Properties
    {
        [Header(LUTs)]
        [NoScaleOffset] _TransmittanceLUT ("Transmittance LUT", 2D) = "white" {}
        [NoScaleOffset] _MultiScatLUT ("MultiScattering LUT", 2D) = "black" {}
        [NoScaleOffset] _IrradianceLUT ("Irradiance LUT", 2D) = "black" {}
        
        [Header(Sun Settings)]
        _SunIntensity ("Sun Intensity", Float) = 1.0
        [HDR]_SunColor ("Sun Color", Color) = (1,1,1, 1)
        
        [Header(Moon Settings)]
        _MoonIntensity ("Moon Intensity", Float) = 0.05
        _MoonColor ("Moon Color", Color) = (0.6, 0.7, 0.8, 1)
        
        [Header(Atmosphere Settings)]
        _MieG ("Mie G", Range(0, 0.999)) = 0.8
        _CamHeight ("Camera Height (km above ground)", Float) = 0.001 
        
        [Header(Ground Settings)]
        _GroundAlbedo ("Ground Albedo", Color) = (0.1, 0.1, 0.1, 1)
        _GroundIndirectIntensity ("Ground Indirect Intensity", Float) = 0.1
        _GroundDirectIntensity ("Ground Direct Intensity", Float) = 0.008
        
        [Header(Performance)]
        [IntRange] _Steps ("Raymarching Steps", Range(4, 64)) = 16
        
        [Header(Stylization LMS Matrix)]
        [Toggle] _UseLMS ("Use LMS Matrix", Float) = 1
        _LMS_Row1 ("LMS Red Weights", Vector) = (1.6858, -0.4624, -0.0069, 0)
        _LMS_Row2 ("LMS Green Weights", Vector) = (-0.0374, 1.0598, -0.0742, 0)
        _LMS_Row3 ("LMS Blue Weights", Vector) = (-0.0283, -0.1119, 1.0491, 0)
    }
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
            
            #include "UnityCG.cginc"

            static const float3 SOLAR_IRRADIANCE = float3(1.68194, 1.85149, 1.91198);
            static const float Re = 6360.0;
            static const float Ra = 6420.0;
            static const float Hr = 8.0;
            static const float Hm = 1.2;
            static const float3 betaR = float3(0.0058, 0.0135, 0.0331);
            static const float3 betaM = float3(0.004, 0.004, 0.004);
            static const float PI = 3.14159265359;

            struct appdata_t {
                float4 vertex : POSITION;
                float3 texcoord : TEXCOORD0;
            };

            struct v2f {
                float4 vertex : SV_POSITION;
                float3 viewDir : TEXCOORD0;
            };

            sampler2D _TransmittanceLUT;
            sampler2D _MultiScatLUT;
            sampler2D _IrradianceLUT;

            float _SunIntensity;
            float3 _SunColor;
            float _MoonIntensity;
            float3 _MoonColor;

            float _MieG;
            float _UseLMS;
            float _CamHeight;
            float3 _GroundAlbedo;
            float _GroundIndirectIntensity;
            float _GroundDirectIntensity;
            int _Steps;
            
            float4 _LMS_Row1, _LMS_Row2, _LMS_Row3;

            v2f vert (appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.viewDir = v.texcoord;
                return o;
            }

            float safe_sqrt(float x) { return sqrt(max(x, 0.0)); }

            float2 ray_sphere_intersect(float3 pos, float3 dir, float r) {
                float b = dot(pos, dir);
                float c = dot(pos, pos) - r * r;
                float d = b * b - c;
                if (d < 0.0) return float2(-1.0, -1.0);
                float sqrt_d = sqrt(d);
                return float2(-b - sqrt_d, -b + sqrt_d);
            }

            // Bruneton UV
            float2 GetTransmittanceUV(float r, float mu) {
                float H = sqrt(Ra * Ra - Re * Re);
                float rho = safe_sqrt(r * r - Re * Re);
                float d = -r * mu + safe_sqrt(r * r * (mu * mu - 1.0) + Ra * Ra);
                float d_min = Ra - r;
                float d_max = rho + H;
                float u_mu = (d - d_min) / max(d_max - d_min, 0.00001);
                float u_r = rho / H;
                return float2(u_mu, u_r);
            }

            float2 GetIrradianceUV(float r, float mu_s) {
                 // Irradiance LUT 根据高度 r 和 太阳天顶角 cosine mu_s 映射
                float u_mu_s = (mu_s + 0.2) / 1.2; // 简单的重映射，根据你的LUT生成逻辑可能需要调整
                return float2(u_mu_s, 0.5); 
            }

            float3 SampleTransmittance(float r, float mu) {
                float2 uv = GetTransmittanceUV(r, mu);
                return tex2Dlod(_TransmittanceLUT, float4(uv, 0, 0)).rgb;
            }

            float3 SampleMultiScat(float r, float mu) {
                float2 uv = GetTransmittanceUV(r, mu);
                return tex2Dlod(_MultiScatLUT, float4(uv, 0, 0)).rgb;
            }

            float3 SampleIrradiance(float r, float mu_s) {
                float2 uv = GetIrradianceUV(r, mu_s);
                return tex2Dlod(_IrradianceLUT, float4(uv, 0, 0)).rgb;
            }

            float PhaseRayleigh(float mu) {
                return 3.0 / (16.0 * PI) * (1.0 + mu * mu);
            }

            float PhaseMie(float mu, float g) {
                return 3.0 / (8.0 * PI) * ((1.0 - g * g) * (1.0 + mu * mu)) / ((2.0 + g * g) * pow(1.0 + g * g - 2.0 * g * mu, 1.5));
            }

            float3 ApplyLMS(float3 color) {
                float3x3 lms = float3x3(_LMS_Row1.xyz, _LMS_Row2.xyz, _LMS_Row3.xyz);
                return mul(lms, color);
            }

            // === 核心修复：解析法计算地平线遮挡 ===
            // 不再使用射线检测，而是计算当前高度的地平线夹角
            // 如果 mu_s < horizon_mu，说明太阳在地平线以下，被地球遮挡
            float GetShadow(float r, float mu_s) {
                // 地平线的 sin(theta) = Re / r
                // 地平线的 cos(theta) = -sqrt(1 - (Re/r)^2)
                // 注意是负的，因为地平线在下方
                float sin_horizon = Re / r;
                float mu_horizon = -safe_sqrt(1.0 - sin_horizon * sin_horizon);
                
                // 增加一点偏移量防止闪烁
                return mu_s > mu_horizon ? 1.0 : 0.0;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float3 viewDir = normalize(i.viewDir);
                
                // 1. 定义太阳和月亮方向
                float3 sunDir = normalize(_WorldSpaceLightPos0.xyz);
                float3 moonDir = -sunDir; // 月亮直接取反方向

                float r = Re + max(_CamHeight, 0.001);
                float mu = viewDir.y; 
                
                // 视线夹角
                float nu_sun = dot(viewDir, sunDir);
                float nu_moon = dot(viewDir, moonDir);

                float2 hitAtmos = ray_sphere_intersect(float3(0, r, 0), viewDir, Ra);
                float dist = hitAtmos.y;

                float2 hitEarth = ray_sphere_intersect(float3(0, r, 0), viewDir, Re);
                bool hitGround = hitEarth.x > 0.0;
                
                if (hitGround) {
                    dist = min(dist, hitEarth.x);
                }

                if (dist < 0.0) return float4(0,0,0,1);

                float dx = dist / _Steps;
                float3 rayleighSum = 0;
                float3 mieSum = 0;
                float3 transmittance = 1.0;

                UNITY_LOOP 
                for (int j = 0; j < _Steps; j++) {
                    float d = (j + 0.5) * dx;
                    float3 pos = float3(0, r, 0) + viewDir * d;
                    float r_sample = length(pos);
                    float h = r_sample - Re;
                    
                    if (h < 0.0) break;

                    float hr = exp(-h / Hr);
                    float hm = exp(-h / Hm);
                    float3 stepOpticalDepth = (betaR * hr + betaM * hm) * dx;
                    
                    // === 采样点上的局部坐标系 ===
                    float3 up = pos / r_sample;
                    float mu_s_sample = dot(sunDir, up);
                    float mu_m_sample = dot(moonDir, up);

                    // === 阴影计算 (关键修复) ===
                    // 使用解析法判断当前采样点是否能看到太阳/月亮
                    float sunVis = GetShadow(r_sample, mu_s_sample);
                    float moonVis = GetShadow(r_sample, mu_m_sample);

                    // 采样 Transmittance
                    float3 t_sun = SampleTransmittance(r_sample, mu_s_sample);
                    float3 t_moon = SampleTransmittance(r_sample, mu_m_sample);

                    // Multi-Scattering
                    float3 ms_sun = SampleMultiScat(r_sample, mu_s_sample);
                    float3 ms_moon = SampleMultiScat(r_sample, mu_m_sample);

                    // === 组合光照 (Sun + Moon) ===
                    // 只有当 Vis > 0 时才计算贡献，这解决了“白天黑影”和“晚上蓝天”的问题
                    
                    // 太阳贡献
                    float3 sunIn = (t_sun + ms_sun) * SOLAR_IRRADIANCE * _SunIntensity * _SunColor * sunVis;
                    
                    // 月亮贡献
                    float3 moonIn = (t_moon + ms_moon) * SOLAR_IRRADIANCE * _MoonIntensity * _MoonColor * moonVis;

                    // 分离计算散射 (Rayleigh & Mie)
                    float3 totalIn_R = sunIn * PhaseRayleigh(nu_sun) + moonIn * PhaseRayleigh(nu_moon);
                    float3 totalIn_M = sunIn * PhaseMie(nu_sun, _MieG) + moonIn * PhaseMie(nu_moon, _MieG);

                    rayleighSum += totalIn_R * betaR * hr * transmittance * dx;
                    mieSum += totalIn_M * betaM * hm * transmittance * dx;
                    
                    transmittance *= exp(-stepOpticalDepth);
                }

                float3 color = rayleighSum + mieSum;

                // ====================  Photon ====================
                // https://github.com/sixthsurge/photon
                float sun_angular_radius = 0.026; 
                float nu_sun_angle = acos(clamp(nu_sun, -1.0, 1.0));

                // 
                float dist_from_sun_center = max(nu_sun_angle - sun_angular_radius, 0.0);

                float sun_core = smoothstep(0.0, sun_angular_radius * 0.2, max(sun_angular_radius - nu_sun_angle, 0.0)); 

                // 极强光晕与耀斑 (模仿 Photon 代码中的 energy = 9000.1 高能散射)
                float sun_glow = exp(-150.0 * dist_from_sun_center);   
                float sun_flare = exp(-800.0 * dist_from_sun_center);  

                float sun_energy = (sun_core * 8.0) + (sun_glow * 2.0) + (sun_flare * 6.0);

                float3 cam_t_sun = SampleTransmittance(r, sunDir.y);
                float sunVisAtCam = GetShadow(r, sunDir.y);

                float3 sunDiskColor = cam_t_sun * SOLAR_IRRADIANCE * _SunIntensity * _SunColor * sun_energy;
                color += sunDiskColor * sunVisAtCam;

                float moon_angular_radius = 0.026; 
                float nu_moon_angle = acos(clamp(nu_moon, -1.0, 1.0));

                if (nu_moon_angle < moon_angular_radius)
                {
                    float dist = clamp((nu_moon_angle) / moon_angular_radius, 0.0, 1.0);
                    float edge_glow = pow(dist, 8.0); 
                    
                    float moon_energy = 2.0 * (1.0 + 2.0 * edge_glow);
                    
                    float3 cam_t_moon = SampleTransmittance(r, moonDir.y);
                    float moonVisAtCam = GetShadow(r, moonDir.y);
                    
                    float3 moonDiskColor = cam_t_moon * SOLAR_IRRADIANCE * _MoonIntensity * _MoonColor * moon_energy;
                    
                    color += moonDiskColor * moonVisAtCam;
                }

                // === 地面反射 ===
                if (hitGround) {
                    float3 groundPos = float3(0, r, 0) + viewDir * dist;
                    float3 groundNormal = normalize(groundPos);
                    
                    float mu_s_ground = dot(groundNormal, sunDir);
                    float mu_m_ground = dot(groundNormal, moonDir);

                    // 阴影遮挡
                    float sunVisGround = GetShadow(Re, mu_s_ground);
                    float moonVisGround = GetShadow(Re, mu_m_ground);

                    // 太阳直射 + 环境光
                    float3 sunDirect = SampleTransmittance(Re, mu_s_ground) * max(mu_s_ground, 0.0) * sunVisGround;
                    float3 sunAmbient = SampleIrradiance(Re, mu_s_ground); // 环境光通常不被自遮挡完全消除，这里简化处理
                    float3 sunLight = (sunDirect + sunAmbient) * SOLAR_IRRADIANCE * _SunIntensity * _SunColor;

                    // 月亮直射 + 环境光
                    float3 moonDirect = SampleTransmittance(Re, mu_m_ground) * max(mu_m_ground, 0.0) * moonVisGround;
                    float3 moonAmbient = SampleIrradiance(Re, mu_m_ground);
                    float3 moonLight = (moonDirect + moonAmbient) * SOLAR_IRRADIANCE * _MoonIntensity * _MoonColor;

                    float3 groundRadiance = (sunLight + moonLight) * (_GroundDirectIntensity / PI) * _GroundAlbedo;
                    
                    color += groundRadiance * transmittance;
                }

                if (_UseLMS > 0.5) color = ApplyLMS(color);
                
                return float4(color, 1.0);
            }
            ENDCG
        }
    }
}