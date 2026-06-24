using UnityEngine;

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

        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
            }

            if (Input.GetMouseButtonDown(0) && Cursor.lockState == CursorLockMode.None)
            {
                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
            }

            if (Cursor.lockState == CursorLockMode.Locked)
            {
                HandleRotation();
            }

            HandleMovement();
        }

        void HandleRotation()
        {
            _yaw += Input.GetAxis("Mouse X") * _mouseSensitivity;
            _pitch -= Input.GetAxis("Mouse Y") * _mouseSensitivity;
            _pitch = Mathf.Clamp(_pitch, _minPitch, _maxPitch);

            transform.rotation = Quaternion.Euler(_pitch, _yaw, 0f);
        }

        void HandleMovement()
        {
            float h = Input.GetAxisRaw("Horizontal");
            float v = Input.GetAxisRaw("Vertical");

            float upDown = 0f;
            if (Input.GetKey(KeyCode.Q)) upDown -= 1f;
            if (Input.GetKey(KeyCode.E)) upDown += 1f;

            float speed = _moveSpeed;
            if (Input.GetKey(KeyCode.LeftShift)) speed *= _fastMultiplier;

            Vector3 move = transform.right * h + transform.forward * v + Vector3.up * upDown;
            transform.position += move.normalized * speed * Time.deltaTime;
        }
    }
}
