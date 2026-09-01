using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using UnityEditor;

namespace Render.EditorTools
{
    /// <summary>
    /// Per-frame sampling of CPU-side light/camera state while in Play Mode,
    /// printed as a one-line trace per frame so the IRC flicker debug can see
    /// whether light/camera inputs are frame-stable. Reads the URP shadow
    /// global uniforms where the CPU name table has them; anything not
    /// available is reported as "n/a".
    ///
    /// Run: "Voxel/Log Frame Inputs (Play Mode)" with the flicker scene in
    /// Play Mode. Reports <param cref="FrameCount"/> frames then stops.
    /// </summary>
    public static class IrradianceCacheInputLog
    {
        const int FrameCount = 30;

        static readonly int k_MainLightPositionId = Shader.PropertyToID("_MainLightPosition");
        static readonly int k_MainLightColorId = Shader.PropertyToID("_MainLightColor");
        static readonly int k_MainLightDirId = Shader.PropertyToID("_MainLightDir");
        static readonly int k_MainLightShadowmapTextureId = Shader.PropertyToID("_MainLightShadowmapTexture");
        static readonly int k_DynamicSkyMapId = Shader.PropertyToID("_DynamicSkyMap");

        static int s_frame;
        static float s_startTime;
        static Light s_main;
        static Camera s_cam;
        static UniversalRenderPipelineAsset s_asset;
        static bool s_allFramesLogged;
        static readonly List<string> s_trace = new List<string>();

        [MenuItem("Voxel/Log Frame Inputs (Play Mode)")]
        public static void Start()
        {
            if (!Application.isPlaying)
            {
                Debug.LogWarning("[IRCLog] enter Play Mode first.");
                return;
            }

            s_main = FindMainLight();
            s_cam = Camera.main;
            s_asset = GraphicsSettings.currentRenderPipeline as UniversalRenderPipelineAsset;
            s_frame = 0;
            s_allFramesLogged = false;
            s_trace.Clear();
            s_startTime = Time.realtimeSinceStartup;

            Debug.Log($"[IRCLog] started frames={FrameCount} mainLight={s_main != null} " +
                      $"camera={s_cam != null} asset={s_asset != null}");
            EditorApplication.update += OnEditorFrame;
        }

        /// <summary>
        /// GPU-side probe: dispatches the IRCProbe kernel in the bake compute
        /// (same cbuffer bindings as IRCBake), reads back the world->shadow
        /// matrix rows and the fixed-point shadow visibility, and diffs them
        /// across the frame trace. Any nonzero delta = shadow state is
        /// frame-variant, the EMA non-convergence condition.
        /// </summary>
        [MenuItem("Voxel/Probe Shadow Matrix (Play Mode)")]
        public static void ProbeShadowMatrix()
        {
            if (!Application.isPlaying)
            {
                Debug.LogWarning("[IRCLog] enter Play Mode first.");
                return;
            }
            var feature = IrradianceCacheFeature.Instance;
            if (feature == null || feature.BakeCS == null)
            {
                Debug.LogError("[IRCLog] IrradianceCacheFeature not ready. Abort.");
                return;
            }

            s_probeValues.Clear();
            s_frame = 0;
            s_allFramesLogged = false;
            Debug.Log("[IRCLog] shadow-matrix probe started (IPCProbe kernel)");
            EditorApplication.update += OnProbeFrame;
        }

        static readonly List<float[]> s_probeValues = new List<float[]>();
        static int s_probeKernel = -1;
        static GraphicsBuffer s_probeBuf;

