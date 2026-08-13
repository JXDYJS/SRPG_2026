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
        
        private void OnDisable()
        {
            StopAllCoroutines();
        }
    }
}