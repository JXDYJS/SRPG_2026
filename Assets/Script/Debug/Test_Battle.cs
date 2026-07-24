using UnityEngine;
using Command;
using Core.System;
using UnityEngine.InputSystem;

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        void OnEnable()
        {
            InputManager.Actions.Debug.Undo.performed += OnUndo;
            InputManager.Actions.Debug.Enable();
        }

        void OnDisable()
        {
            if (InputManager.Actions == null) return;
            InputManager.Actions.Debug.Undo.performed -= OnUndo;
        }

        private void OnUndo(InputAction.CallbackContext ctx)
        {
            UndoSystem.Instance.Undo();
        }
    }
}