        static void OnProbeFrame()
        {
            if (!Application.isPlaying || s_allFramesLogged)
            {
                EditorApplication.update -= OnProbeFrame;
                return;
            }
            if (s_frame == 0)
            {
                s_frame++;
                return;
            }

            var feature = IrradianceCacheFeature.Instance;
            if (feature == null || feature.BakeCS == null)
            {
                EditorApplication.update -= OnProbeFrame;
                return;
            }
            if (s_probeKernel < 0) s_probeKernel = feature.BakeCS.FindKernel("IRCProbe");
            if (s_probeBuf == null) s_probeBuf = new GraphicsBuffer(GraphicsBuffer.Target.Structured, 3, 16);

            var cb = new CommandBuffer();
            try
            {
                cb.SetComputeBufferParam(feature.BakeCS, s_probeKernel, "_IRCProbeOut", s_probeBuf);
                cb.DispatchCompute(feature.BakeCS, s_probeKernel, 1, 1, 1);
                Graphics.ExecuteCommandBuffer(cb);
            }
            finally
            {
                cb.Release();
            }

            var data = new float[12];
            s_probeBuf.GetData(data);
            s_probeValues.Add(data);
            Debug.Log($"[IRCLog] probe f={s_frame:00} " +
                      $"m00={data[0]:F5} m01={data[1]:F5} m02={data[2]:F5} m03={data[3]:F5} | " +
                      $"m10={data[4]:F5} m11={data[5]:F5} m12={data[6]:F5} m13={data[7]:F5} | " +
                      $"vis={data[8]:F5} sc=({data[9]:F5},{data[10]:F5},{data[11]:F5})");

            if (++s_frame >= FrameCount)
            {
                s_allFramesLogged = true;
                if (s_probeValues.Count > 1)
                {
                    float[] first = s_probeValues[0];
                    float maxDelta = 0f;
                    for (int i = 1; i < s_probeValues.Count; i++)
                    {
                        for (int j = 0; j < 12; j++)
                        {
                            maxDelta = Mathf.Max(maxDelta, Mathf.Abs(s_probeValues[i][j] - first[j]));
                        }
                    }
                    Debug.Log(maxDelta < 1e-5f
                        ? "[IRCLog] SHADOW MATRIX: frame-stable across all logged frames (max delta " + maxDelta + ")"
                        : "[IRCLog] SHADOW MATRIX VARIES across logged frames (max delta " + maxDelta + ") -> shadow state frame-variant");
                }
                EditorApplication.update -= OnProbeFrame;
            }
        }

        /// <summary>
        /// E-source probe: replays the IRCBake E computation for 4 fixed
        /// texels with a frozen rng seed, dumping (directSum, albedo.r,
        /// prevVal, Esum) per texel per frame. All four should be constant;
        /// any channel that varies names the drift source immediately.
        /// </summary>
        [MenuItem("Voxel/Probe E Decomposition (Play Mode)")]
        public static void ProbeEDecomposition()
        {
            if (!Application.isPlaying)
            {
                Debug.LogWarning("[IRCLog] enter Play Mode first.");
                return;
            }
            var feature = IrradianceCacheFeature.Instance;
            if (feature == null || feature.BakeCS == null)
            {
                Debug.LogError("[IRCLog] IrradianceCacheFeature not ready. Abort.");
                return;
            }

            s_eProbeValues.Clear();
            s_frame = 0;
            s_allFramesLogged = false;
            // Texel lattice: (4, 60, 4) mid-air near wall, (4, 20, 4) low air,
            // (12, 96, 12) sky-adjacent air, (30, 64, 30) far-side air.
            s_eProbeTexels = new Vector4(4f, 60f, 4f, 20f);
            Debug.Log("[IRCLog] E-decomposition probe started (IRCEProbe kernel)");
            EditorApplication.update += OnEProbeFrame;
        }

        static readonly List<float[]> s_eProbeValues = new List<float[]>();
        static int s_eProbeKernel = -1;
        static GraphicsBuffer s_eProbeBuf;
        static Vector4 s_eProbeTexels;

