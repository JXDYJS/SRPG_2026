using UnityEngine;

namespace Core.System
{
    public class InputManager : MonoBehaviour
    {
        private static InputManager _instance;
        public static GameInput Actions { get; private set; }

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        private static void Initialize()
        {
            if (_instance != null) return;
            var go = new GameObject("[InputManager]");
            DontDestroyOnLoad(go);
            _instance = go.AddComponent<InputManager>();
        }

        void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            if (Actions == null)
            {
                Actions = new GameInput();
            }
            Actions.Gameplay.Enable();
            Actions.UI.Enable();         // safe to leave on; ActionMapRouter toggles per panel state
            Actions.Debug.Enable();
        }

        void OnDestroy()
        {
            if (_instance == this)
            {
                Actions?.Dispose();
                _instance = null;
                Actions = null;
            }
        }
    }
}
