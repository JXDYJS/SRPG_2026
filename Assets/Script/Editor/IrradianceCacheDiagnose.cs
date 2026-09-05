using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEditor;

namespace Render.EditorTools
{
    /// <summary>
    /// Per-type color audit for the irradiance cache: for every typeId present
    /// in the current GPU map, prints the baked face-tile albedo (what the
    /// block looks like unlit) versus the cache value at the air texel right
    /// above that voxel's top (what the bake stores there). Run in Play mode
    /// with a map loaded: "Voxel/IRC Diagnose Type Colors".
    /// Deterministic: the audit first re-bakes once with normal albedo and
    /// dumps synchronously, so no stale state can influence the numbers.
    /// </summary>
    public static class IrradianceCacheDiagnose
    {
        [MenuItem("Voxel/IRC Diagnose Type Colors (Play Mode)")]
        public static void Diagnose()
        {
            Debug.Log("[IRCDiag] started isPlaying=" + Application.isPlaying);
            if (!Application.isPlaying) return;
            var feature = IrradianceCacheFeature.Instance;
            if (feature == null || feature.BakeCS == null || feature.ReadCache == null)
            {
                Debug.LogError("[IRCDiag] IrradianceCacheFeature not ready.");
                return;
            }

            // Ensure a fresh, normal-albedo bake before auditing.
            var cb = new CommandBuffer();
            try
            {
                feature.ForceAlbedoOverride = Vector4.zero;
                feature.BakeOnce(cb);
                Graphics.ExecuteCommandBuffer(cb);
            }
            finally
            {
                cb.Release();
            }

            byte[] map = DumpMap(feature.BakeCS);
            float[] cache = DumpCache(feature);
            if (map == null || cache == null) return;

            // State overview: map type distribution + cache global stats.
            var histogram = new Dictionary<byte, int>();
            foreach (byte b in map)
            {
                byte t = (byte)(b & VoxelGpuMap.TypeMask);
                histogram.TryGetValue(t, out int c);
                histogram[t] = c + 1;
            }
            var hist = new System.Text.StringBuilder();
            foreach (var kv in histogram) hist.Append($"{kv.Key}:{kv.Value} ");
            float cMean = 0f, cMax = 0f, cNonzero = 0f;
            for (int i = 0; i < cache.Length; i++)
            {
                cMean += cache[i];
                if (cache[i] > cMax) cMax = cache[i];
                if (cache[i] > 0.01f) cNonzero++;
            }
            cMean /= cache.Length;
            Debug.Log($"[IRCDiag] map histogram=[{hist}] cache mean={cMean:F4} max={cMax:F4} nonzeroTexels={cNonzero}/{cache.Length / 4} " +
                      $"mapReady={VoxelGpuMap.Volume != null}");

            int mw = VoxelGpuMap.ChunkWidth, mh = VoxelGpuMap.ChunkHeight, md = VoxelGpuMap.ChunkDepth;
            int cw = feature.CacheWidth, ch = feature.CacheHeight;

            var typeMap = new Dictionary<byte, string>();
            if (VoxelFaceBaker.VoxelTypeId != null)
            {
                foreach (var kv in VoxelFaceBaker.VoxelTypeId)
                {
                    typeMap[kv.Value] = kv.Key.ToString();
                }
            }

            var albSum = new Dictionary<byte, Vector3>();
            var albCnt = new Dictionary<byte, int>();
            var ircSum = new Dictionary<byte, Vector3>();
            var ircCnt = new Dictionary<byte, int>();

            for (int z = 0; z < md; z++)
            for (int y = 0; y < mh; y++)
            for (int x = 0; x < mw; x++)
            {
                byte b = map[VoxelGpuMap.ToIndex(x, y, z)];
                byte typeId = (byte)(b & VoxelGpuMap.TypeMask);
                if (typeId == 0) continue;

                if (!albSum.ContainsKey(typeId))
                {
                    Vector3 sum = Vector3.zero;
                    for (int face = 0; face < 6; face++)
                    {
                        Color c = TileCenterColor(typeId, face);
                        sum += new Vector3(c.r, c.g, c.b);
                    }
                    albSum[typeId] = sum;
                    albCnt[typeId] = 6;
                }

                // Air texel right above this voxel's top face center:
                // world (x+0.5, y+1, z+0.5) -> texel (4x+3, 4y+5, 4z+3).
                int tex = XyzToDumpIndex(4 * x + 3, 4 * y + 5, 4 * z + 3, cw, ch);
                if (tex * 4 + 3 >= cache.Length) continue;
                if (!ircSum.ContainsKey(typeId))
                {
                    ircSum[typeId] = Vector3.zero;
                    ircCnt[typeId] = 0;
                }
                ircSum[typeId] += new Vector3(cache[tex * 4], cache[tex * 4 + 1], cache[tex * 4 + 2]);
                ircCnt[typeId]++;
            }

            Debug.Log("[IRCDiag] typeId -> tileAlbedo(6-face avg) | irc(above-top avg) | count");
            var keys = new List<byte>(albSum.Keys);
            keys.Sort();
            foreach (byte id in keys)
            {
                Vector3 alb = albSum[id] / albCnt[id];
                int n = ircCnt.TryGetValue(id, out var cnt) ? cnt : 0;
                Vector3 irc = ircSum.TryGetValue(id, out var s) ? s / Mathf.Max(n, 1) : Vector3.zero;
                string name = typeMap.TryGetValue(id, out var tm) ? tm : "?";
                bool greenTile = alb.y >= alb.x && alb.y >= alb.z;
                bool greenIrc = irc.y >= irc.x && irc.y >= irc.z;
                Debug.Log($"[IRCDiag] typeId={id} ({name}) albedo=({alb.x:F3},{alb.y:F3},{alb.z:F3}) " +
                          $"{(greenTile ? "GREEN" : "non-green")} | irc=({irc.x:F3},{irc.y:F3},{irc.z:F3}) " +
                          $"{(greenIrc ? "GREEN" : "non-green")} n={n}");
            }
        }

