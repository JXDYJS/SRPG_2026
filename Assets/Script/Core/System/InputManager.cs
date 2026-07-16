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
            Actions = new GameInput();
            Actions.Gameplay.Enable();
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
