//CREATE BY GEMINI

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

    // 核心：场景交互
    void OnSceneGUI()
    {
        if (!_isEditMode) return;

        // 1. 屏蔽鼠标对其他物体的选中，强制把控制权交给代码
        HandleUtility.AddDefaultControl(GUIUtility.GetControlID(FocusType.Passive));

        // 2. 发射射线检测鼠标位置
        Ray ray = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
        
        // 这里的逻辑：
        // 检测到一个不可见的 "构建平面" 或者现有的方块
        // 为了简单，我们先检测现有的方块
        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            // 计算格子坐标
            Vector3 hitPos = hit.point;
            Vector3 normal = hit.normal;
            
            // 如果是放置模式，往法线方向延伸一格
            if (Event.current.shift) 
            {
                hitPos += normal * (_target.cellSize / 2f);
            }
            // 如果是删除模式，往法线反方向缩进（就是点中那个）
            else if (Event.current.control)
            {
                hitPos -= normal * (_target.cellSize / 2f);
            }

            //Vector3Int gridPos = Vector3Int.RoundToInt(hitPos / _target.cellSize);
            Vector3Int gridPos = new Vector3Int();
            gridPos.x = Mathf.RoundToInt(hitPos.x / _target.cellSize);
            gridPos.y = (int)(hitPos.y / _target.cellSize);
            gridPos.z = Mathf.RoundToInt(hitPos.z / _target.cellSize);
            Vector3 drawPos = new Vector3(gridPos.x, gridPos.y + 0.5f, gridPos.z) * _target.cellSize;

            // 绘制预览框
            Handles.color = Event.current.control ? Color.red : Color.green;
            Handles.DrawWireCube(drawPos, Vector3.one * _target.cellSize);
            
            // 3. 处理点击事件
            if (Event.current.type == EventType.MouseDown && Event.current.button == 0)
            {
                if (Event.current.shift)
                {
                    // 放置方块
                    PlaceBlock(gridPos);
                }
                else if (Event.current.control)
                {
                    // 删除方块
                    RemoveBlock(hit.collider.gameObject);
                }
                Event.current.Use(); // 消耗掉事件，防止点穿
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