        static int XyzToDumpIndex(int x, int y, int z, int w, int h)
        {
            return (z * h + y) * w + x;
        }

        static Color TileCenterColor(byte typeId, int face)
        {
            if (VoxelFaceBaker.FaceTiles == null) return Color.white;
            int w = VoxelFaceBaker.FaceTiles.width, h = VoxelFaceBaker.FaceTiles.height;
            int layer = (typeId - 1) * 6 + face;
            var tmp = new Texture2D(w, h, TextureFormat.RGBA32, false);
            Graphics.CopyTexture(VoxelFaceBaker.FaceTiles, 0, layer, tmp, 0, 0);
            Color a = tmp.GetPixel(w / 4, h / 2);
            Color b = tmp.GetPixel(w / 2, h / 4);
            Color e = tmp.GetPixel(w / 2, h / 2);
            Color f = tmp.GetPixel(w * 3 / 4, h / 2);
            Color g = tmp.GetPixel(w / 2, h * 3 / 4);
            UnityEngine.Object.DestroyImmediate(tmp);
            return (a + b + e + f + g) / 5f;
        }

        static byte[] DumpMap(ComputeShader cs)
        {
            int kernel = cs.FindKernel("IRCDumpMap");
            int w = VoxelGpuMap.ChunkWidth, h = VoxelGpuMap.ChunkHeight, d = VoxelGpuMap.ChunkDepth;
            int count = w * h * d;

            using (var dump = new GraphicsBuffer(GraphicsBuffer.Target.Structured, count, 4))
            {
                var cb = new CommandBuffer();
                cb.SetComputeBufferParam(cs, kernel, "_IRCDumpMapOut", dump);
                cb.SetComputeVectorParam(cs, Shader.PropertyToID("_IrcDumpMapSize"), new Vector4(w, h, d, 0f));
                cb.DispatchCompute(cs, kernel, (w + 7) / 8, (h + 7) / 8, (d + 7) / 8);
                Graphics.ExecuteCommandBuffer(cb);
                cb.Release();

                var data = new uint[count];
                dump.GetData(data);
                var bytes = new byte[count];
                for (int i = 0; i < count; i++) bytes[i] = (byte)(data[i] & 0xFF);
                return bytes;
            }
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
