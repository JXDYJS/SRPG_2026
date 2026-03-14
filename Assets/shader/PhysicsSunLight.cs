using UnityEngine;

[ExecuteAlways]
[RequireComponent(typeof(Light))]
public class PhysicsSunLight : MonoBehaviour
{
    [Header("Day-Night Cycle (时间控制)")]
    [Tooltip("0=日出, 0.25=正午, 0.5=日落, 0.75=午夜")]
    [Range(0f, 1f)]
    public float sunAngle = 0.25f; 
    
    [Tooltip("太阳的偏航角(模拟季节/纬度，防止太阳永远只在头顶正上方)")]
    public float sunDeclination = 30f;

    [Header("Physics Rendering (物理渲染配置)")]
    public Material skyboxMaterial;
    public Texture2D transmittanceLUT; 

    // 绝对遵循 Shader 中的物理常量
    private const float Re = 6360.0f;
    private const float Ra = 6420.0f;
    private readonly Vector3 SOLAR_IRRADIANCE = new Vector3(1.68194f, 1.85149f, 1.91198f);

    private Light dirLight;

    void Start()
    {
        dirLight = GetComponent<Light>();
        if (skyboxMaterial == null) skyboxMaterial = RenderSettings.skybox;
    }

    void Update()
    {
        if (skyboxMaterial == null || transmittanceLUT == null || dirLight == null) return;

        // ==========================================
        // 1. 核心：根据太阳角主动更新平行光的旋转方向
        // ==========================================
        // sunAngle 映射: 0 -> 0度(日出), 0.25 -> 90度(正午), 0.5 -> 180度(日落)
        float pitch = sunAngle * 360f; 
        
        // 旋转平行光 (X轴控制白天黑夜的升降，Y轴控制纬度偏移)
        transform.rotation = Quaternion.Euler(pitch, sunDeclination, 0f);

        // ==========================================
        // 2. 获取真实的物理方向
        // ==========================================
        Vector3 sunDir = -transform.forward;
        float mu_s = sunDir.y;

        // 如果太阳在地平线以下（夜晚），关闭平行光并跳过后续计算
        if (mu_s < -0.05f) 
        {
            dirLight.intensity = 0;
            return;
        }

        // ==========================================
        // 3. 读取 Shader 参数并采样 LUT 计算颜色
        // ==========================================
        float camHeight = skyboxMaterial.GetFloat("_CamHeight");
        float sunIntensity = skyboxMaterial.GetFloat("_SunIntensity");
        Color sunColorParam = skyboxMaterial.GetColor("_SunColor");
        float useLMS = skyboxMaterial.GetFloat("_UseLMS");

        float r = Re + Mathf.Max(camHeight, 0.001f);
        Vector2 uv = GetTransmittanceUV(r, mu_s);
        
        // 从 LUT 中精准读取预计算的大气透射率
        Color lutColor = transmittanceLUT.GetPixelBilinear(uv.x, uv.y);
        Vector3 transmittance = new Vector3(lutColor.r, lutColor.g, lutColor.b);

        Vector3 finalColor = new Vector3(
            transmittance.x * SOLAR_IRRADIANCE.x * sunColorParam.r,
            transmittance.y * SOLAR_IRRADIANCE.y * sunColorParam.g,
            transmittance.z * SOLAR_IRRADIANCE.z * sunColorParam.b
        ) * sunIntensity;

        if (useLMS > 0.5f)
        {
            Vector4 r1 = skyboxMaterial.GetVector("_LMS_Row1");
            Vector4 r2 = skyboxMaterial.GetVector("_LMS_Row2");
            Vector4 r3 = skyboxMaterial.GetVector("_LMS_Row3");
            finalColor = new Vector3(
                r1.x * finalColor.x + r1.y * finalColor.y + r1.z * finalColor.z,
                r2.x * finalColor.x + r2.y * finalColor.y + r2.z * finalColor.z,
                r3.x * finalColor.x + r3.y * finalColor.y + r3.z * finalColor.z
            );
        }
        //finalColor = max(finalColor, 0.0f);

        // ==========================================
        // 4. 将算出的物理颜色赋给 Unity 平行光
        // ==========================================
        float maxLuminance = Mathf.Max(finalColor.x, Mathf.Max(finalColor.y, finalColor.z));
        if (maxLuminance > 0.0001f)
        {
            dirLight.color = new Color(finalColor.x / maxLuminance, finalColor.y / maxLuminance, finalColor.z / maxLuminance);
            dirLight.intensity = maxLuminance; 
        }
        else
        {
            dirLight.intensity = 0;
        }
    }

    private float SafeSqrt(float x) { return Mathf.Sqrt(Mathf.Max(x, 0.0f)); }
    
    private Vector2 GetTransmittanceUV(float r, float mu)
    {
        float H = Mathf.Sqrt(Ra * Ra - Re * Re);
        float rho = SafeSqrt(r * r - Re * Re);
        float d = -r * mu + SafeSqrt(r * r * (mu * mu - 1.0f) + Ra * Ra);
        float d_min = Ra - r;
        float d_max = rho + H;
        float u_mu = (d - d_min) / Mathf.Max(d_max - d_min, 0.00001f);
        float u_r = rho / H;
        return new Vector2(u_mu, u_r);
    }
}