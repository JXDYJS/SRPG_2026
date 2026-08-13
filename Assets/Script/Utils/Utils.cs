using UnityEngine;
using Global;
using GamePlay.Grid;
using Managers;
using System.Collections.Generic;
using GamePlay.Skill;
using UnityEngine.AddressableAssets;
using Cysharp.Threading.Tasks;
using System;
using DG.Tweening;
using UI.Panel;
namespace Utils
{
    public static class Utils
    {
        public static byte getBlockTypeVal(BlockType type)
        {
            if (type == BlockType.Air || type == BlockType.Liquid)
            {
                return 0;
            }
            if (type == BlockType.Solid)
            {
                return 1;
            }
            if (type == BlockType.Stairs || type == BlockType.Slab)
            {
                return 2;
            }
            return 255;
        }
        public static string GetSkillSlotTypeString(SkillSlotType type)
        {
            if (type == SkillSlotType.NormalAttack) return "Attack";
            if (type == SkillSlotType.Skill1 ||
            type == SkillSlotType.Skill2 ||
            type == SkillSlotType.Skill3) return "Skill";
            if (type == SkillSlotType.Passive1 ||
            type == SkillSlotType.Passive2 ||
            type == SkillSlotType.Passive3 ||
            type == SkillSlotType.Passive4 ||
            type == SkillSlotType.Passive5) return "Passive";
            if (type == SkillSlotType.Ultimate) return "Ultimate";
            return "error type";
        }

        /// <summary>Sets layer on all child transforms; silently returns if layerName is invalid.</summary>
        public static void SetLayerRecursively(GameObject go, string layerName)
        {
            if (go == null) return;
            int layer = LayerMask.NameToLayer(layerName);
            if (layer < 0) return;
            foreach (Transform t in go.GetComponentsInChildren<Transform>(true))
            {
                t.gameObject.layer = layer;
            }
        }

        /// <summary>Resolves a type by name (short or fully qualified) in the current assembly.</summary>
        public static Type ResolveType(string className)
        {
            var assembly = typeof(Utils).Assembly;
            Type type = assembly.GetType(className);
            if (type != null) return type;

            foreach (var t in assembly.GetExportedTypes())
            {
                if (t.FullName == className || t.Name == className)
                {
                    return t;
                }
            }
            return null;
        }

        /// <summary>Reopens the map and unlocks the next level without closing the window.</summary>
        public static void ReturnToMap()
        {
            var mapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            if (mapPopWindow != null)
            {
                mapPopWindow.NextLevel();
            }
        }

        /// <summary>Closes the specified panel and returns to the map.</summary>
        public static void FinishNode<T>() where T : BaseUIPanel
        {
            UIManager.Instance.ClosePanel<T>();
            ReturnToMap();
        }


        /// <summary>Instantiates an Addressable asset under the given parent.</summary>
        public static async UniTask<GameObject> InstantiateAddressableAsync(string key, Transform parent)
        {
            var handle = Addressables.InstantiateAsync(key, parent);
            try
            {
                return await handle;
            }
            catch (Exception e)
            {
                Debug.LogError($"实例化 Addressables 资源失败 '{key}': {e.Message}");
                return null;
            }
        }
        /// <summary>Combines a seed with row/column to build node seeds.</summary>
        public static int CombineSeed(int seed, int row, int col)
        {
            uint h = (uint)seed;
            h ^= (uint)row * 0x9E3779B1u;
            h ^= (uint)col * 0x85EBCA77u;
            h ^= h >> 16;
            h *= 0x7FEB352Du;
            h ^= h >> 15;
            h *= 0x846CA68Bu;
            h ^= h >> 16;
            return (int)h;
        }

        public static void Shuffle<T>(this IList<T> list)
        {
            if (list == null) throw new ArgumentNullException(nameof(list));

            int n = list.Count;

            for (int i = n - 1; i > 0; i--)
            {
                int j = UnityEngine.Random.Range(0, i + 1);
                (list[i], list[j]) = (list[j], list[i]);
            }
        }
    }

    public static class DT
    {
        private static void AddToSequence(Sequence seq, object item, bool isAppend)
        {
            if (isAppend)
            {
                if (item is Tween t) seq.Append(t);
                else if (item is Sequence s) seq.Append(s);
                else if (item is System.Action a) seq.AppendCallback(() => a());
                else if (item is float f) seq.AppendInterval(f);
            }
            else
            {
                if (item is Tween t) seq.Join(t);
                else if (item is Sequence s) seq.Join(s);
                else if (item is System.Action a) seq.JoinCallback(() => a());
                else if (item is float f) seq.AppendInterval(f);
            }
        }

