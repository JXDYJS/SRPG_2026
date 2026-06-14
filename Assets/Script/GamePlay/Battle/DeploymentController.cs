using System;
using System.Collections.Generic;
using Character.data;
using Managers;
using GamePlay.Visual;
using Global;
using UI.Panel;
using UnityEngine;
using UnityEngine.EventSystems;

namespace GamePlay.Battle
{
    /// <summary>
    /// DeploymentController — 部署阶段输入控制器
    /// 管理"弹窗选人 → 点击格子放置"的完整交互流程
    /// 由 BattleFlowManager 在 Deploying 状态激活
    /// </summary>
    public class DeploymentController : MonoBehaviour
    {
        [Header("相机")]
        public Camera mainCam;

        public static DeploymentController Instance { get; private set; }

        public bool IsActive { get; private set; }

        private List<CharacterData> _availableCharacters;
        private List<Vector3Int> _validDeployZones;
        private int _maxDeployCount;

        private Dictionary<int, Vector3Int> _placements = new Dictionary<int, Vector3Int>();
        private int _selectedCharacterIndex = -1;

        private Vector3Int _lastHoverPos;

        public event Action<List<DeploymentSlot>> OnDeploymentConfirmed;

        void Awake()
        {
            Instance = this;
        }

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
        }

        void Update()
        {
            if (!IsActive) return;

            HandleHover();
            HandleInput();
        }

        public void StartDeployment(
            List<CharacterData> characters,
            List<Vector3Int> deployZones,
            int maxDeployCount)
        {
            _availableCharacters = characters;
            _validDeployZones = deployZones;
            _maxDeployCount = maxDeployCount;
            _placements.Clear();
            _selectedCharacterIndex = -1;
            IsActive = true;

            GridVisualManager.Instance.ShowTilesHighlight(_validDeployZones, Color.cyan);
            Debug.Log($"[DeploymentController] 高亮了 {_validDeployZones.Count} 个部署区");

            var popup = UIManager.Instance.OpenPanel<ChoosePopWindowPanel>(null, Managers.UILayer.Popup);
            if (popup != null)
            {
                popup.Initialize(characters);
                popup.OnCharacterClicked = OnSlotClicked;
                popup.OnStartClicked = OnStartClicked;
            }
        }

        private void HandleHover()
        {
            Vector3Int hoverPos = GetMouseGridPosition();
            if (hoverPos == _lastHoverPos) return;

            _lastHoverPos = hoverPos;

            if (_selectedCharacterIndex >= 0
                && !EventSystem.current.IsPointerOverGameObject()
                && IsValidDeployPosition(hoverPos))
            {
                GridVisualManager.Instance.ShowCursorAt(hoverPos);
            }
            else if (_selectedCharacterIndex < 0)
            {
                GridVisualManager.Instance.HideCursor();
            }
        }

        private void HandleInput()
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (EventSystem.current.IsPointerOverGameObject()) return;

                Vector3Int clickPos = GetMouseGridPosition();

                if (_selectedCharacterIndex >= 0 && IsValidDeployPosition(clickPos))
                {
                    PlaceCharacter(_selectedCharacterIndex, clickPos);
                }
            }

            if (Input.GetMouseButtonDown(1))
            {
                if (_selectedCharacterIndex >= 0)
                {
                    DeselectCharacter();
                }
            }
        }

        private void OnSlotClicked(int index)
        {
            if (index < 0 || index >= _availableCharacters.Count) return;

            if (_placements.ContainsKey(index))
            {
                RemovePlacement(index);
                return;
            }

            if (_selectedCharacterIndex == index)
            {
                DeselectCharacter();
                return;
            }

            if (_selectedCharacterIndex >= 0)
            {
                DeselectCharacter();
            }

            SelectCharacter(index);
        }

        private void SelectCharacter(int index)
        {
            _selectedCharacterIndex = index;
            Debug.Log($"[DeploymentController] Selected character {index}: {_availableCharacters[index].CharacterName}");
        }

        private void DeselectCharacter()
        {
            _selectedCharacterIndex = -1;
            GridVisualManager.Instance.HideCursor();
        }

        private void PlaceCharacter(int index, Vector3Int pos)
        {
            if (_placements.Count >= _maxDeployCount && !_placements.ContainsKey(index))
            {
                Debug.LogWarning("[DeploymentController] Max deploy count reached");
                return;
            }

            _placements[index] = pos;
            Debug.Log($"[DeploymentController] Placed character {index} at {pos}");

            var popup = UIManager.Instance.GetPanel<ChoosePopWindowPanel>();
            if (popup != null)
            {
                popup.MarkSlotPlaced(index);
            }

            DeselectCharacter();

            UpdateStartButton();
        }

        private void RemovePlacement(int index)
        {
            if (!_placements.ContainsKey(index)) return;

            _placements.Remove(index);
            Debug.Log($"[DeploymentController] Removed placement of character {index}");

            var popup = UIManager.Instance.GetPanel<ChoosePopWindowPanel>();
            if (popup != null)
            {
                popup.MarkSlotAvailable(index);
            }

            UpdateStartButton();
        }

        private bool IsValidDeployPosition(Vector3Int pos)
        {
            if (!_validDeployZones.Contains(pos)) return false;

            if (!GridVisualManager.CanPutOnGrid(pos)) return false;

            if (UnitManager.Instance.GetUnitAt(pos) != null) return false;

            foreach (var kvp in _placements)
            {
                if (kvp.Value == pos) return false;
            }

            return true;
        }

        private void OnStartClicked()
        {
            if (_placements.Count == 0)
            {
                Debug.LogWarning("[DeploymentController] 请至少部署一个角色");
                return;
            }

            var slots = new List<DeploymentSlot>();
            foreach (var kvp in _placements)
            {
                slots.Add(new DeploymentSlot
                {
                    CharacterIndex = kvp.Key,
                    GridPosition = kvp.Value,
                    Facing = UnitFacing.South
                });
            }

            IsActive = false;
            GridVisualManager.Instance.HideCursor();

            var popup = UIManager.Instance.GetPanel<ChoosePopWindowPanel>();
            if (popup != null)
            {
                UIManager.Instance.ClosePanel<ChoosePopWindowPanel>();
            }

            Debug.Log($"[DeploymentController] Confirmed deployment with {slots.Count} slots");
            OnDeploymentConfirmed?.Invoke(slots);
        }

        private void UpdateStartButton()
        {
            var popup = UIManager.Instance.GetPanel<ChoosePopWindowPanel>();
            if (popup != null)
            {
                popup.SetStartButtonEnabled(_placements.Count > 0);
            }
        }

        private Vector3Int GetMouseGridPosition()
        {
            if (mainCam == null) return Vector3Int.zero;

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit))
            {
                Vector3 worldPos = hit.point - hit.normal * 0.01f;
                return GridPositionTool.WorldToLogicPosition(worldPos);
            }
            return Vector3Int.zero;
        }

        void OnDestroy()
        {
            if (Instance == this)
                Instance = null;
        }
    }
}