        static void OnEProbeFrame()
        {
            if (!Application.isPlaying || s_allFramesLogged)
            {
                EditorApplication.update -= OnEProbeFrame;
                return;
            }
            if (s_frame == 0)
            {
                s_frame++;
                return;
            }

            var feature = IrradianceCacheFeature.Instance;
            if (feature == null || feature.BakeCS == null)
            {
                EditorApplication.update -= OnEProbeFrame;
                return;
            }
            if (s_eProbeKernel < 0) s_eProbeKernel = feature.BakeCS.FindKernel("IRCEProbe");
            if (s_eProbeBuf == null) s_eProbeBuf = new GraphicsBuffer(GraphicsBuffer.Target.Structured, 4, 16);

            var cb = new CommandBuffer();
            try
            {
                cb.SetComputeTextureParam(feature.BakeCS, s_eProbeKernel, "_IRCCachePrev", feature.ReadCache);
                cb.SetComputeBufferParam(feature.BakeCS, s_eProbeKernel, "_IRCEProbeOut", s_eProbeBuf);
                cb.SetComputeBufferParam(feature.BakeCS, s_eProbeKernel, "_IRCEmissive", feature.EmissiveBuffer);
                cb.SetComputeFloatParam(feature.BakeCS, "_IrcSelfBounce", feature.settings.SelfBounce);
                cb.SetComputeVectorParam(feature.BakeCS, Shader.PropertyToID("_IRCEProbeTexels"), s_eProbeTexels);
                cb.DispatchCompute(feature.BakeCS, s_eProbeKernel, 1, 1, 1);
                Graphics.ExecuteCommandBuffer(cb);
            }
            finally
            {
                cb.Release();
            }

            var data = new float[16];
            s_eProbeBuf.GetData(data);
            s_eProbeValues.Add(data);
            Debug.Log($"[IRCLog] Eprobe f={s_frame:00} " +
                      $"T0(direct={data[0]:F4} alb={data[1]:F4} prev={data[2]:F4} E={data[3]:F4}) " +
                      $"T1(direct={data[4]:F4} alb={data[5]:F4} prev={data[6]:F4} E={data[7]:F4}) " +
                      $"T2(direct={data[8]:F4} alb={data[9]:F4} prev={data[10]:F4} E={data[11]:F4}) " +
                      $"T3(direct={data[12]:F4} alb={data[13]:F4} prev={data[14]:F4} E={data[15]:F4})");

            if (++s_frame >= FrameCount)
            {
                s_allFramesLogged = true;
                if (s_eProbeValues.Count > 1)
                {
                    float[] first = s_eProbeValues[0];
                    var span = new float[16];
                    for (int j = 0; j < 16; j++)
                    {
                        for (int i = 1; i < s_eProbeValues.Count; i++)
                        {
                            span[j] = Mathf.Max(span[j], Mathf.Abs(s_eProbeValues[i][j] - first[j]));
                        }
                    }
                    Debug.Log($"[IRCLog] E DECOMPOSITION SPAN across {s_eProbeValues.Count} frames: " +
                              $"T0(d={span[0]:F5} a={span[1]:F5} p={span[2]:F5} E={span[3]:F5}) " +
                              $"T1(d={span[4]:F5} a={span[5]:F5} p={span[6]:F5} E={span[7]:F5}) " +
                              $"T2(d={span[8]:F5} a={span[9]:F5} p={span[10]:F5} E={span[11]:F5}) " +
                              $"T3(d={span[12]:F5} a={span[13]:F5} p={span[14]:F5} E={span[15]:F5})");
                }
                EditorApplication.update -= OnEProbeFrame;
            }
        }

        static Light FindMainLight()
        {
            foreach (var l in Object.FindObjectsOfType<Light>())
            {
                if (l != null && l.type == LightType.Directional && l.isActiveAndEnabled && l.intensity > 0.01f)
                {
                    return l;
                }
            }
            return null;
        }

        static void OnEditorFrame()
        {
            if (!Application.isPlaying || s_allFramesLogged)
            {
                EditorApplication.update -= OnEditorFrame;
                return;
            }
            if (s_frame == 0)
            {
                // Skip the frame that triggered the menu: readbacks here reflect
                // URP shadow globals of the previous frame, not the current one.
                s_frame++;
                return;
            }

            var main = s_main;
            var cam = s_cam;
            string mainStat = main == null ? "null"
                : $"rot=({main.transform.rotation.eulerAngles.x:F2},{main.transform.rotation.eulerAngles.y:F2}," +
                  $"{main.transform.rotation.eulerAngles.z:F2}) pos=({main.transform.position.x:F3}," +
                  $"{main.transform.position.y:F3},{main.transform.position.z:F3}) " +
                  $"int={main.intensity:F4} col=({main.color.r:F4},{main.color.g:F4},{main.color.b:F4}) " +
                  $"shadowStrength={main.shadowStrength:F3} bias={main.shadowBias:F4} nBias={main.shadowNormalBias:F4}";

            string camStat = cam == null ? "n/a"
                : $"pos=({cam.transform.position.x:F3},{cam.transform.position.y:F3},{cam.transform.position.z:F3}) " +
                  $"rot=({cam.transform.rotation.eulerAngles.x:F2},{cam.transform.rotation.eulerAngles.y:F2}," +
                  $"{cam.transform.rotation.eulerAngles.z:F2}) fov={cam.fieldOfView:F2} aspect={cam.aspect:F4}";

            string assetStat = s_asset == null ? "n/a"
                : $"shadowDist={s_asset.shadowDistance:F2} cascades={s_asset.shadowCascadeCount} " +
                  $"supportsSoft={s_asset.supportsSoftShadows}";

            Vector4 mainPos;
            bool hasMainPos = TryGetGlobalVector(k_MainLightPositionId, out mainPos);
            Vector4 mainCol;
            bool hasMainCol = TryGetGlobalVector(k_MainLightColorId, out mainCol);
            Vector4 mainDir;
            bool hasMainDir = TryGetGlobalVector(k_MainLightDirId, out mainDir);
            Texture shadowTex = Shader.GetGlobalTexture(k_MainLightShadowmapTextureId);
            Texture skyTex = Shader.GetGlobalTexture(k_DynamicSkyMapId);

            string gpuStat =
                $"gMainPos={(hasMainPos ? $"({mainPos.x:F4},{mainPos.y:F4},{mainPos.z:F4},{mainPos.w:F4})" : "n/a")} " +
                $"gMainCol={(hasMainCol ? $"({mainCol.x:F4},{mainCol.y:F4},{mainCol.z:F4},{mainCol.w:F4})" : "n/a")} " +
                $"gMainDir={(hasMainDir ? $"({mainDir.x:F4},{mainDir.y:F4},{mainDir.z:F4},{mainDir.w:F4})" : "n/a")} " +
                $"shadowTex={(shadowTex != null ? shadowTex.name + "#" + shadowTex.GetInstanceID() : "null")} " +
                $"skyTex={(skyTex != null ? skyTex.name + "#" + skyTex.GetInstanceID() : "null")}";

            s_trace.Add($"[IRCLog] f={s_frame:00} t={Time.realtimeSinceStartup - s_startTime:F3} | {mainStat} | {camStat} | {assetStat} | {gpuStat}");
            Debug.Log(s_trace[s_trace.Count - 1]);

            if (++s_frame >= FrameCount)
            {
                s_allFramesLogged = true;
                DumpDiff();
                EditorApplication.update -= OnEditorFrame;
            }
        }

