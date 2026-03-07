using UnityEngine;
using Cinemachine;
using Managers;

namespace GamePlay.VirtualCamera
{
    public class TacticalCameraController : MonoBehaviour
    {
        [Header("注意: 请将 Cinemachine 的 XYZ Damping 设为 0 以防止晃动晕眩")]
        
        [Header("虚拟相机引用")]
        [SerializeField] private CinemachineVirtualCamera _virtualCamera;
        
        [Header("移动设置")]
        [SerializeField] private float _moveSpeed = 8f;
        [SerializeField] private float _moveSmoothTime = 0.1f;
        [SerializeField] private float _heightSpeed = 0.5f;
        [SerializeField] private float _minHeight = 0f;
        [SerializeField] private float _maxHeight = 20f;
        
        [Header("旋转设置")]
        [SerializeField] private float _rotationSpeed = 10f;
        
        [Header("缩放设置")]
        [SerializeField] private float _zoomSpeed = 5f;
        [SerializeField] private float _minZoomDistance = 5f;
        [SerializeField] private float _maxZoomDistance = 30f;
        
        [Header("Blender视角预设")]
        [SerializeField] private float _viewTransitionSpeed = 10f;
        [SerializeField] private Vector3 _defaultOffset = new Vector3(0f, 8f, -10f);
        [SerializeField] private Vector3 _topDownOffset = new Vector3(0f, 18f, -0.5f);
        [SerializeField] private Vector3 _frontOffset = new Vector3(0f, 5f, -20f);
        [SerializeField] private Vector3 _rightOffset = new Vector3(20f, 5f, 0f);

        private CinemachineTransposer _transposer;
        private Vector3 _targetFollowOffset;
        private Vector3 _targetPosition;
        private float _targetRotationY;
        
        private Vector2 _mapMinBounds;
        private Vector2 _mapMaxBounds;
        private Vector3 _mapCenter;
        private bool _mapBoundsInitialized;

        void Awake()
        {
            if (_virtualCamera == null)
            {
                _virtualCamera = FindFirstObjectByType<CinemachineVirtualCamera>();
            }
            
            if (_virtualCamera != null)
            {
                _transposer = _virtualCamera.GetCinemachineComponent<CinemachineTransposer>();
            }
            
            _targetRotationY = transform.eulerAngles.y;
            _targetPosition = transform.position;
        }

        void Start()
        {
            if (_transposer != null)
            {
                _targetFollowOffset = _defaultOffset;
                _transposer.m_FollowOffset = _defaultOffset;
            }
        }

        void Update()
        {
            UpdateMapBounds();
            HandleMovement();
            HandleRotation();
            HandleZoom();
            HandleBlenderViews();
            ApplySmoothTransition();
        }

        void UpdateMapBounds()
        {
            if (_mapBoundsInitialized) return;
            
            if (MapManager.Instance != null)
            {
                MapManager.Instance.GetMapBounds(out _mapMinBounds, out _mapMaxBounds);
                
                if (_mapMinBounds != Vector2.zero || _mapMaxBounds != Vector2.zero)
                {
                    _mapCenter = new Vector3(
                        (_mapMinBounds.x + _mapMaxBounds.x) * 0.5f,
                        0f,
                        (_mapMinBounds.y + _mapMaxBounds.y) * 0.5f
                    );
                    _targetPosition = new Vector3(_mapCenter.x, _targetPosition.y, _mapCenter.z);
                    _mapBoundsInitialized = true;
                }
            }
        }

        void HandleMovement()
        {
            float h = Input.GetAxisRaw("Horizontal");
            float v = Input.GetAxisRaw("Vertical");
            
            if (h == 0f && v == 0f)
            {
                h = Input.GetKey(KeyCode.LeftArrow) ? -1f : Input.GetKey(KeyCode.RightArrow) ? 1f : 0f;
                v = Input.GetKey(KeyCode.UpArrow) ? 1f : Input.GetKey(KeyCode.DownArrow) ? -1f : 0f;
            }

            if (h != 0f || v != 0f)
            {
                Camera mainCamera = Camera.main;
                if (mainCamera != null)
                {
                    Vector3 forward = mainCamera.transform.forward;
                    forward.y = 0f;
                    forward.Normalize();
                    
                    Vector3 right = mainCamera.transform.right;
                    right.y = 0f;
                    right.Normalize();
                    
                    Vector3 moveDirection = (forward * v + right * h).normalized;
                    _targetPosition += moveDirection * _moveSpeed * Time.deltaTime;
                }
            }

            if (Input.GetKey(KeyCode.K))
            {
                _targetPosition.y += _heightSpeed * Time.deltaTime;
            }
            
            if (Input.GetKey(KeyCode.J))
            {
                _targetPosition.y -= _heightSpeed * Time.deltaTime;
            }
            
            _targetPosition.y = Mathf.Clamp(_targetPosition.y, _minHeight, _maxHeight);
        }

        void HandleRotation()
        {
            if (Input.GetKeyDown(KeyCode.Q))
            {
                _targetRotationY += 90f;
                _targetPosition = new Vector3(_mapCenter.x, _targetPosition.y, _mapCenter.z);
            }
            
            if (Input.GetKeyDown(KeyCode.E))
            {
                _targetRotationY -= 90f;
                _targetPosition = new Vector3(_mapCenter.x, _targetPosition.y, _mapCenter.z);
            }
        }

        void HandleZoom()
        {
            float scroll = Input.GetAxis("Mouse ScrollWheel");
            
            if (Mathf.Abs(scroll) > 0.01f)
            {
                float currentDistance = _targetFollowOffset.magnitude;
                float newDistance = currentDistance - scroll * _zoomSpeed;
                newDistance = Mathf.Clamp(newDistance, _minZoomDistance, _maxZoomDistance);
                
                _targetFollowOffset = _targetFollowOffset.normalized * newDistance;
            }
        }

        void HandleBlenderViews()
        {
            if (Input.GetKeyDown(KeyCode.Keypad7)) _targetFollowOffset = _topDownOffset;
            if (Input.GetKeyDown(KeyCode.Keypad1)) _targetFollowOffset = _frontOffset;
            if (Input.GetKeyDown(KeyCode.Keypad3)) _targetFollowOffset = _rightOffset;
            if (Input.GetKeyDown(KeyCode.Keypad5)) _targetFollowOffset = _defaultOffset;
        }

        void ApplySmoothTransition()
        {
            if (_transposer != null)
            {
                _transposer.m_FollowOffset = Vector3.Lerp(
                    _transposer.m_FollowOffset, 
                    _targetFollowOffset, 
                    _viewTransitionSpeed * Time.deltaTime
                );
            }
            
            Vector3 clampedPosition = _targetPosition;
            
            if (_mapBoundsInitialized)
            {
                clampedPosition = new Vector3(
                    Mathf.Clamp(_targetPosition.x, _mapMinBounds.x, _mapMaxBounds.x),
                    _targetPosition.y,
                    Mathf.Clamp(_targetPosition.z, _mapMinBounds.y, _mapMaxBounds.y)
                );
            }
            
            transform.position = Vector3.Lerp(
                transform.position,
                clampedPosition,
                _moveSmoothTime * 10f * Time.deltaTime
            );
            
            transform.rotation = Quaternion.Slerp(
                transform.rotation, 
                Quaternion.Euler(0f, _targetRotationY, 0f), 
                _rotationSpeed * Time.deltaTime
            );
        }
    }
}
