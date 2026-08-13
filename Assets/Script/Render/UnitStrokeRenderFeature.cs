using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using GamePlay.Units;
using Global;

public class UnitStrokeRenderFeature : ScriptableRendererFeature
{
    static readonly int k_ObjColorTextureId = Shader.PropertyToID("_ObjColorTexture");

    /// <summary>供游戏逻辑直接调用：UnitStrokeRenderFeature.SetUnitColor(objID, color)</summary>
    public static UnitStrokeRenderFeature Instance { get; private set; }

    // objID(0..255) -> 单位。objID 同时写入 GBuffer G 通道（单位 renderer 的 _ObjectID MPB）
    static readonly Dictionary<int, MapUnit> s_UnitById = new Dictionary<int, MapUnit>();
    static int s_NextId = 1; // 0 保留给非单位（方块等）

    [System.Serializable]
    public class Settings
    {
        public Material Mat;
    }

    public Settings settings = new Settings();

    StrokePass m_ScriptablePass;
    Material m_RuntimeMat;
    Texture2D m_ObjColors;

    public Material CurrentMat => m_RuntimeMat;

    public override void Create()
    {
        EnsureRuntimeAssets();
        m_ScriptablePass = new StrokePass(this);
        // 依赖 GBufferRenderFeature 先执行（同为 BeforeRenderingPostProcessing，
        // 顺序由渲染器资产 m_RendererFeatures 列表序决定，GBuffer 在前）。调序前先确认。
        m_ScriptablePass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
        Instance = this;
    }

    /// <summary>
    /// 自动创建运行时材质（Custom/UnitStroke）与 256x1 单位颜色查色表。
    /// settings.Mat 可留空；若已指定，会拷贝一份实例使用，避免污染原始材质资产。
    /// </summary>
    void EnsureRuntimeAssets()
    {
        if (m_ObjColors == null)
        {
            m_ObjColors = new Texture2D(256, 1, TextureFormat.RGBA32, false)
            {
                name = "UnitObjColorTable",
                wrapMode = TextureWrapMode.Clamp,
                filterMode = FilterMode.Point,
            };
            var cols = new Color[256];
            for (int i = 0; i < cols.Length; i++) cols[i] = Color.white;
            m_ObjColors.SetPixels(cols);
            m_ObjColors.Apply(false);
        }

        if (m_RuntimeMat == null)
        {
            if (settings.Mat != null)
            {
                m_RuntimeMat = new Material(settings.Mat) { name = "UnitStrokeRuntime" };
            }
            else
            {
                var shader = Shader.Find("Custom/UnitStroke");
                if (shader == null) return;
                m_RuntimeMat = new Material(shader) { name = "UnitStrokeRuntime" };
            }
        }

        m_RuntimeMat.SetTexture(k_ObjColorTextureId, m_ObjColors);
    }

    /// <summary>设置某个 objID（GBuffer G 通道 1..255）对应的描边颜色</summary>
    public static void SetUnitColor(int objID, Color color)
    {
        Instance?.SetUnitColorInternal(objID, color);
    }

    void SetUnitColorInternal(int objID, Color color)
    {
        if (m_ObjColors == null) return;
        objID = Mathf.Clamp(objID, 0, 255);
        m_ObjColors.SetPixel(objID, 0, color);
        m_ObjColors.Apply(false);
    }

    // ==================== 单位 objID 注册 ====================

    /// <summary>
    /// 单位生成时调用：分配稳定 objID，并把 _ObjectID 写入所有 renderer 的 MaterialPropertyBlock，
    /// 使 GBuffer 的 G 通道记录该单位 id。返回分配的 objID（-1 表示失败）。
    /// </summary>
    public static int RegisterUnit(MapUnit unit)
    {
        if (unit == null) return -1;

        int id = s_NextId++;
        s_UnitById[id] = unit;

        var block = new MaterialPropertyBlock();
        block.SetInt("_ObjectID", id);
        foreach (Renderer r in unit.GetComponentsInChildren<Renderer>(true))
        {
            r.SetPropertyBlock(block);
        }

        Instance?.SetUnitColorInternal(id, Color.white);
        return id;
    }

    /// <summary>单位销毁/移除时调用，释放 objID 槽位</summary>
    public static void RemoveUnit(MapUnit unit)
    {
        if (unit == null || Instance == null) return;
        Instance.RemoveUnitInternal(unit);
    }

    void RemoveUnitInternal(MapUnit unit)
    {
        int key = -1;
        foreach (var kv in s_UnitById)
        {
            if (kv.Value == unit)
            {
                key = kv.Key;
                break;
            }
        }
        if (key >= 0) s_UnitById.Remove(key);
    }

    /// <summary>
    /// 按当前规则刷新整张颜色表：
    ///   非行动单位=白色；行动中 Player=绿 / Enemy=红 / 其他阵营(Neutral/Guard)=橙；死亡=透明(不描边)。
    /// 在 TurnManager.ActiveUnit 变化时调用。
    /// </summary>
    public static void RefreshColors()
    {
        Instance?.RefreshColorsInternal();
    }

    void RefreshColorsInternal()
    {
        if (m_ObjColors == null) return;

        MapUnit active = TurnManager.Instance != null ? TurnManager.Instance.ActiveUnit : null;

        foreach (var kv in s_UnitById)
        {
            MapUnit unit = kv.Value;
            Color c;
            if (unit == null || !unit.IsAlive)
            {
                c = new Color(0, 0, 0, 0); // 死亡：透明
            }
            else if (unit == active)
            {
                c = FactionColor(unit.Faction);
            }
            else
            {
                c = Color.white;
            }
            m_ObjColors.SetPixel(kv.Key, 0, c);
        }
        m_ObjColors.Apply(false);
    }

    static Color FactionColor(FactionType faction)
    {
        switch (faction)
        {
            case FactionType.Player: return Color.green;
            case FactionType.Enemy:  return Color.red;
            default:                 return new Color(1f, 0.55f, 0f); // Neutral/Guard 橙色
        }
    }

    class StrokePass : ScriptableRenderPass
    {
        UnitStrokeRenderFeature m_Feature;
        RTHandle m_SceneColor;

        public StrokePass(UnitStrokeRenderFeature feature)
        {
            m_Feature = feature;
            profilingSampler = new ProfilingSampler("UnitStrokePass");
        }

        public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
        {
            var desc = renderingData.cameraData.cameraTargetDescriptor;
            desc.depthBufferBits = 0;
            RenderingUtils.ReAllocateIfNeeded(ref m_SceneColor, desc, name: "UnitStrokeSceneColor");
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            var mat = m_Feature.CurrentMat;
            if (mat == null) return;

            var cmd = CommandBufferPool.Get("UnitStroke");
            using (new ProfilingScope(cmd, profilingSampler))
            {
                var source = renderingData.cameraData.renderer.cameraColorTargetHandle;

                // 1. 用描边材质把当前画面颜色处理后写入临时 RT
                //    Blitter 会把 source 绑定为 _BlitTexture（与项目 ApplyExposure 相同的已验证写法）
                Blitter.BlitCameraTexture(cmd, source, m_SceneColor, mat, 0);

                // 2. 拷回相机目标
                cmd.Blit(m_SceneColor, source);
            }
            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }

        public void Cleanup()
        {
            m_SceneColor?.Release();
        }
    }

    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        if (renderingData.cameraData.cameraType != CameraType.Game) return;
        renderer.EnqueuePass(m_ScriptablePass);
    }

    protected override void Dispose(bool disposing)
    {
        m_ScriptablePass?.Cleanup();
        Instance = null;
    }
}
