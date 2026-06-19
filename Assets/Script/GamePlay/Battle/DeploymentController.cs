using System;
using System.Collections.Generic;
using Character.data;
using Managers;
using GamePlay.InputSystem;
using GamePlay.Visual;
using GamePlay.Units;
using Global;
using UI.Panel;
using UnityEngine;
using UnityEngine.AddressableAssets;
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

        private List<MapUnit> _previewUnits;
        private static readonly Vector3 HIDDEN_POS = new Vector3(-10000, -10000, -10000);

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
            List<MapUnit> previewUnits,
            List<Vector3Int> deployZones,
            int maxDeployCount)
        {
            _availableCharacters = characters;
            _previewUnits = previewUnits;
            _validDeployZones = deployZones;
            _maxDeployCount = maxDeployCount;
            _placements.Clear();
            _selectedCharacterIndex = -1;
            IsActive = true;

            // 屏蔽战斗输入控制器，避免硬编码互相感知
            InputLock.PushLock("Deployment");

            GridVisualManager.Instance.ShowTilesHighlight(_validDeployZones, Color.cyan);
            Debug.Log($"[DeploymentController] StartDeployment: {characters.Count} 个角色, {_validDeployZones.Count} 个部署区, 最大{_maxDeployCount}人");

            var popup = UIManager.Instance.OpenPanel<ChoosePopWindowPanel>(null, Managers.UILayer.Popup);
            if (popup != null)
            {
                popup.Initialize(characters);
                popup.OnCharacterClicked = OnSlotClicked;
                popup.OnStartClicked = OnStartClicked;
            }
            else
            {
                Debug.LogError("[DeploymentController] OpenPanel<ChoosePopWindowPanel> 返回 null");
            }
        }

        private void HandleHover()
        {
            if (_selectedCharacterIndex < 0) return;

            if (InputUtil.IsPointerOverUI)
            {
                Debug.Log("[Cursor] Hide: over UI");
                GridVisualManager.Instance.HideCursor();
                return;
            }

            if (!GridPositionTool.TryGetMouseGridPosition(mainCam, out Vector3Int hoverPos))
            {
                Debug.Log("[Cursor] Hide: raycast miss");
                GridVisualManager.Instance.HideCursor();
                return;
            }

            if (hoverPos == _lastHoverPos) return;

            _lastHoverPos = hoverPos;

            if (IsValidDeployPosition(hoverPos))
            {
                Debug.Log($"[Cursor] Show at {hoverPos}");
                GridVisualManager.Instance.ShowCursorAt(hoverPos);
            }
            else
            {
                Debug.Log($"[Cursor] Hide: pos {hoverPos} invalid (deployZones={_validDeployZones.Contains(hoverPos)}, canPut={GridVisualManager.CanPutOnGrid(hoverPos)}, unit={UnitManager.Instance.GetUnitAt(hoverPos) != null})");
                GridVisualManager.Instance.HideCursor();
            }
        }

        private void HandleInput()
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (InputUtil.IsPointerOverUI) return;

                if (!GridPositionTool.TryGetMouseGridPosition(mainCam, out Vector3Int clickPos)) return;

                if (_selectedCharacterIndex < 0) return;

                if (IsValidDeployPosition(clickPos))
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
                SelectCharacter(index);
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

            ShowPreviewAt(index, pos);

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

            HidePreview(index);

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

            CleanupAllPreviews();

            var slots = new List<DeploymentSlot>();
            foreach (var kvp in _placements)
            {
                slots.Add(new DeploymentSlot
                {
                    CharacterIndex = kvp.Key,
                    GridPosition = kvp.Value,
                    Facing = UnitFacing.North
                });
            }

            IsActive = false;
            GridVisualManager.Instance.HideCursor();
            InputLock.PopLock("Deployment");

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

        private void ShowPreviewAt(int index, Vector3Int pos)
        {
            if (_previewUnits == null || index >= _previewUnits.Count) return;
            MapUnit preview = _previewUnits[index];
            if (preview == null) return;

            Vector3 worldPos = MapManager.Instance.GetWorldPosition(pos);
            preview.transform.position = worldPos;
            preview.gameObject.SetActive(true);
        }

        private void HidePreview(int index)
        {
            if (_previewUnits == null || index >= _previewUnits.Count) return;
            MapUnit preview = _previewUnits[index];
            if (preview == null) return;

            preview.gameObject.SetActive(false);
            preview.transform.position = HIDDEN_POS;
        }

        private void CleanupAllPreviews()
        {
            if (_previewUnits == null) return;
            foreach (var mu in _previewUnits)
            {
                if (mu != null && mu.gameObject != null)
                {
                    Destroy(mu.gameObject);
                }
            }
            _previewUnits.Clear();
        }

        void OnDestroy()
        {
            // 保护性弹出：异常退出时防止输入锁残留
            if (IsActive) InputLock.PopLock("Deployment");
            CleanupAllPreviews();
            if (Instance == this)
                Instance = null;
        }
    }
}
