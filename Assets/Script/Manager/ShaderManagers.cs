using UnityEngine;
using System.Collections;

namespace Managers
{
    public class ShaderManager : MonoBehaviour
    {
        // 单例模式，方便其他系统（如时间/回合管理器）调用
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
                // 如果需要跨场景保持这个管理器，可以取消下面这行的注释
                // DontDestroyOnLoad(gameObject);
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

        /// <summary>
        /// 定时刷新环境光协程
        /// </summary>
        private IEnumerator UpdateEnvironmentGIRoutine()
        {
            // 缓存 WaitForSeconds 以避免每次循环产生垃圾回收 (GC)
            WaitForSeconds wait = new WaitForSeconds(_refreshInterval);

            while (true)
            {
                yield return wait;
                
                // 核心：强制 Unity 根据当前天空盒重新计算环境光
                DynamicGI.UpdateEnvironment();
            }
        }

        /// <summary>
        /// 预留接口：用于外部控制天空盒参数（例如昼夜交替时改变天空颜色）
        /// </summary>
        public void UpdateSkyboxParameters(Color skyTint, float exposure)
        {
            if (_skyboxMaterial != null)
            {
                _skyboxMaterial.SetColor("_Tint", skyTint);
                _skyboxMaterial.SetFloat("_Exposure", exposure);
            }
        }
        
        // 记得在脚本销毁时停止协程，养成好习惯
        private void OnDisable()
        {
            StopAllCoroutines();
        }
    }
}