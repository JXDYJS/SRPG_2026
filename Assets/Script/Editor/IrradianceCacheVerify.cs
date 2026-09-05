using UnityEngine;
using UnityEngine.Rendering;
using UnityEditor;

namespace Render.EditorTools
{
    /// <summary>
    /// Result-level verification for the irradiance cache bake, run in Play
    /// mode on the live battle map ("Voxel/Verify IRC Albedo Linearity").
    /// Fully synchronous: the menu submits both albedo-overridden bakes and
    /// reads the cache back without any frame/delayCall dependency.
    ///
    /// Idea: the bake RNG seed depends only on (texel, round), never on
    /// albedo, and a black-override bake (albedo = 0) extracts the pure
    /// non-albedo components (sky/water) per texel. With three overrides
    /// (white, magenta (1,0,1), black) the following must hold PER TEXEL,
    /// independent of whatever the light colors actually are:
    ///   white   - black = (Xr, Xg, Xb)
    ///   magenta - black = (Xr, 0, Xb)
    /// Passing proves every cache color (browns, greens, ...) is exactly
    /// albedo-driven from the baked face tiles — not a sample/coordinate
    /// bug. Violations report the texel position for map inspection.
    /// </summary>
    public static class IrradianceCacheVerify
    {
        [MenuItem("Voxel/Verify IRC Albedo Linearity (Play Mode)")]
        public static void VerifyLinearity()
        {
            Debug.Log("[IRCVerify] started, isPlaying=" + Application.isPlaying +
                      " feature=" + (IrradianceCacheFeature.Instance != null));
            if (!Application.isPlaying)
            {
                Debug.LogWarning("[IRCVerify] enter Play Mode first (the bake runs inside the renderer pass).");
                return;
            }
            var feature = IrradianceCacheFeature.Instance;
            if (feature == null || feature.BakeCS == null || feature.ReadCache == null)
            {
                Debug.LogError("[IRCVerify] IrradianceCacheFeature not ready (compute assigned? renderer active?). Abort.");
                return;
            }

            Vector4 oldOverride = feature.ForceAlbedoOverride;
            try
            {
                Debug.Log("[IRCVerify] bake forcedAlbedo=(1,1,1)...");
                feature.ForceAlbedoOverride = new Vector4(1f, 1f, 1f, 1f);
                float[] white = BakeAndDump(feature);
                Debug.Log("[IRCVerify] bake forcedAlbedo=(1,0,1) magenta...");
                feature.ForceAlbedoOverride = new Vector4(1f, 1f, 0f, 1f); // .yzw = (1,0,1)
                float[] magenta = BakeAndDump(feature);
                Debug.Log("[IRCVerify] bake forcedAlbedo=(0,0,0) black (control: block contribution must vanish)...");
                feature.ForceAlbedoOverride = new Vector4(1f, 0f, 0f, 0f);
                float[] black = BakeAndDump(feature);
                AnalyzeAndReport(feature, white, magenta, black);
            }
            catch (System.Exception e)
            {
                Debug.LogError("[IRCVerify] failed: " + e);
            }
            finally
            {
                // Restore the real albedo bake immediately: the last override
                // bake left the cache in a synthetic state.
                feature.ForceAlbedoOverride = oldOverride;
                Debug.Log("[IRCVerify] restoring normal albedo bake...");
                var cb = new CommandBuffer();
                try
                {
                    feature.BakeOnce(cb);
                    Graphics.ExecuteCommandBuffer(cb);
                }
                finally
                {
                    cb.Release();
                }
            }
        }

        static float[] BakeAndDump(IrradianceCacheFeature feature)
        {
            var cb = new CommandBuffer();
            try
            {
                feature.BakeOnce(cb);
                Graphics.ExecuteCommandBuffer(cb);
            }
            finally
            {
                cb.Release();
            }
            return DumpCache(feature);
        }

        /// <summary>Reads the whole published cache via IRCDump into a flat RGBA float array.</summary>
        static float[] DumpCache(IrradianceCacheFeature feature)
        {
            var cs = feature.BakeCS;
            int k = cs.FindKernel("IRCDump");
            int w = feature.CacheWidth, h = feature.CacheHeight, d = feature.LogicalCacheDepth;
            int count = w * h * d;

            using (var dump = new GraphicsBuffer(GraphicsBuffer.Target.Structured, count, 16))
            {
                var cb = new CommandBuffer();
                try
                {
                    cb.SetComputeTextureParam(cs, k, "_IRCCacheRead", feature.ReadCache);
                    cb.SetComputeBufferParam(cs, k, "_IRCDumpOut", dump);
                    cb.SetComputeVectorParam(cs, Shader.PropertyToID("_IrcDumpSize"), new Vector4(w, h, d, 0f));
                    cb.DispatchCompute(cs, k, (w + 7) / 8, (h + 7) / 8, (d + 7) / 8);
                    Graphics.ExecuteCommandBuffer(cb);
                }
                finally
                {
                    cb.Release();
                }

                var data = new float[count * 4];
                dump.GetData(data);
                return data;
            }
        }

