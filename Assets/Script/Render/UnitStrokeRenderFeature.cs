using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using GamePlay.Units;
using Global;
using Render;

public class UnitStrokeRenderFeature : ScriptableRendererFeature
{
    static readonly int k_ObjColorTextureId = Shader.PropertyToID("_ObjColorTexture");

    public static UnitStrokeRenderFeature Instance { get; private set; }

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
        // Depends on GBufferRenderFeature running first (same pass event; order set by renderer feature list).
        m_ScriptablePass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
        Instance = this;
    }

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

    /// <summary>Sets the outline color for an objID (GBuffer G channel 1..255).</summary>
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


    /// <summary>Registers a unit, assigning a stable objID written to its renderers' MPBs. Returns the objID (-1 on failure).</summary>
    public static int RegisterUnit(MapUnit unit)
    {
        int id = UnitObjectIdRegistry.Register(unit);
        if (id >= 0)
        {
            Instance?.SetUnitColorInternal(id, Color.white);
        }
        return id;
    }

    /// <summary>Releases a unit's objID slot.</summary>
    public static void RemoveUnit(MapUnit unit)
    {
        UnitObjectIdRegistry.Release(unit);
    }

    /// <summary>Refreshes the color table for the current active unit (white otherwise; transparent when dead).</summary>
    public static void RefreshColors()
    {
        Instance?.RefreshColorsInternal();
    }

    void RefreshColorsInternal()
    {
        if (m_ObjColors == null) return;

        MapUnit active = TurnManager.Instance != null ? TurnManager.Instance.ActiveUnit : null;

        foreach (int id in UnitObjectIdRegistry.ActiveIds)
        {
            if (!UnitObjectIdRegistry.TryGetUnit(id, out MapUnit unit)) continue;
            Color c;
            if (unit == null || !unit.IsAlive)
            {
                c = new Color(0, 0, 0, 0); // Dead: transparent
            }
            else if (unit == active)
            {
                c = FactionColor(unit.Faction);
            }
            else
            {
                c = Color.white;
            }
            m_ObjColors.SetPixel(id, 0, c);
        }
        m_ObjColors.Apply(false);
    }

    static Color FactionColor(FactionType faction)
    {
        switch (faction)
        {
            case FactionType.Player: return Color.green;
            case FactionType.Enemy:  return Color.red;
            default:                 return new Color(1f, 0.55f, 0f); // Neutral/Guard orange
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

                Blitter.BlitCameraTexture(cmd, source, m_SceneColor, mat, 0);

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
