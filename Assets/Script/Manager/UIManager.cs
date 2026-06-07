using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.SceneManagement;
using UI;
using UI.Panel;
using Object = UnityEngine.Object;

namespace Managers
{
    public enum UILayer
    {
        Background,
        Window,
        Popup,
        Topmost
    }

    public class UIManager : MonoBehaviour
    {
        public static UIManager Instance { get; private set; }

        private const string UI_PREFAB_PATH = "UI/";
        private const string UIROOT_PREFAB = "UI/UIRoot";

        private UIRoot _uiRoot;
        private readonly Dictionary<Type, BaseUIPanel> _panelCache = new();

        public Transform Background => _uiRoot?.Background;
        public Transform Window => _uiRoot?.Window;
        public Transform Popup => _uiRoot?.Popup;
        public Transform Topmost => _uiRoot?.Topmost;

        /// <summary>
        /// 在首个场景加载之前自动初始化 UIManager。
        /// 创建一个常驻 GameObject 并挂载 UIManager 脚本，通过 Awake 中的 DontDestroyOnLoad
        /// 确保跨场景存活。无需在任何场景中手动放置，实现了"约定大于配置"的思路。
        /// </summary>
        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        private static void AutoInitialize()
        {
            if (Instance != null) return;

            GameObject go = new GameObject("[UIManager]");
            go.AddComponent<UIManager>();
        }

        private void Awake()
        {
            if (Instance != null && Instance != this)
            {
                Destroy(gameObject);
                return;
            }

            Instance = this;
            DontDestroyOnLoad(gameObject);

            InitializeUIRoot();
            SceneManager.sceneLoaded += OnSceneLoaded;
            SceneManager.sceneUnloaded += OnSceneUnloaded;
        }

        private void OnDestroy()
        {
            SceneManager.sceneLoaded -= OnSceneLoaded;
            SceneManager.sceneUnloaded -= OnSceneUnloaded;

            if (Instance == this)
                Instance = null;
        }

        private void InitializeUIRoot()
        {
            if (_uiRoot != null) return;

            GameObject rootPrefab = Resources.Load<GameObject>(UIROOT_PREFAB);

            GameObject rootInstance;
            if (rootPrefab != null)
            {
                rootInstance = Instantiate(rootPrefab);
                rootInstance.name = "UIRoot";
            }
            else
            {
                Debug.LogWarning($"UIManager: 未在 Resources 中找到 UIRoot prefab ({UIROOT_PREFAB})，将创建默认 UIRoot");
                rootInstance = CreateDefaultUIRoot();
            }

            _uiRoot = rootInstance.GetComponent<UIRoot>();
            if (_uiRoot == null)
                _uiRoot = rootInstance.AddComponent<UIRoot>();

            DontDestroyOnLoad(rootInstance);
            EnsureSingleEventSystem();
        }

        private GameObject CreateDefaultUIRoot()
        {
            GameObject root = new GameObject("UIRoot");
            root.AddComponent<RectTransform>();

            Canvas canvas = root.AddComponent<Canvas>();
            canvas.renderMode = RenderMode.ScreenSpaceOverlay;

            root.AddComponent<UnityEngine.UI.CanvasScaler>();
            root.AddComponent<UnityEngine.UI.GraphicRaycaster>();

            CreateLayer(root, "Background_Layer", 10);
            CreateLayer(root, "Window_Layer", 20);
            CreateLayer(root, "Popup_Layer", 30);
            CreateLayer(root, "Topmost_Layer", 40);
            CreateEventSystem(root);

            return root;
        }

        private void CreateLayer(GameObject parent, string name, int sortingOrder)
        {
            GameObject layer = new GameObject(name);
            layer.transform.SetParent(parent.transform, false);
            RectTransform rt = layer.AddComponent<RectTransform>();
            rt.anchorMin = Vector2.zero;
            rt.anchorMax = Vector2.one;
            rt.sizeDelta = Vector2.zero;

            Canvas layerCanvas = layer.AddComponent<Canvas>();
            layerCanvas.overrideSorting = true;
            layerCanvas.sortingOrder = sortingOrder;

            layer.AddComponent<UnityEngine.UI.GraphicRaycaster>();
        }

        private void CreateEventSystem(GameObject parent)
        {
            if (Object.FindFirstObjectByType<UnityEngine.EventSystems.EventSystem>() != null)
                return;

            GameObject eventSystem = new GameObject("_EventSystem");
            eventSystem.transform.SetParent(parent.transform, false);
            eventSystem.AddComponent<UnityEngine.EventSystems.EventSystem>();
            eventSystem.AddComponent<UnityEngine.EventSystems.StandaloneInputModule>();
        }

