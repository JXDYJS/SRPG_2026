Shader "Skybox/PhysicsBased"
{
    Properties
    {
        [Header(LUTs)]
        [NoScaleOffset] _TransmittanceLUT ("Transmittance LUT", 2D) = "white" {}
        [NoScaleOffset] _MultiScatLUT ("MultiScattering LUT", 2D) = "black" {}
        [NoScaleOffset] _IrradianceLUT ("Irradiance LUT", 2D) = "black" {}
        
        [Header(Sun Settings)]
        _SunIntensity ("Sun Intensity", Float) = 1.0
        _SunColor ("Sun Color", Color) = (1.68, 1.85, 1.91, 1)
        
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
            float _MieG;
            float _UseLMS;
            float _CamHeight;
            float3 _GroundAlbedo;
            float _GroundIndirectIntensity;
            float _GroundDirectIntensity;
            int _Steps;
            
            float4 _LMS_Row1, _LMS_Row2, _LMS_Row3;

            static const float Re = 6360.0;
            static const float Ra = 6420.0;
            static const float Hr = 8.0;
            static const float Hm = 1.2;
            static const float3 betaR = float3(0.0058, 0.0135, 0.0331);
            static const float3 betaM = float3(0.004, 0.004, 0.004);
            static const float PI = 3.14159265359;

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

            // Bruneton UV 映射
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

            // Irradiance UV 映射 (简单线性映射，对应之前 Python 的生成逻辑)
            float2 GetIrradianceUV(float mu_s) {
                return float2((mu_s + 1.0) * 0.5, 0.5);
            }

            float3 SampleTransmittance(float r, float mu) {
                float2 uv = GetTransmittanceUV(r, mu);
                return tex2Dlod(_TransmittanceLUT, float4(uv, 0, 0)).rgb;
            }

            float3 SampleMultiScat(float r, float mu) {
                float2 uv = GetTransmittanceUV(r, mu); // MS 表通常复用 Transmittance 的映射
                return tex2Dlod(_MultiScatLUT, float4(uv, 0, 0)).rgb;
            }

            float3 SampleIrradiance(float r,float mu_s) {
                float2 uv = GetTransmittanceUV(r,mu_s);
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

            fixed4 frag (v2f i) : SV_Target
            {
                float3 viewDir = normalize(i.viewDir);
                float3 sunDir = _WorldSpaceLightPos0.xyz;

                float r = Re + max(_CamHeight, 0.001);
                float mu = viewDir.y; 
                float nu = dot(viewDir, sunDir);
                float mu_s_origin = sunDir.y;

                float2 hitAtmos = ray_sphere_intersect(float3(0, r, 0), viewDir, Ra);
                float dist = hitAtmos.y;

                float2 hitEarth = ray_sphere_intersect(float3(0, r, 0), viewDir, Re);
                bool hitGround = hitEarth.x > 0.0;
                
                if (hitGround) {
                    dist = min(dist, hitEarth.x); // 视线被地面截断
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
                    
                    // 1. 采样 T(Sun->P)
                    float mu_s_sample = dot(normalize(pos), sunDir);
                    float3 t_sun = SampleTransmittance(r_sample, mu_s_sample);
                    
                    // 2. 采样 Multi-Scattering (新增!)
                    // 注意：这里的 MS 也是各向同性的近似，直接加到散射系数里
                    float3 ms = SampleMultiScat(r_sample, mu_s_sample);
                    
                    // 3. 计算散射项 (Single + Multi)
                    // Single: T * Beta
                    // Multi:  MS * Beta / 4PI (近似各向同性)
                    float3 S_r = (t_sun * betaR * hr) + (ms * betaR * hr / (4.0 * PI));
                    float3 S_m = (t_sun * betaM * hm) + (ms * betaM * hm / (4.0 * PI));
                    
                    rayleighSum += S_r * transmittance * dx;
                    mieSum += S_m * transmittance * dx;
                    
                    transmittance *= exp(-stepOpticalDepth);
                }

                // Phase Function 只作用于 Single Scattering (这里简单地作用于总和，因为MS通常很弱且各向同性)
                // 更精确的做法是只对 Single 部分乘 Phase，对 MS 部分乘 1/(4PI)
                // 但 Bruneton 近似通常直接混合。为了保持风格，我们按 Python 逻辑乘上去。
                float3 rayleigh = rayleighSum * PhaseRayleigh(nu);
                float3 mie = mieSum * PhaseMie(nu, _MieG);

                float3 color = (rayleigh + mie) * _SunIntensity * _SunColor;

                // === 4. 地面反射 (Irradiance) ===
                if (hitGround) {
                    
                    // Indirect (Sky Light)
                    float3 E_indirect = SampleIrradiance(Re,mu_s_origin);
                    
                    // Direct (Sun Light)
                    // Direct = T(Sun->Ground) * SunIntensity * dot(N, L)
                    float3 T_sun_ground = SampleTransmittance(Re, mu_s_origin);
                    float3 E_direct = T_sun_ground * max(mu_s_origin, 0.0);
                    
                    float3 ground_radiance = (E_indirect * _GroundIndirectIntensity + E_direct * _GroundDirectIntensity) * _SunIntensity * _SunColor; //* _GroundAlbedo;
                    
                    color += ground_radiance * transmittance;
                }

                if (_UseLMS > 0.5) color = ApplyLMS(color);

                return float4(color, 1.0);
            }
            ENDCG
        }
    }
}