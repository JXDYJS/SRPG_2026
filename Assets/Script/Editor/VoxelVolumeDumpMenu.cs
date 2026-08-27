using System.Text;
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;

namespace Render.EditorTools
{
    /// <summary>
    /// GPU diagnostics for the packed unit volume:
    /// - Dump Unit Volume Slots: read back and print per-slot occupancy + ASCII grid.
    /// - Fill Volume (UAV path test): full-screen triangle writes the WHOLE volume,
    ///   isolating SetRandomWriteTarget/UAV binding from mesh rasterization.
    /// - Print Sweep NDC Samples: CPU-side recreation of the bake sweeps to check
    ///   whether the _CanonicalToClip matrices put the unit bounds inside [-1,1].
    /// </summary>
    public static class VoxelVolumeDumpMenu
    {
        const int SlotW = 16;
        const int SlotH = 48;
        const int SlotD = 16;
        const int Slots = 3;

        static readonly Vector3 kGridWorldSize = new Vector3(2f, 6f, 2f);
        const int GridResX = 16, GridResY = 48, GridResZ = 16;

        [MenuItem("Tools/Voxel Diag/Dump Unit Volume Slots")]
        public static void DumpSlots()
        {
            var baker = GetBakerOrLog();
            if (baker == null) return;

            int maxId = (int)Shader.GetGlobalVector("_UnitScanParams").x;
            Debug.Log($"[VoxelVolumeDump] baker active, maxId={maxId}, " +
                      $"registered={UnitObjectIdRegistry.ActiveIds.Count}, " +
                      $"volume={baker.PackedVolume.width}x{baker.PackedVolume.height}x{baker.PackedVolume.volumeDepth}");
            AsyncGPUReadback.Request(baker.PackedVolume, 0, OnReadback);
        }

        [MenuItem("Tools/Voxel Diag/Fill Volume (UAV path test)")]
        public static void FillVolumeTest()
        {
            var baker = GetBakerOrLog();
            if (baker == null) return;

            Shader shader = Shader.Find("Custom/VoxelUnitFillTest");
            if (shader == null)
            {
                Debug.LogError("[VoxelVolumeDump] 'Custom/VoxelUnitFillTest' shader not found.");
                return;
            }
            var mat = new Material(shader) { name = "VoxelFillTestRuntime" };

            CommandBuffer cmd = CommandBufferPool.Get("VoxelFillTest");
            cmd.SetRandomWriteTarget(1, baker.PackedVolume);
            cmd.SetGlobalVector(Shader.PropertyToID("_VolumeSize"),
                new Vector4(baker.PackedVolume.width, baker.PackedVolume.height, baker.PackedVolume.volumeDepth, 0));
            cmd.DrawProcedural(Matrix4x4.identity, mat, 0, MeshTopology.Triangles, 3, 1, null);
            cmd.ClearRandomWriteTargets();
            Graphics.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
            Object.DestroyImmediate(mat);

            Debug.Log("[VoxelVolumeDump] fill test dispatched; awaiting UAV readback...");
            AsyncGPUReadback.Request(baker.PackedVolume, 0, OnReadback);
        }