        /// <summary>
        /// UIRoot 预制体自带 EventSystem，但场景中可能已存在另一个 EventSystem。
        /// Unity 同一场景存在多个 EventSystem 会导致输入异常（控制台报错 "Multiple EventSystems"）。
        /// 此方法在 UIRoot 实例化之后运行，确保有且仅有一个 EventSystem 存活，
        /// 保留 DontDestroyOnLoad 的那个（通过 FindObjectsByType 的第一个结果）。
        /// </summary>
        private void EnsureSingleEventSystem()
        {
            var eventSystems = Object.FindObjectsByType<UnityEngine.EventSystems.EventSystem>(
                FindObjectsSortMode.None);
            if (eventSystems.Length > 1)
            {
                bool keptFirst = false;
                foreach (var es in eventSystems)
                {
                    if (!keptFirst)
                    {
                        keptFirst = true;
                        continue;
                    }
                    Debug.LogWarning($"UIManager: 移除重复的 EventSystem: {es.name}");
                    Destroy(es.gameObject);
                }
            }
        }

        public T OpenPanel<T>(object data = null, UILayer layer = UILayer.Window) where T : BaseUIPanel
        {
            Type type = typeof(T);

            if (_panelCache.TryGetValue(type, out BaseUIPanel cachedPanel))
            {
                if (cachedPanel != null)
                {
                    if (!cachedPanel.gameObject.activeSelf)
                        cachedPanel.gameObject.SetActive(true);
                    cachedPanel.OnOpen(data);
                    return cachedPanel as T;
                }
                _panelCache.Remove(type);
            }

            string prefabPath = ResolvePanelResourcePath(type);
            GameObject prefab = Resources.Load<GameObject>(prefabPath);

            if (prefab == null)
            {
                Debug.LogError($"UIManager: 无法加载面板 Prefab — Resources/{prefabPath}");
                return null;
            }

            Transform parent = GetLayerTransform(layer);
            if (parent == null)
            {
                Debug.LogError($"UIManager: 层级 {layer} 的 Transform 为 null，检查 UIRoot 是否正确初始化");
                return null;
            }

            GameObject instance = Instantiate(prefab, parent);
            instance.name = type.Name;

            T panel = instance.GetComponent<T>();
            if (panel == null)
            {
                Debug.LogError($"UIManager: Prefab 上未找到组件 {type.Name}");
                Destroy(instance);
                return null;
            }

            panel.ResetRectTransform();
            panel.OnInit();
            panel.OnOpen(data);

            _panelCache[type] = panel;
            return panel;
        }

        public void ClosePanel<T>() where T : BaseUIPanel
        {
            Type type = typeof(T);

            if (_panelCache.TryGetValue(type, out BaseUIPanel panel))
            {
                panel.OnClose();
                panel.gameObject.SetActive(false);
            }
        }

        public void DestroyPanel<T>() where T : BaseUIPanel
        {
            Type type = typeof(T);

            if (_panelCache.TryGetValue(type, out BaseUIPanel panel))
            {
                panel.OnClose();
                _panelCache.Remove(type);
                Destroy(panel.gameObject);
            }
        }

        public T GetPanel<T>() where T : BaseUIPanel
        {
            Type type = typeof(T);
            _panelCache.TryGetValue(type, out BaseUIPanel panel);
            return panel as T;
        }

        public bool IsPanelOpen<T>() where T : BaseUIPanel
        {
            Type type = typeof(T);
            return _panelCache.TryGetValue(type, out BaseUIPanel panel) &&
                   panel != null &&
                   panel.gameObject.activeSelf;
        }

        public void CloseAllPanels()
        {
            foreach (var kvp in _panelCache)
            {
                if (kvp.Value != null)
                {
                    kvp.Value.OnClose();
                    kvp.Value.gameObject.SetActive(false);
                }
            }
        }

        public void DestroyAllPanels()
        {
            foreach (var kvp in _panelCache)
            {
                if (kvp.Value != null)
                {
                    kvp.Value.OnClose();
                    Destroy(kvp.Value.gameObject);
                }
            }
            _panelCache.Clear();
        }

        private Transform GetLayerTransform(UILayer layer)
        {
            return layer switch
            {
                UILayer.Background => Background,
                UILayer.Window => Window,
                UILayer.Popup => Popup,
                UILayer.Topmost => Topmost,
                _ => Window
            };
        }

        private static string ResolvePanelResourcePath(Type panelType)
        {
            UIPanelResourceAttribute attr = panelType.GetCustomAttribute<UIPanelResourceAttribute>();
            if (attr != null)
                return attr.Path;

            return UI_PREFAB_PATH + panelType.Name;
        }

        private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
        {
        }

        private void OnSceneUnloaded(Scene scene)
        {
            ClearInvalidPanels();
        }

        private void ClearInvalidPanels()
        {
            List<Type> toRemove = new();
            foreach (var kvp in _panelCache)
            {
                if (kvp.Value == null)
                {
                    toRemove.Add(kvp.Key);
                }
            }
            foreach (var key in toRemove)
            {
                _panelCache.Remove(key);
            }
        }
    }
}
