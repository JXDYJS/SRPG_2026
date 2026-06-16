using System;
using System.Collections.Generic;
using Character.data;
using Managers;
using GamePlay.Visual;
using GamePlay.Units;
using Global;
using UI.Panel;
using UnityEngine;
using UnityEngine.AddressableAssets;
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

            GridVisualManager.Instance.ShowTilesHighlight(_validDeployZones, Color.cyan);
            Debug.Log($"[DeploymentController] StartDeployment: {characters.Count} 个角色, {_validDeployZones.Count} 个部署区, 最大{_maxDeployCount}人");
            if (_validDeployZones.Count <= 10)
            {
                foreach (var z in _validDeployZones)
                    Debug.Log($"[DeploymentController]   deployZone: {z}");
            }
            else
            {
                for (int i = 0; i < 5; i++)
                    Debug.Log($"[DeploymentController]   deployZone[{i}]: {_validDeployZones[i]}");
                Debug.Log($"[DeploymentController]   ... and {_validDeployZones.Count - 5} more");
            }

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

            if (EventSystem.current.IsPointerOverGameObject())
            {
                GridVisualManager.Instance.HideCursor();
                return;
            }

            if (!TryGetMouseGridPosition(out Vector3Int hoverPos))
            {
                GridVisualManager.Instance.HideCursor();
                return;
            }

            if (hoverPos == _lastHoverPos) return;

            _lastHoverPos = hoverPos;

            if (IsValidDeployPosition(hoverPos))
            {
                GridVisualManager.Instance.ShowCursorAt(hoverPos);
            }
            else
            {
                GridVisualManager.Instance.HideCursor();
            }
        }

        private void HandleInput()
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (EventSystem.current.IsPointerOverGameObject())
                {
                    Debug.Log("[DeploymentController] Click blocked: over UI");
                    return;
                }

                if (!TryGetMouseGridPositionVerbose(out Vector3Int clickPos))
                {
                    Debug.Log("[DeploymentController] Click ignored: raycast missed");
                    return;
                }

                Debug.Log($"[DeploymentController] Click at gridPos={clickPos}, selectedIndex={_selectedCharacterIndex}, placementsCount={_placements.Count}");

                if (_selectedCharacterIndex < 0)
                {
                    Debug.Log("[DeploymentController] Click ignored: no character selected");
                    return;
                }

                Debug.Log($"[DeploymentController] Validating position {clickPos}... _maxDeployCount={_maxDeployCount}");

                bool valid = IsValidDeployPositionVerbose(clickPos, out string reason);
                Debug.Log($"[DeploymentController] Validation result for {clickPos}: valid={valid}, reason={reason}");
                if (valid)
                {
                    Debug.Log($"[DeploymentController] Calling PlaceCharacter({_selectedCharacterIndex}, {clickPos})");
                    PlaceCharacter(_selectedCharacterIndex, clickPos);
                }
                else
                {
                    Debug.LogWarning($"[DeploymentController] Cannot place at {clickPos}: {reason}");
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
            Debug.Log($"[DeploymentController] PlaceCharacter ENTERED: index={index}, pos={pos}, placementsCount={_placements.Count}/{_maxDeployCount}");

            if (_placements.Count >= _maxDeployCount && !_placements.ContainsKey(index))
            {
                Debug.LogWarning($"[DeploymentController] Max deploy count reached ({_placements.Count}/{_maxDeployCount})");
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

        private bool IsValidDeployPositionVerbose(Vector3Int pos, out string reason)
        {
            if (!_validDeployZones.Contains(pos))
            {
                reason = $"pos {pos} not in deploy zones (count={_validDeployZones.Count})";
                return false;
            }

            if (!GridVisualManager.CanPutOnGrid(pos))
            {
                reason = $"CanPutOnGrid({pos}) returned false";
                return false;
            }

            MapUnit existingUnit = UnitManager.Instance.GetUnitAt(pos);
            if (existingUnit != null)
            {
                reason = $"unit already at {pos}: {existingUnit.name}";
                return false;
            }

            foreach (var kvp in _placements)
            {
                if (kvp.Value == pos)
                {
                    reason = $"already placed another character at {pos} (charIndex={kvp.Key})";
                    return false;
                }
            }

            reason = "OK";
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
                Vector3Int logicPos = GridPositionTool.WorldToLogicPosition(worldPos);
                return logicPos;
            }
            return Vector3Int.zero;
        }

        private bool TryGetMouseGridPosition(out Vector3Int pos)
        {
            pos = Vector3Int.zero;
            if (mainCam == null) return false;

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (!Physics.Raycast(ray, out RaycastHit hit)) return false;

            Vector3 worldPos = hit.point - hit.normal * 0.01f;
            pos = GridPositionTool.WorldToLogicPosition(worldPos);
            return true;
        }

        private bool TryGetMouseGridPositionVerbose(out Vector3Int pos)
        {
            pos = Vector3Int.zero;
            if (mainCam == null)
            {
                Debug.Log("[DeploymentController] GetMouseGridPosition: mainCam is null");
                return false;
            }

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            Debug.Log($"[DeploymentController] Ray origin={ray.origin}, dir={ray.direction}");

            if (Physics.Raycast(ray, out RaycastHit hit))
            {
                Vector3 worldPos = hit.point - hit.normal * 0.01f;
                pos = GridPositionTool.WorldToLogicPosition(worldPos);
                Debug.Log($"[DeploymentController] Raycast hit: {hit.collider.name} at world={hit.point}, logicPos={pos}");
                return true;
            }

            Debug.Log("[DeploymentController] Raycast hit NOTHING, returning false");
            return false;
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
            CleanupAllPreviews();
            if (Instance == this)
                Instance = null;
        }
    }
}
