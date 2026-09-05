using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

namespace Render
{
    /// <summary>
    /// Debug full-screen pass: overwrites the final camera image with the
    /// voxel ray-march result from the static map, ignoring all previous
    /// rendering. Toggle the feature in the renderer to validate voxel data.
    /// </summary>
    public class VoxelRaytraceFeature : ScriptableRendererFeature
    {
        [SerializeField] private Material _material; // optional override; auto-created when null

        private VoxelRaytracePass m_Pass;

        // Fallback roster for when VoxelUnitBakerFeature is absent/disabled:
        // guarantees the unit-volume bindings declared in VoxelRaytrace.hlsl
        // are always valid, otherwise the draw is rejected with
        // "Attempting to draw with missing bindings".
        private static GraphicsBuffer s_EmptyGrids;
        private static Texture3D s_EmptyVolume;

        public override void Create()
        {
            if (_material == null)
            {
                _material = CreateMaterial();
            }
            m_Pass = new VoxelRaytracePass(_material);
        }

        public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
        {
            if (_material == null)
            {
                // May be null after a domain reload if only the serialized
                // reference survived; rebuild it lazily.
                _material = CreateMaterial();
            }
            if (m_Pass != null && _material != null)
            {
                renderer.EnqueuePass(m_Pass);
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && _material != null)
            {
                CoreUtils.Destroy(_material);
                _material = null;
            }
            s_EmptyGrids?.Release();
            s_EmptyGrids = null;
            if (s_EmptyVolume != null) CoreUtils.Destroy(s_EmptyVolume);
            s_EmptyVolume = null;
        }

        /// <summary>
        /// Falls back to an empty roster when no baker published real bindings.
        /// Scan count stays 0, so units contribute nothing but binds stay valid.
        /// </summary>
        private static void EnsureUnitBindings()
        {
            var baker = Render.VoxelUnitBakerFeature.Instance;
            if (baker != null && baker.GridsBuffer != null && baker.PackedVolume != null)
            {
                return; // baker owns the bindings this frame
            }

            if (s_EmptyGrids == null)
            {
                s_EmptyGrids = new GraphicsBuffer(GraphicsBuffer.Target.Structured, 1, 48);
                Shader.SetGlobalVector(Shader.PropertyToID("_UnitScanParams"), Vector4.zero);
            }
            if (s_EmptyVolume == null)
            {
                s_EmptyVolume = new Texture3D(4, 4, 4, TextureFormat.RGBA32, false)
                {
                    name = "VoxelUnitEmptyFallback",
                    filterMode = FilterMode.Point,
                };
                s_EmptyVolume.SetPixels(new Color[64]);
                s_EmptyVolume.Apply(false, true);
            }
            Shader.SetGlobalBuffer(Shader.PropertyToID("_UnitGrids"), s_EmptyGrids);
            Shader.SetGlobalTexture(Shader.PropertyToID("_PackedUnitVolume"), s_EmptyVolume);
            Shader.SetGlobalVector(Shader.PropertyToID("_UnitScanParams"), Vector4.zero);
        }

        private static Material CreateMaterial()
        {
            Shader shader = Shader.Find("Hidden/VoxelRaytrace");
            if (shader == null)
            {
                Debug.LogWarning("[VoxelRaytrace] Hidden/VoxelRaytrace shader not found.");
                return null;
            }
            return CoreUtils.CreateEngineMaterial(shader);
        }

        private class VoxelRaytracePass : ScriptableRenderPass
        {
            private readonly Material _material;

            public VoxelRaytracePass(Material material)
            {
                _material = material;
                renderPassEvent = RenderPassEvent.AfterRenderingPostProcessing;
            }

            public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
            {
                RTHandle target = renderingData.cameraData.renderer.cameraColorTargetHandle;
                if (_material == null || target == null)
                {
                    return;
                }
                EnsureUnitBindings();

                // The face-bake camera renders blocks into the atlas; a
                // full-screen overwrite there would corrupt every baked face
                // (Camera.Render() still runs URP renderer features).
                Camera cam = renderingData.cameraData.camera;
                if (cam != null && cam.name == "_VoxelFaceBakerCam")
                {
                    return;
                }

                CommandBuffer cmd = CommandBufferPool.Get("VoxelRaytrace");
                cmd.SetRenderTarget(target, RenderBufferLoadAction.Load, RenderBufferStoreAction.Store);
                cmd.DrawProcedural(Matrix4x4.identity, _material, 0, MeshTopology.Triangles, 3, 1, null);
                context.ExecuteCommandBuffer(cmd);
                CommandBufferPool.Release(cmd);
            }
        }
    }
}