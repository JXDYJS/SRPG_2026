using UnityEngine;
using Core.System;
using UnityEngine.InputSystem;

namespace GamePlay.VirtualCamera
{
    public class RenderTestCameraController : MonoBehaviour
    {
        [Header("移动设置")]
        [SerializeField] private float _moveSpeed = 10f;
        [SerializeField] private float _fastMultiplier = 3f;

        [Header("视角设置")]
        [SerializeField] private float _mouseSensitivity = 2f;
        [SerializeField] private float _minPitch = -89f;
        [SerializeField] private float _maxPitch = 89f;

        private float _yaw;
        private float _pitch;

        void Start()
        {
            Vector3 euler = transform.eulerAngles;
            _yaw = euler.y;
            _pitch = euler.x;

            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }

        void OnEnable()
        {
            var gameplay = InputManager.Actions.Gameplay;
            gameplay.Confirm.performed += OnConfirm;
            var debug = InputManager.Actions.Debug;
            debug.ToggleCursor.performed += OnToggleCursor;
            debug.Enable();
        }

        void OnDisable()
        {
            var gameplay = InputManager.Actions.Gameplay;
            gameplay.Confirm.performed -= OnConfirm;
            var debug = InputManager.Actions.Debug;
            debug.ToggleCursor.performed -= OnToggleCursor;
            debug.Disable();
        }

        void Update()
        {
            if (Cursor.lockState == CursorLockMode.Locked)
            {
                HandleRotation();
            }

            HandleMovement();
        }

        private void OnToggleCursor(InputAction.CallbackContext ctx)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }

        private void OnConfirm(InputAction.CallbackContext ctx)
        {
            if (Cursor.lockState == CursorLockMode.None)
            {
                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
            }
        }

        void HandleRotation()
        {
            Vector2 delta = Mouse.current.delta.ReadValue();
            _yaw += delta.x * _mouseSensitivity;
            _pitch -= delta.y * _mouseSensitivity;
            _pitch = Mathf.Clamp(_pitch, _minPitch, _maxPitch);

            transform.rotation = Quaternion.Euler(_pitch, _yaw, 0f);
        }

        void HandleMovement()
        {
            var gameplay = InputManager.Actions.Gameplay;
            Vector2 moveInput = gameplay.Move.ReadValue<Vector2>();

            float upDown = 0f;
            if (gameplay.HeightUp.IsPressed()) upDown -= 1f;
            if (gameplay.HeightDown.IsPressed()) upDown += 1f;

            float speed = _moveSpeed;
            if (gameplay.SpeedBoost.IsPressed()) speed *= _fastMultiplier;

            Vector3 move = transform.right * moveInput.x + transform.forward * moveInput.y + Vector3.up * upDown;
            transform.position += move.normalized * speed * Time.deltaTime;
        }
    }
}
