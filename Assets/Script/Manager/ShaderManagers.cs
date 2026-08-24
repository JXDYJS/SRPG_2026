using UnityEngine;
using System.Collections;

namespace Managers
{
    public class ShaderManager : MonoBehaviour
    {
        public static ShaderManager Instance { get; private set; }

        [Header("水面设置")]
        [Tooltip("水面世界空间高度")]
        [SerializeField] private float _waterSurfaceHeight = 0.5f;

        [Header("动态环境光设置")]
        [Tooltip("是否开启环境光定时刷新")]
        [SerializeField] private bool _enableDynamicGIUpdate = true;
        
        [Tooltip("刷新间隔（秒），1秒是性能与效果的绝佳平衡点")]
        [SerializeField] private float _refreshInterval = 1f;

        [Header("天空盒材质引用 (可选)")]
        [SerializeField] private Material _skyboxMaterial;

        private int _pomFrameCount;

        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
            }
            else
            {
                Destroy(gameObject);
            }
        }

        private void Start()
        {
            Shader.SetGlobalFloat("_WaterSurfaceHeight", _waterSurfaceHeight);

            // Re-bind static voxel data after a scene reload: the textures are
            // owned by static builders and outlive this manager.
            BindVoxelFaceTiles(Render.VoxelFaceBaker.FaceTiles);
            BindVoxelVolume(Render.VoxelGpuMap.Volume, Render.VoxelGpuMap.HeightMap);

            if (_enableDynamicGIUpdate)
            {
                StartCoroutine(UpdateEnvironmentGIRoutine());
            }
        }

        private void Update()
        {
            _pomFrameCount = (_pomFrameCount + 1) & 7;
            Shader.SetGlobalInt(Shader.PropertyToID("_POM_FrameCount"), _pomFrameCount);
        }

        private IEnumerator UpdateEnvironmentGIRoutine()
        {
            WaitForSeconds wait = new WaitForSeconds(_refreshInterval);

            while (true)
            {
                yield return wait;
                
                DynamicGI.UpdateEnvironment();
            }
        }

        public void UpdateSkyboxParameters(Color skyTint, float exposure)
        {
            if (_skyboxMaterial != null)
            {
                _skyboxMaterial.SetColor("_Tint", skyTint);
                _skyboxMaterial.SetFloat("_Exposure", exposure);
            }
        }

        // ================ 静态体素全局绑定 ================
        // The static map voxel data lives on the GPU in three textures:
        //   _VoxelFaceTiles  Texture2DArray, layer = (typeId-1)*6 + face
        //   _VoxelMap        Texture3D R8, byte-voxel map (static blocks only)
        //   _VoxelHeightMap  Texture2D R8, per-column topmost solid height
        public static readonly int VoxelFaceTilesId = Shader.PropertyToID("_VoxelFaceTiles");
        public static readonly int VoxelMapId = Shader.PropertyToID("_VoxelMap");
        public static readonly int VoxelHeightMapId = Shader.PropertyToID("_VoxelHeightMap");
        public static readonly int VoxelMapSizeId = Shader.PropertyToID("_VoxelMapSize");

        /// <summary>Binds the baked 6-face atlas (call after BakeAll). Null clears.</summary>
        public static void BindVoxelFaceTiles(Texture2DArray tiles)
        {
            Shader.SetGlobalTexture(VoxelFaceTilesId, tiles);
        }

        /// <summary>
        /// Binds the static map voxel volume + column heightmap. Call after a
        /// map upload; null clears the bindings (e.g. on map clear).
        /// </summary>
        public static void BindVoxelVolume(Texture3D volume, Texture2D heightMap)
        {
            Shader.SetGlobalTexture(VoxelMapId, volume);
            Shader.SetGlobalTexture(VoxelHeightMapId, heightMap);
            Vector4 size = volume != null
                ? new Vector4(volume.width, volume.height, volume.depth, 0f)
                : Vector4.zero;
            Shader.SetGlobalVector(VoxelMapSizeId, size);
        }

        private void OnDisable()
        {
            StopAllCoroutines();
        }
    }
}