        public static Sequence Append(params object[] items)
        {
            Sequence seq = DOTween.Sequence();
            foreach (var item in items) AddToSequence(seq, item, true);
            return seq;
        }

        public static Sequence Join(params object[] items)
        {
            Sequence seq = DOTween.Sequence();
            foreach (var item in items) AddToSequence(seq, item, false);
            return seq;
        }
    }

    public static class GridOcclusionUtils
    {
        public struct RayData
        {
            public Vector3 Origin;
            public Vector3 DirInv;
        }

        public static bool IsVisible3D(Grid.VoxelGrid grid, Vector3 start, Vector3 end)
        {
            Vector3 direction = end - start;
            float maxDistance = direction.magnitude;
            if (maxDistance <= 0.0001f) return true;
            direction /= maxDistance;

            RayData ray = new RayData
            {
                Origin = start,
                DirInv = new Vector3(1f / direction.x, 1f / direction.y, 1f / direction.z)
            };

            int currentX = Mathf.FloorToInt(start.x);
            int currentY = Mathf.FloorToInt(start.y);
            int currentZ = Mathf.FloorToInt(start.z);

            int endX = Mathf.FloorToInt(end.x);
            int endY = Mathf.FloorToInt(end.y);
            int endZ = Mathf.FloorToInt(end.z);

            int stepX = (direction.x > 0f) ? 1 : ((direction.x < 0f) ? -1 : 0);
            int stepY = (direction.y > 0f) ? 1 : ((direction.y < 0f) ? -1 : 0);
            int stepZ = (direction.z > 0f) ? 1 : ((direction.z < 0f) ? -1 : 0);

            float tDeltaX = (stepX != 0) ? Mathf.Abs(1f / direction.x) : float.MaxValue;
            float tDeltaY = (stepY != 0) ? Mathf.Abs(1f / direction.y) : float.MaxValue;
            float tDeltaZ = (stepZ != 0) ? Mathf.Abs(1f / direction.z) : float.MaxValue;

            float tMaxX = (stepX > 0) ? (Mathf.Floor(start.x) + 1f - start.x) * tDeltaX : ((stepX < 0) ? (start.x - Mathf.Floor(start.x)) * tDeltaX : float.MaxValue);
            float tMaxY = (stepY > 0) ? (Mathf.Floor(start.y) + 1f - start.y) * tDeltaY : ((stepY < 0) ? (start.y - Mathf.Floor(start.y)) * tDeltaY : float.MaxValue);
            float tMaxZ = (stepZ > 0) ? (Mathf.Floor(start.z) + 1f - start.z) * tDeltaZ : ((stepZ < 0) ? (start.z - Mathf.Floor(start.z)) * tDeltaZ : float.MaxValue);

            float currentDistance = 0f;
            int maxIterations = 200;

            for (int i = 0; i < maxIterations; i++)
            {
                byte blockType = grid.GetBlock(currentX, currentY, currentZ);

                if (blockType != 0)
                {
                    if (blockType == 1)
                    {
                        return false;
                    }

                    if (blockType == 2)
                    {
                        float blockHeight = 0.5f;

                        Vector3 min = new Vector3(currentX, currentY, currentZ);
                        Vector3 max = new Vector3(currentX + 1f, currentY + blockHeight, currentZ + 1f);

                        if (RayIntersectsAABB(ray, min, max))
                        {
                            return false;
                        }
                    }
                }

                if (currentX == endX && currentY == endY && currentZ == endZ) return true;

                if (tMaxX < tMaxY)
                {
                    if (tMaxX < tMaxZ) { currentDistance = tMaxX; currentX += stepX; tMaxX += tDeltaX; }
                    else { currentDistance = tMaxZ; currentZ += stepZ; tMaxZ += tDeltaZ; }
                }
                else
                {
                    if (tMaxY < tMaxZ) { currentDistance = tMaxY; currentY += stepY; tMaxY += tDeltaY; }
                    else { currentDistance = tMaxZ; currentZ += stepZ; tMaxZ += tDeltaZ; }
                }

                if (currentDistance > maxDistance) return true;
            }
            return true;
        }

