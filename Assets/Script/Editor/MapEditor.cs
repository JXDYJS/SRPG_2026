using UnityEngine;
using UnityEditor;
using Managers;

[CustomEditor(typeof(MapManager))]
public class MapEditor : Editor
{
    MapManager _target;
    bool _isEditMode = false;

    void OnEnable()
    {
        _target = (MapManager)target;
    }

    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        GUILayout.Space(10);
        if (GUILayout.Button(_isEditMode ? "退出编辑模式" : "进入编辑模式 (Scene视图画图)"))
        {
            _isEditMode = !_isEditMode;
        }
        
        if (_isEditMode)
        {
            GUILayout.Label("操作说明：\nShift+左键：放置方块\nCtrl+左键：删除方块");
        }
    }

    void OnSceneGUI()
    {
        if (!_isEditMode) return;

        // Steal mouse control so clicks don't select other objects
        HandleUtility.AddDefaultControl(GUIUtility.GetControlID(FocusType.Passive));

        Ray ray = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
        
        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            Vector3 hitPos = hit.point;
            Vector3 normal = hit.normal;
            
            // Place mode: extend one cell along the normal
            if (Event.current.shift) 
            {
                hitPos += normal * (_target.cellSize / 2f);
            }
            // Delete mode: retract along the normal to hit the clicked block
            else if (Event.current.control)
            {
                hitPos -= normal * (_target.cellSize / 2f);
            }

            Vector3Int gridPos = new Vector3Int();
            gridPos.x = Mathf.RoundToInt(hitPos.x / _target.cellSize);
            gridPos.y = (int)(hitPos.y / _target.cellSize);
            gridPos.z = Mathf.RoundToInt(hitPos.z / _target.cellSize);
            Vector3 drawPos = new Vector3(gridPos.x, gridPos.y + 0.5f, gridPos.z) * _target.cellSize;

            Handles.color = Event.current.control ? Color.red : Color.green;
            Handles.DrawWireCube(drawPos, Vector3.one * _target.cellSize);
            
            if (Event.current.type == EventType.MouseDown && Event.current.button == 0)
            {
                if (Event.current.shift)
                {
                    PlaceBlock(gridPos);
                }
                else if (Event.current.control)
                {
                    RemoveBlock(hit.collider.gameObject);
                }
                Event.current.Use(); // consume the event so clicks don't pass through
            }
        }
    }

    void PlaceBlock(Vector3Int pos)
    {
        GameObject prefab = _target.GetFirstPrefab();
        if (prefab == null)
        {
            Debug.LogError("[MapEditor] 没有可用方块，请确保 BlockConfigManager 已配置");
            return;
        }
        
        Vector3 worldPos = new Vector3(pos.x, pos.y, pos.z) * _target.cellSize;
        
        GameObject obj = (GameObject)PrefabUtility.InstantiatePrefab(prefab, _target.mapRoot);
        obj.transform.position = worldPos;
        
        Undo.RegisterCreatedObjectUndo(obj, "Place Block");
    }

    void RemoveBlock(GameObject obj)
    {
        Undo.DestroyObjectImmediate(obj);
    }
}