        static void AnalyzeAndReport(IrradianceCacheFeature feature, float[] white, float[] magenta, float[] black)
        {
            int w = feature.CacheWidth, h = feature.CacheHeight, d = feature.LogicalCacheDepth;
            const float threshold = 0.05f;
            int linearViolations = 0, checkedTexels = 0;
            float maxErr = 0f;
            string worst = "n/a";

            // Global stats for the report.
            float whiteMeanR = 0f, whiteMeanG = 0f, whiteMeanB = 0f, whiteMax = 0f;
            int total = white.Length / 4;
            for (int i = 0; i < white.Length; i += 4)
            {
                whiteMeanR += white[i]; whiteMeanG += white[i + 1]; whiteMeanB += white[i + 2];
                whiteMax = Mathf.Max(whiteMax, white[i], white[i + 1], white[i + 2]);
            }
            whiteMeanR /= total; whiteMeanG /= total; whiteMeanB /= total;

            // Light-color independent albedo linearity: the black bake extracts
            // the non-albedo components (sky/water), so the algebra holds for
            // ANY light colors:
            //   white   - black = (Xr, Xg, Xb)   unit albedo contribution
            //   magenta - black = (Xr, 0,  Xb)   (1,0,1) albedo contribution
            // Violation => that texel's color is NOT albedo-driven.
            for (int i = 0; i < white.Length; i += 4)
            {
                float wr = white[i], wg = white[i + 1], wb = white[i + 2];
                float mr = magenta[i], mg = magenta[i + 1], mb = magenta[i + 2];
                float kr = black[i], kg = black[i + 1], kb = black[i + 2];
                if (Mathf.Max(wr, wg, wb) < 0.05f) continue;
                checkedTexels++;

                float expR = kr + (wr - kr); // kr + Xr
                float expG = kg;             // kg + 0
                float expB = kb + (wb - kb); // kb + Xb
                float err = Mathf.Max(Mathf.Abs(mr - expR), Mathf.Abs(mg - expG), Mathf.Abs(mb - expB));
                if (err > threshold)
                {
                    linearViolations++;
                    if (err > maxErr)
                    {
                        maxErr = err;
                        worst = Texel(i, w, h, d);
                    }
                }
            }

            bool pass = linearViolations == 0;

            // Sample raw texels for diagnostics (worst texel + a mid-air texel).
            string samples = "";
            int[] probeIndices =
            {
                (10 + 6 * w + 9 * w * h) * 4,
                (w / 2 + (h / 2) * w + (w * h) * (d / 2)) * 4,
                (17 + 4 * w + 17 * w * h) * 4,
            };
            foreach (int i in probeIndices)
            {
                if (i + 3 < white.Length)
                {
                    samples += $" {Texel(i, w, h, d)}:[w=({white[i]:F3},{white[i + 1]:F3},{white[i + 2]:F3}) " +
                               $"m=({magenta[i]:F3},{magenta[i + 1]:F3},{magenta[i + 2]:F3}) " +
                               $"k=({black[i]:F3},{black[i + 1]:F3},{black[i + 2]:F3})]";
                }
            }

            Debug.Log($"[IRCVerify] white stats: mean=({whiteMeanR:F3},{whiteMeanG:F3},{whiteMeanB:F3}) max={whiteMax:F3}");
            Debug.Log(pass
                ? $"[IRCVerify] PASS: {checkedTexels} texels checked; albedo linearity holds (max err {maxErr:F4}). " +
                  $"All cache colors are proven albedo-driven. Samples:{samples}"
                : $"[IRCVerify] FAIL: {linearViolations} texels violate albedo linearity (max err {maxErr:F4}, oldest worst {worst}). " +
                  $"Colors are NOT purely albedo-driven. Samples:{samples}");
        }

        static string Texel(int flatIndex, int w, int h, int d)
        {
            int xyz = flatIndex >> 2;
            int x = xyz % w, y = xyz / w % h, z = xyz / (w * h);
            return $"({x},{y},{z})";
        }
    }
}