        /// <summary>Voxel occlusion check for LogicalGrid, reusing DDA via getBlockTypeVal.</summary>
        public static bool IsVisible3D(LogicalGrid grid, Vector3 start, Vector3 end)
        {
            Vector3 direction = end - start;
            float maxDistance = direction.magnitude;
            if (maxDistance <= 0.0001f) return true;
            direction /= maxDistance;

            RayData ray = new RayData
            {
                Origin = start,
                DirInv = new Vector3(1f / direction.x, 1f / direction.y, 1f / direction.z)
            };

            int currentX = Mathf.FloorToInt(start.x);
            int currentY = Mathf.FloorToInt(start.y);
            int currentZ = Mathf.FloorToInt(start.z);

            int endX = Mathf.FloorToInt(end.x);
            int endY = Mathf.FloorToInt(end.y);
            int endZ = Mathf.FloorToInt(end.z);

            int stepX = (direction.x > 0f) ? 1 : ((direction.x < 0f) ? -1 : 0);
            int stepY = (direction.y > 0f) ? 1 : ((direction.y < 0f) ? -1 : 0);
            int stepZ = (direction.z > 0f) ? 1 : ((direction.z < 0f) ? -1 : 0);

            float tDeltaX = (stepX != 0) ? Mathf.Abs(1f / direction.x) : float.MaxValue;
            float tDeltaY = (stepY != 0) ? Mathf.Abs(1f / direction.y) : float.MaxValue;
            float tDeltaZ = (stepZ != 0) ? Mathf.Abs(1f / direction.z) : float.MaxValue;

            float tMaxX = (stepX > 0) ? (Mathf.Floor(start.x) + 1f - start.x) * tDeltaX : ((stepX < 0) ? (start.x - Mathf.Floor(start.x)) * tDeltaX : float.MaxValue);
            float tMaxY = (stepY > 0) ? (Mathf.Floor(start.y) + 1f - start.y) * tDeltaY : ((stepY < 0) ? (start.y - Mathf.Floor(start.y)) * tDeltaY : float.MaxValue);
            float tMaxZ = (stepZ > 0) ? (Mathf.Floor(start.z) + 1f - start.z) * tDeltaZ : ((stepZ < 0) ? (start.z - Mathf.Floor(start.z)) * tDeltaZ : float.MaxValue);

            float currentDistance = 0f;
            int maxIterations = Mathf.Max(200, Mathf.CeilToInt(maxDistance * 2));

            for (int i = 0; i < maxIterations; i++)
            {
                BlockType block = grid.GetBlock(currentX, currentY, currentZ);
                byte blockVal = Utils.getBlockTypeVal(block);

                if (blockVal != 0)
                {
                    if (blockVal == 1)
                    {
                        return false;
                    }

                    if (blockVal == 2)
                    {
                        float blockHeight = grid.GetBlockYSize(new Vector3Int(currentX, currentY, currentZ));
                        if (blockHeight <= 0f) blockHeight = 0.5f;

                        Vector3 min = new Vector3(currentX, currentY, currentZ);
                        Vector3 max = new Vector3(currentX + 1f, currentY + blockHeight, currentZ + 1f);

                        if (RayIntersectsAABB(ray, min, max))
                        {
                            return false;
                        }
                    }
                }

                if (currentX == endX && currentY == endY && currentZ == endZ) return true;

                if (tMaxX < tMaxY)
                {
                    if (tMaxX < tMaxZ) { currentDistance = tMaxX; currentX += stepX; tMaxX += tDeltaX; }
                    else { currentDistance = tMaxZ; currentZ += stepZ; tMaxZ += tDeltaZ; }
                }
                else
                {
                    if (tMaxY < tMaxZ) { currentDistance = tMaxY; currentY += stepY; tMaxY += tDeltaY; }
                    else { currentDistance = tMaxZ; currentZ += stepZ; tMaxZ += tDeltaZ; }
                }

                if (currentDistance > maxDistance) return true;
            }
            return true;
        }

        /// <summary>Slab-method ray/AABB intersection test with no allocations.</summary>
        public static bool RayIntersectsAABB(RayData ray, Vector3 min, Vector3 max)
        {
            float t1 = (min.x - ray.Origin.x) * ray.DirInv.x;
            float t2 = (max.x - ray.Origin.x) * ray.DirInv.x;
            float tmin = Mathf.Min(t1, t2);
            float tmax = Mathf.Max(t1, t2);

            t1 = (min.y - ray.Origin.y) * ray.DirInv.y;
            t2 = (max.y - ray.Origin.y) * ray.DirInv.y;
            tmin = Mathf.Max(tmin, Mathf.Min(t1, t2));
            tmax = Mathf.Min(tmax, Mathf.Max(t1, t2));

            t1 = (min.z - ray.Origin.z) * ray.DirInv.z;
            t2 = (max.z - ray.Origin.z) * ray.DirInv.z;
            tmin = Mathf.Max(tmin, Mathf.Min(t1, t2));
            tmax = Mathf.Min(tmax, Mathf.Max(t1, t2));

            // tmax >= 0 ensures the box is in front of the ray origin
            return tmax >= tmin && tmax >= 0f;
        }
    }

