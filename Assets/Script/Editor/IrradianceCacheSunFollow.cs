using UnityEngine;
using UnityEngine.Rendering;
using UnityEditor;

namespace Render.EditorTools
{
    /// <summary>
    /// Empirical check that BakeFrame mode actually follows animated sun:
    /// run in Play mode with a battle map loaded. The test enables
    /// BakeEveryFrame (PerFrameBlend=0.05), rotates the main light 45 degrees
    /// (via FakeSunLight.sunAngle when present, else the transform), waits 40
    /// frames, then compares the cache dump before/after. Prints the mean and
    /// max texel difference; near-zero diff means the cache is NOT following.
    /// Restores settings and re-bakes with the original sun after the test.
    /// </summary>
    public static class IrradianceCacheSunFollow
    {
        const int TrackFrames = 40;
        static IrradianceCacheFeature s_feature;
        static FakeSunLight s_fakeSun;
        static Light s_dirLight;
        static Quaternion s_origRot;
        static float s_origAngle;
        static float[] s_before;
        static float s_backupFrameBlend;
        static bool s_backupEveryFrame;

        [MenuItem("Voxel/Test Sun Follow (BakeFrame)")]
        public static void TestSunFollow()
        {
            Debug.Log("[IRCSun] started isPlaying=" + Application.isPlaying);
            if (!Application.isPlaying) return;
            s_feature = IrradianceCacheFeature.Instance;
            if (s_feature == null || s_feature.BakeCS == null || s_feature.ReadCache == null)
            {
                Debug.LogError("[IRCSun] IrradianceCacheFeature not ready.");
                return;
            }
            Debug.Log("[IRCSun] mapVolume=" + (VoxelGpuMap.Volume != null) +
                      " bakeEveryFrame(now)=" + s_feature.settings.BakeEveryFrame);
            if (VoxelGpuMap.Volume == null)
            {
                Debug.LogError("[IRCSun] no battle map loaded (VoxelGpuMap.Volume null); " +
                               "this test must run inside a battle scene with the map uploaded. Abort.");
                s_feature = null;
                return;
            }

            s_fakeSun = Object.FindObjectOfType<FakeSunLight>();
            if (s_fakeSun != null)
            {
                s_origAngle = s_fakeSun.sunAngle;
                s_fakeSun.sunAngle += 0.125f; // 45 degrees
                Debug.Log($"[IRCSun] rotated FakeSunLight sunAngle {s_origAngle:F3} -> {s_fakeSun.sunAngle:F3}");
            }
            else
            {
                var lights = Resources.FindObjectsOfTypeAll<Light>();
                foreach (var l in lights)
                {
                    if (l != null && l.type == LightType.Directional && l.isActiveAndEnabled && l.intensity > 0.01f)
                    {
                        s_dirLight = l;
                        break;
                    }
                }
                if (s_dirLight == null)
                {
                    Debug.LogError("[IRCSun] no directional light found; abort.");
                    s_feature = null;
                    return;
                }
                s_origRot = s_dirLight.transform.rotation;
                s_dirLight.transform.Rotate(0f, 45f, 0f);
                Debug.Log("[IRCSun] rotated directional light transform by 45 deg yaw");
            }

            // Snapshot before changing bake mode + sun (dump uses current cache).
            s_before = DumpCache(s_feature);

            s_backupEveryFrame = s_feature.settings.BakeEveryFrame;
            s_backupFrameBlend = s_feature.settings.PerFrameBlend;
            s_feature.settings.BakeEveryFrame = true;
            s_feature.settings.PerFrameBlend = 0.05f;

            WaitPlayFrames(TrackFrames, Finish);
        }

        static void Finish()
        {
            // Restore sun + settings, then rebake cleanly with the original state.
            if (s_fakeSun != null) s_fakeSun.sunAngle = s_origAngle;
            if (s_dirLight != null) s_dirLight.transform.rotation = s_origRot;
            s_feature.settings.BakeEveryFrame = s_backupEveryFrame;
            s_feature.settings.PerFrameBlend = s_backupFrameBlend;

            float[] after = DumpCache(s_feature);
            float sum = 0f, diffSum = 0f, maxDiff = 0f, diffuseOnly = 0f;
            int n = 0, changed = 0;
            for (int i = 0; i < s_before.Length && i < after.Length; i += 4)
            {
                float d = Mathf.Max(Mathf.Abs(s_before[i] - after[i]),
                                    Mathf.Abs(s_before[i + 1] - after[i + 1]),
                                    Mathf.Abs(s_before[i + 2] - after[i + 2]));
                sum += d;
                if (d > 0.01f)
                {
                    changed++;
                    diffuseOnly += d;
                }
                if (d > maxDiff) maxDiff = d;
                n++;
            }
            float meanDiff = sum / Mathf.Max(n, 1);
            float meanChanged = diffuseOnly / Mathf.Max(changed, 1);
            Debug.Log($"[IRCSun] tracksPerFrame=40 sunDelta=45deg result=meanDiff={meanDiff:F5} " +
                      $"changedTexels={changed}/{n} meanOfChanged={meanChanged:F4} maxDiff={maxDiff:F4} " +
                      $"{(meanDiff < 0.005f ? "CACHE NOT FOLLOWING" : "cache is following")}");

            // Leave the cache in the normal frozen state.
            var cb = new CommandBuffer();
            try
            {
                s_feature.ForceAlbedoOverride = Vector4.zero;
                s_feature.BakeOnce(cb);
                Graphics.ExecuteCommandBuffer(cb);
            }
            finally
            {
                cb.Release();
                Debug.Log("[IRCSun] restored frozen bake with original sun");
                s_feature = null;
                s_fakeSun = null;
                s_dirLight = null;
            }
        }

        static void WaitPlayFrames(int framesLeft, System.Action done)
        {
            void Handler()
            {
                if (--framesLeft <= 0)
                {
                    EditorApplication.update -= Handler;
                    done();
                }
            }
            EditorApplication.update += Handler;
        }

        static float[] DumpCache(IrradianceCacheFeature feature)
        {
            var cs = feature.BakeCS;
            int kernel = cs.FindKernel("IRCDump");
            int w = feature.CacheWidth, h = feature.CacheHeight, d = feature.LogicalCacheDepth;
            int count = w * h * d;
            using (var dump = new GraphicsBuffer(GraphicsBuffer.Target.Structured, count, 16))
            {
                var cb = new CommandBuffer();
                cb.SetComputeTextureParam(cs, kernel, "_IRCCacheRead", feature.ReadCache);
                cb.SetComputeBufferParam(cs, kernel, "_IRCDumpOut", dump);
                cb.SetComputeVectorParam(cs, Shader.PropertyToID("_IrcDumpSize"), new Vector4(w, h, d, 0f));
                cb.DispatchCompute(cs, kernel, (w + 7) / 8, (h + 7) / 8, (d + 7) / 8);
                Graphics.ExecuteCommandBuffer(cb);
                cb.Release();
                var data = new float[count * 4];
                dump.GetData(data);
                return data;
            }
        }
    }
}
