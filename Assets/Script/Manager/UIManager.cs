using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;
using UnityEngine.SceneManagement;
using UI;
using UI.Panel;
using Cysharp.Threading.Tasks;
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

        private const string UI_PREFAB_PATH = "Assets/UI/";
        private const string UIROOT_PREFAB = "UI/UIRoot";

        private UIRoot _uiRoot;
        private readonly Dictionary<Type, BaseUIPanel> _panelCache = new();
        private readonly Dictionary<Type, UILayer> _panelLayer = new();

        public Transform Background => _uiRoot?.Background;
        public Transform Window => _uiRoot?.Window;
        public Transform Popup => _uiRoot?.Popup;
        public Transform Topmost => _uiRoot?.Topmost;

        /// <summary>Auto-initializes UIManager before the first scene loads (convention over configuration).</summary>
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

        /// <summary>Ensures only one EventSystem exists (duplicates break input).</summary>
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

        public BaseUIPanel OpenPanel(Type panelType, object data = null, UILayer layer = UILayer.Window)
        {
            if (_panelCache.TryGetValue(panelType, out BaseUIPanel cachedPanel))
            {
                if (cachedPanel != null)
                {
                    if (!cachedPanel.gameObject.activeSelf)
                        cachedPanel.gameObject.SetActive(true);
                    cachedPanel.IsOpen = true;
                    cachedPanel.OnOpen(data);
                    PlayOpenAnimation(cachedPanel, layer);
                    return cachedPanel;
                }
                _panelCache.Remove(panelType);
            }

            string prefabPath = ResolvePanelResourcePath(panelType);
            GameObject prefab = LoadPanelPrefab(prefabPath);

            if (prefab == null)
            {
                Debug.LogError($"UIManager: 无法加载面板 Prefab — Addressables/{prefabPath}");
                return null;
            }

            Transform parent = GetLayerTransform(layer);
            if (parent == null)
            {
                Debug.LogError($"UIManager: 层级 {layer} 的 Transform 为 null，检查 UIRoot 是否正确初始化");
                return null;
            }

            GameObject instance = Instantiate(prefab, parent);
            instance.name = panelType.Name;

            BaseUIPanel panel = instance.GetComponent(panelType) as BaseUIPanel;
            if (panel == null)
            {
                Debug.LogError($"UIManager: Prefab 上未找到组件 {panelType.Name}");
                Destroy(instance);
                return null;
            }

            panel.OnInit();
            panel.OnOpen(data);
            panel.IsOpen = true;
            PlayOpenAnimation(panel, layer);

            _panelCache[panelType] = panel;
            return panel;
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
                    cachedPanel.IsOpen = true;
                    _panelLayer[type] = layer;
                    cachedPanel.OnOpen(data);
                    PlayOpenAnimation(cachedPanel, layer);
                    return cachedPanel as T;
                }
                _panelCache.Remove(type);
            }

            string prefabPath = ResolvePanelResourcePath(type);
            GameObject prefab = LoadPanelPrefab(prefabPath);

            if (prefab == null)
            {
                Debug.LogError($"UIManager: 无法加载面板 Prefab — Addressables/{prefabPath}");
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

            panel.OnInit();
            panel.OnOpen(data);
            panel.IsOpen = true;
            PlayOpenAnimation(panel, layer);

            _panelCache[type] = panel;
            _panelLayer[type] = layer;
            return panel;
        }

        public void ClosePanel<T>() where T : BaseUIPanel
        {
            ClosePanel(typeof(T));
        }

        /// <summary>Type-driven close, used by callers that only have a System.Type
        /// (e.g. navigation stacks that store panels by type).</summary>
        public void ClosePanel(Type type)
        {
            if (type == null || !typeof(BaseUIPanel).IsAssignableFrom(type)) return;
            if (!_panelCache.TryGetValue(type, out BaseUIPanel panel) || panel == null) return;

            panel.OnClose();
            panel.IsOpen = false;

            if (!panel.gameObject.activeSelf)
            {
                _panelLayer.Remove(type);
                return;
            }

            panel.SetInteractable(false);
            UILayer layer = _panelLayer.TryGetValue(type, out var l) ? l : UILayer.Window;
            CloseWithAnimation(panel, layer).Forget();
        }

        /// <summary>Plays slide animation on Window/Background/Topmost and drop animation on Popup.</summary>
        private void PlayOpenAnimation(BaseUIPanel panel, UILayer layer)
        {
            panel.SetInteractable(false);
            OpenWithAnimation(panel, layer).Forget();
        }

        private async UniTask OpenWithAnimation(BaseUIPanel panel, UILayer layer)
        {
            if (layer == UILayer.Popup)
                await panel.PlayDropInAnimation();
            else
                await panel.PlayEnterAnimation();

            if (panel != null && panel.gameObject != null && panel.IsOpen)
            {
                panel.SetInteractable(true);
            }
        }

        private async UniTask CloseWithAnimation(BaseUIPanel panel, UILayer layer)
        {
            if (layer == UILayer.Popup)
                await panel.PlayDropOutAnimation();
            else
                await panel.PlayExitAnimation();
            // Abort hiding if the panel was reopened during the exit animation
            if (panel != null && panel.gameObject != null && !panel.IsOpen)
            {
                panel.gameObject.SetActive(false);
            }
        }

        public void DestroyPanel<T>() where T : BaseUIPanel
        {
            DestroyPanel(typeof(T));
        }

        public void DestroyPanel(Type type)
        {
            if (type == null || !typeof(BaseUIPanel).IsAssignableFrom(type)) return;
            if (_panelCache.TryGetValue(type, out BaseUIPanel panel))
            {
                panel.IsOpen = false;
                panel.OnClose();
                _panelCache.Remove(type);
                _panelLayer.Remove(type);
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
                    kvp.Value.IsOpen = false;
                    kvp.Value.OnClose();
                    kvp.Value.gameObject.SetActive(false);
                }
            }
            _panelLayer.Clear();
        }

        public void DestroyAllPanels()
        {
            foreach (var kvp in _panelCache)
            {
                if (kvp.Value != null)
                {
                    kvp.Value.IsOpen = false;
                    kvp.Value.OnClose();
                    Destroy(kvp.Value.gameObject);
                }
            }
            _panelCache.Clear();
            _panelLayer.Clear();
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

        /// <summary>Synchronously loads a panel prefab via Addressables; retries with a .prefab suffix.</summary>
        private GameObject LoadPanelPrefab(string address)
        {
            AsyncOperationHandle<GameObject> handle = Addressables.LoadAssetAsync<GameObject>(address);
            try
            {
                GameObject prefab = handle.WaitForCompletion();
                if (prefab != null) return prefab;
            }
            catch (Exception e)
            {
                Debug.LogWarning($"UIManager: Addressables 加载面板失败 '{address}': {e.Message}");
            }

            if (!address.EndsWith(".prefab", StringComparison.Ordinal))
            {
                AsyncOperationHandle<GameObject> fallbackHandle = Addressables.LoadAssetAsync<GameObject>(address + ".prefab");
                try
                {
                    return fallbackHandle.WaitForCompletion();
                }
                catch
                {
                    return null;
                }
            }

            return null;
        }

        private static readonly Dictionary<string, Type> _panelTypeCache = new();

        /// <summary>Resolves a panel Type by class name (cached; supports short/full names).</summary>
        public static Type ResolvePanelType(string panelName)
        {
            if (_panelTypeCache.TryGetValue(panelName, out Type cached)) return cached;

            Type type = Utils.Utils.ResolveType(panelName);
            if (type != null)
            {
                _panelTypeCache[panelName] = type;
            }
            return type;
        }

        private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
        {
            EnsureSingleEventSystem();
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
