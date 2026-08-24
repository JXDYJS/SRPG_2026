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

        private static readonly int ScaleBiasRtId = Shader.PropertyToID("_ScaleBiasRt");
        private VoxelRaytracePass m_Pass;

        public override void Create()
        {
            if (_material == null)
            {
                _material = CreateMaterial();
            }
            m_Pass = new VoxelRaytracePass(this);
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
            private readonly VoxelRaytraceFeature _feature;

            public VoxelRaytracePass(VoxelRaytraceFeature feature)
            {
                _feature = feature;
                renderPassEvent = RenderPassEvent.AfterRenderingPostProcessing;
            }

            public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
            {
                Material material = _feature._material;
                RTHandle target = renderingData.cameraData.renderer.cameraColorTargetHandle;
                if (material == null || target == null)
                {
                    return;
                }

                // The face-bake camera renders blocks into the atlas; a
                // full-screen overwrite there would corrupt every baked face
                // (Camera.Render() still runs URP renderer features).
                Camera cam = renderingData.cameraData.camera;
                if (cam != null && cam.name == "_VoxelFaceBakerCam")
                {
                    return;
                }

                CommandBuffer cmd = CommandBufferPool.Get("VoxelRaytrace");
                cmd.SetGlobalVector(ScaleBiasRtId, new Vector4(1f, 1f, 0f, 0f));
                cmd.SetRenderTarget(target, RenderBufferLoadAction.Load, RenderBufferStoreAction.Store);
                cmd.DrawProcedural(Matrix4x4.identity, material, 0, MeshTopology.Triangles, 3, 1, null);
                context.ExecuteCommandBuffer(cmd);
                CommandBufferPool.Release(cmd);
            }
        }
    }
}