    /// <summary>Debug visualizer drawing colored tiles in the Scene view; used with DebugGizmosHost.</summary>
    public static class DebugGizmos
    {
        private struct HighlightInfo
        {
            public Vector3Int pos;
            public Color color;
            public int lifetime; // remaining frames; -1 = never expires
        }

        private static List<HighlightInfo> _highlights = new List<HighlightInfo>();

        private static void EnsureHost()
        {
            if (DebugSystem.DebugGizmosHost.Instance != null) return;

            var existing = UnityEngine.Object.FindObjectOfType<DebugSystem.DebugGizmosHost>();
            if (existing != null) return;

            var go = new GameObject("[DebugGizmos]");
            if (Application.isPlaying)
                UnityEngine.Object.DontDestroyOnLoad(go);
            go.AddComponent<DebugSystem.DebugGizmosHost>();
        }

        /// <summary>Highlights a tile for the given lifetime in frames; -1 = permanent.</summary>
        public static void MarkTile(Vector3Int pos, Color? color = null, int lifetime = 300)
        {
            EnsureHost();
            _highlights.Add(new HighlightInfo
            {
                pos = pos,
                color = color ?? new Color(1f, 0.2f, 0.2f, 0.6f),
                lifetime = lifetime
            });
        }

        /// <summary>Marks a heatmap by mapping score values to color intensity.</summary>
        public static void MarkTiles(IEnumerable<KeyValuePair<Vector3Int, float>> scores, Color hotColor, float maxScore)
        {
            foreach (var kv in scores)
            {
                float t = Mathf.Clamp01(kv.Value / maxScore);
                Color c = Color.Lerp(new Color(0, 0, 0, 0), hotColor, t);
                c.a = 0.2f + t * 0.6f;
                MarkTile(kv.Key, c, -1);
            }
        }

        /// <summary>Decrements highlight lifetimes and removes expired ones.</summary>
        public static void TickLifetime()
        {
            for (int i = _highlights.Count - 1; i >= 0; i--)
            {
                var h = _highlights[i];
                if (h.lifetime <= 0) continue;
                h.lifetime--;
                if (h.lifetime <= 0)
                    _highlights.RemoveAt(i);
                else
                    _highlights[i] = h;
            }
        }

        /// <summary>Called from MonoBehaviour.OnDrawGizmos.</summary>
        public static void RenderAll()
        {
            if (MapManager.Instance == null) return;
            float cellSize = MapManager.Instance.cellSize;
            float drawSize = cellSize + 0.1f;

            foreach (var h in _highlights)
            {
                Gizmos.color = h.color;

                Vector3 bottom = new Vector3(h.pos.x, h.pos.y, h.pos.z) * cellSize;
                Vector3 center = bottom + new Vector3(0, 0.5f * cellSize, 0);
                Vector3 size = new Vector3(drawSize, drawSize, drawSize);

                Gizmos.DrawCube(center, size);
            }
        }

        public static void Clear() => _highlights.Clear();
        public static int Count => _highlights.Count;
    }
    public class GameObjectPool
    {
        private Stack<GameObject> _pool;
        private HashSet<GameObject> _inUse;
        private GameObject _prefab;
        private Transform _parent;
        private int _addSize;

        public int maxAddOnFrame { get; set; } = 20;

        public GameObjectPool(GameObject prefab, Transform parent, int initSize = 16, int addSize = 16)
        {
            _prefab = prefab;
            _parent = parent;
            _addSize = addSize > 0 ? addSize : 16;
            _pool = new Stack<GameObject>(initSize);
            _inUse = new HashSet<GameObject>();

            if (initSize <= 0)
            {
                Debug.LogError("GameObjectPool: initSize <= 0, default to 16");
                initSize = 16;
            }
            Fill(initSize);
        }

        public GameObject Get()
        {
            if (_pool.Count == 0)
            {
                int batch = Mathf.Min(_addSize, maxAddOnFrame);
                Fill(batch);
            }

            var item = _pool.Pop();
            item.SetActive(true);
            _inUse.Add(item);
            return item;
        }

        public void Return(GameObject item)
        {
            item.SetActive(false);
            _inUse.Remove(item);
            _pool.Push(item);
        }

        public async UniTask PrewarmAsync(int count)
        {
            int remaining = count;
            while (remaining > 0)
            {
                int batch = Mathf.Min(remaining, maxAddOnFrame);
                Fill(batch);
                remaining -= batch;
                if (remaining > 0)
                    await UniTask.NextFrame();
            }
        }

        private void Fill(int count)
        {
            for (int i = 0; i < count; i++)
            {
                var item = GameObject.Instantiate(_prefab, _parent);
                item.SetActive(false);
                _pool.Push(item);
            }
        }

        public int available => _pool.Count;
        public int inUse => _inUse.Count;
    }
}