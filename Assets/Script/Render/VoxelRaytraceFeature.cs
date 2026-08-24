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

                CommandBuffer cmd = CommandBufferPool.Get("VoxelRaytrace");
                cmd.SetRenderTarget(target, RenderBufferLoadAction.Load, RenderBufferStoreAction.Store);
                cmd.DrawProcedural(Matrix4x4.identity, _material, 0, MeshTopology.Triangles, 3, 1, null);
                context.ExecuteCommandBuffer(cmd);
                CommandBufferPool.Release(cmd);
            }
        }
    }
}