        static bool TryGetGlobalVector(int id, out Vector4 v)
        {
            try
            {
                v = Shader.GetGlobalVector(id);
                return true;
            }
            catch (System.Exception)
            {
                v = Vector4.zero;
                return false;
            }
        }

        /// <summary>
        /// Prints one row per scalar column with its min/max observed across the
        /// trace, so a column that wobbles jumps out at a glance. Rows with
        /// min == max are frame-stable.
        /// </summary>
        static void DumpDiff()
        {
            if (s_trace.Count < 2)
            {
                Debug.Log("[IRCLog] trace too short to diff. Fix parsing and re-run.");
                return;
            }

            var tokens = new HashSet<string>();
            foreach (string line in s_trace)
            {
                string body = line.Substring(line.IndexOf('|'));
                foreach (string tok in body.Split(new[] { ' ' }, System.StringSplitOptions.RemoveEmptyEntries))
                {
                    if (tok.Contains('=')) tokens.Add(tok.Substring(0, tok.IndexOf('=')));
                }
            }

            var colValues = new Dictionary<string, float>();
            var colMin = new Dictionary<string, float>();
            var colMax = new Dictionary<string, float>();
            var colCount = new Dictionary<string, int>();
            foreach (string line in s_trace)
            {
                string body = line.Substring(line.IndexOf('|'));
                foreach (string tok in body.Split(new[] { ' ' }, System.StringSplitOptions.RemoveEmptyEntries))
                {
                    int eq = tok.IndexOf('=');
                    if (eq < 0) continue;
                    string name = tok.Substring(0, eq);
                    // Only float-like values are diffed; parens/vec3 skip.
                    float val;
                    if (TryParseFirstFloat(tok.Substring(eq + 1), out val))
                    {
                        colCount[name] = colCount.TryGetValue(name, out var c) ? c + 1 : 1;
                        if (!colMin.TryGetValue(name, out var mn) || val < mn) colMin[name] = val;
                        if (!colMax.TryGetValue(name, out var mx) || val > mx) colMax[name] = val;
                    }
                }
            }

            var sb = new System.Text.StringBuilder("[IRCLog] input stability (per column, across logged frames):");
            foreach (string name in tokens)
            {
                if (colMin.TryGetValue(name, out var mn) && colMax.TryGetValue(name, out var mx))
                {
                    bool stable = Mathf.Abs(mx - mn) < 1e-4f;
                    sb.Append($"\n  {name}: [{(stable ? "STABLE" : "VARYING")}] min={mn:G5} max={mx:G5} span={mx - mn:G5}");
                }
            }
            Debug.Log(sb.ToString());
        }

        static bool TryParseFirstFloat(string s, out float v)
        {
            v = 0f;
            if (string.IsNullOrEmpty(s)) return false;
            // s may be "(0.1,0.2,..)" -> take the first number; vectors are
            // printed as "(x,y,z)" by the trace, so unwrap.
            string t = s.Trim('(', ')');
            int comma = t.IndexOf(',');
            string first = comma > 0 ? t.Substring(0, comma) : t;
            return float.TryParse(first, System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out v);
        }
    }
}
