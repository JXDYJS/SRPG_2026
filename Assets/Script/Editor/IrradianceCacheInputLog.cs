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