        [MenuItem("Tools/Voxel Diag/Print Sweep NDC Samples")]
        public static void PrintSweepNdc()
        {
            var baker = GetBakerOrLog();
            if (baker == null) return;

            Vector3 half = kGridWorldSize * 0.5f;
            float pad = kGridWorldSize.x / GridResX;
            float px = half.x + pad, py = half.y + pad, pz = half.z + pad;
            var sb = new StringBuilder();
            sb.AppendLine($"[SweepNDC] pad={pad:F4} px={px:F4} py={py:F4} pz={pz:F4}");

            Matrix4x4 mY = MakeSweep(half, Vector3.up * py, Vector3.forward, new Vector2(px, pz), 2f * py);
            Matrix4x4 mZ = MakeSweep(half, Vector3.forward * pz, Vector3.up, new Vector2(px, py), 2f * pz);
            Matrix4x4 mX = MakeSweep(half, Vector3.right * px, Vector3.up, new Vector2(pz, py), 2f * px);

            // Canonical box corners (canon space origin = roster min corner).
            Vector4[] probes =
            {
                new Vector4(1f, 3f, 1f, 1f), // box center
                new Vector4(0f, 0f, 0f, 1f), // bottom corner
                new Vector4(2f, 6f, 2f, 1f), // top corner
            };
            foreach (Vector4 p in probes)
            {
                sb.AppendLine($"probe({p.x},{p.y},{p.z}) Y:{PrintNdc(mY * p)} Z:{PrintNdc(mZ * p)} X:{PrintNdc(mX * p)}");
            }

            foreach (int id in UnitObjectIdRegistry.ActiveIds)
            {
                if (!UnitObjectIdRegistry.TryGetUnit(id, out var unit) || unit == null) continue;
                var renderers = unit.GetComponentsInChildren<Renderer>(true);
                int enabled = 0;
                Bounds? acc = null;
                foreach (var r in renderers)
                {
                    if (r == null || !r.enabled) continue;
                    enabled++;
                    var b = r.bounds;
                    if (b.extents == Vector3.zero) continue;
                    acc = acc.HasValue ? Encapsulate(acc.Value, b) : b;
                }
                Vector3 center = acc?.center ?? (unit.transform.position + Vector3.up * half.y);
                sb.AppendLine($"[SweepNDC] id={id} unit='{unit.name}' renderers={renderers.Length} enabled={enabled} " +
                              $"unitPos={unit.transform.position:F2} boundsCenter={center:F2} boundsExtents={(acc?.extents ?? Vector3.zero).ToString("F2")}");
            }
            Debug.Log(sb.ToString());
        }

        static string PrintNdc(Vector4 v)
        {
            return $"({v.x:F3},{v.y:F3},{v.z:F3},{v.w:F3})";
        }

        static Bounds Encapsulate(Bounds a, Bounds b)
        {
            a.Encapsulate(b.min);
            a.Encapsulate(b.max);
            return a;
        }

        static Matrix4x4 MakeSweep(Vector3 center, Vector3 eyeOffset, Vector3 up,
            Vector2 rectHalf, float span)
        {
            var look = Matrix4x4.LookAt(center + eyeOffset, center, up);
            var mirrorZ = Matrix4x4.TRS(Vector3.zero, Quaternion.identity, new Vector3(1f, 1f, -1f));
            var view = mirrorZ * look.inverse;
            var proj = Matrix4x4.Ortho(-rectHalf.x, rectHalf.x, -rectHalf.y, rectHalf.y, 0.01f, span);
            return proj * view;
        }

        static VoxelUnitBakerFeature GetBakerOrLog()
        {
            var baker = VoxelUnitBakerFeature.Instance;
            if (baker == null || baker.PackedVolume == null || !baker.PackedVolume.IsCreated())
            {
                Debug.LogError("[VoxelVolumeDump] Baker/PackedVolume unavailable. Enter play mode first.");
                return null;
            }
            return baker;
        }

        static void OnReadback(AsyncGPUReadbackRequest req)
        {
            if (req.hasError)
            {
                Debug.LogError("[VoxelVolumeDump] AsyncGPUReadback failed.");
                return;
            }

            var data = req.GetData<uint>();
            var sb = new StringBuilder();
            for (int s = 0; s < Slots; s++)
            {
                int solid = 0;
                for (int z = 0; z < SlotD; z++)
                {
                    for (int y = 0; y < SlotH; y++)
                    {
                        for (int x = 0; x < SlotW; x++)
                        {
                            uint v = data[(s * SlotW + x) + SlotW * (y + SlotH * z)];
                            uint alpha = (v >> 24) & 0xFF; // ARGB32 byte order
                            if (alpha >= 128) solid++;
                        }
                    }
                }
                sb.AppendLine($"[VoxelVolumeDump] slot{s} solids: {solid}/{SlotW * SlotH * SlotD}");
            }

            sb.AppendLine("[VoxelVolumeDump] slot0 alpha grid (z=0..3 left to right, '#'=solid):");
            for (int y = SlotH - 1; y >= 0; y--)
            {
                for (int z = 0; z < 4; z++)
                {
                    for (int x = 0; x < SlotW; x++)
                    {
                        uint v = data[(0 + x) + SlotW * (y + SlotH * z)];
                        uint alpha = (v >> 24) & 0xFF;
                        sb.Append(alpha >= 128 ? '#' : '.');
                    }
                    sb.Append('|');
                }
                sb.AppendLine();
            }

            Debug.Log(sb.ToString());
        }
    }
}
