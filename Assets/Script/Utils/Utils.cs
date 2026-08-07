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

        /// <summary>
        /// 按类名解析当前程序集内的公开类型（支持短类名与全限定名）
        /// </summary>
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

        /// <summary>
        /// 重开地图并解锁下一层（不关窗口）。用于节点弹窗流程中的降级/兜底路径。
        /// </summary>
        public static void ReturnToMap()
        {
            var mapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            if (mapPopWindow != null)
            {
                mapPopWindow.NextLevel();
            }
        }

        /// <summary>
        /// 完成节点弹窗流程：关闭指定窗口 + 重开地图 + 解锁下一层。
        /// 事件/商店/战斗等节点弹窗结束后统一走这里回到地图。
        /// </summary>
        public static void FinishNode<T>() where T : BaseUIPanel
        {
            UIManager.Instance.ClosePanel<T>();
            ReturnToMap();
        }


        /// <summary>
        /// 直接从 Addressables 加载并实例化资源到指定父级下
        /// </summary>
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
        /// <summary>
        /// 用来生成节点的时候组装种子
        /// </summary>
        /// <param name="seed"></param>
        /// <param name="row"></param>
        /// <param name="col"></param>
        /// <returns></returns>
        public static int CombineSeed(int seed, int row, int col)
        {
            uint h = (uint)seed;
            h ^= (uint)row * 0x9E3779B1u;   // 大奇数，mod 2^32 下是置换
            h ^= (uint)col * 0x85EBCA77u;   // 另一个大奇数
                                            // 雪崩阶段：让输出每一位都依赖输入的每一位
            h ^= h >> 16;
            h *= 0x7FEB352Du;
            h ^= h >> 15;
            h *= 0x846CA68Bu;
            h ^= h >> 16;
            return (int)h;
        }

/// <summary>
/// 洗牌实现
/// </summary>
/// <typeparam name="T"></typeparam>
/// <param name="list"></param>
/// <exception cref="ArgumentNullException"></exception>
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
        // --- 为了极致性能，缓存射线的倒数方向 ---
        public struct RayData
        {
            public Vector3 Origin;
            public Vector3 DirInv; // 方向的倒数，避免在循环里做除法
        }

        public static bool IsVisible3D(Grid.VoxelGrid grid, Vector3 start, Vector3 end)
        {
            Vector3 direction = end - start;
            float maxDistance = direction.magnitude;
            if (maxDistance <= 0.0001f) return true;
            direction /= maxDistance;

            // 缓存射线倒数数据供 AABB 检测使用
            RayData ray = new RayData
            {
                Origin = start,
                DirInv = new Vector3(1f / direction.x, 1f / direction.y, 1f / direction.z)
            };

            // --- 1. DDA 基础初始化 (保持不变) ---
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

            // --- 2. 核心步进循环 ---
            for (int i = 0; i < maxIterations; i++)
            {
                byte blockType = grid.GetBlock(currentX, currentY, currentZ);

                if (blockType != 0) // 0 是空气
                {
                    // 情况A：如果是完整的全尺寸方块 (比如 blockType 1)
                    if (blockType == 1)
                    {
                        return false; // 无脑阻挡
                    }

                    // 情况B：如果是半砖、自定义高度方块 (比如 blockType 2)
                    if (blockType == 2)
                    {
                        // 假设你需要去某处查这个方块的真实高度
                        float blockHeight = 0.5f; // 可以替换成 grid.GetBlockYSize(currentX, currentY, currentZ);

                        // 构建这个格子的真实 AABB 边界 (基于你的 0.5, 0, 0.5 锚点设计)
                        // X 和 Z 是完整的 1，Y 只有 blockHeight 这么高
                        Vector3 min = new Vector3(currentX, currentY, currentZ);
                        Vector3 max = new Vector3(currentX + 1f, currentY + blockHeight, currentZ + 1f);

                        // 精确计算射线是否擦到了这个边界框
                        if (RayIntersectsAABB(ray, min, max))
                        {
                            return false; // 确实打在半砖上了，阻挡！
                        }
                        // 如果没碰到（比如从上方飞过），不做任何事，继续循环！
                    }
                }

                if (currentX == endX && currentY == endY && currentZ == endZ) return true;

                // DDA 步进逻辑...
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

        /// <summary>
        /// LogicalGrid 版本的体素遮挡检测
        /// 通过 Utils.getBlockTypeVal 将 BlockType 转换为 byte 复用相同的 DDA 逻辑
        /// </summary>
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

        /// <summary>
        /// 极速射线与边界框(AABB)相交检测算法 (Slab Method)
        /// 完全使用乘法和 Min/Max，无任何 GC
        /// </summary>
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

            // tmax >= 0 保证了方块在射线的正前方，而不是在后方
            return tmax >= tmin && tmax >= 0f;
        }
    }

    /// <summary>
    /// 调试可视化工具 - 在 Scene 视图格子上绘制色块
    /// 配合 DebugGizmosHost (MonoBehaviour) 使用
    /// </summary>
    public static class DebugGizmos
    {
        private struct HighlightInfo
        {
            public Vector3Int pos;
            public Color color;
            public int lifetime; // 剩余帧数, -1 表示永不过期
        }

        private static List<HighlightInfo> _highlights = new List<HighlightInfo>();

        /// <summary>
        /// 确保宿主 GameObject 存在（Gizmos 渲染需要）
        /// </summary>
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

        /// <summary>
        /// 标记一个格子为高亮
        /// </summary>
        /// <param name="pos">格子坐标</param>
        /// <param name="color">颜色+透明度</param>
        /// <param name="lifetime">持续帧数, -1 永久</param>
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

        /// <summary>
        /// 批量标记热力图 — 根据分数映射颜色强度
        /// </summary>
        /// <param name="scores">格子→分数的映射</param>
        /// <param name="hotColor">热度颜色（高分偏向此色）</param>
        /// <param name="maxScore">归一化最大值, 超出此值的都按最高亮度显示</param>
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

        /// <summary>
        /// 每帧减寿命, 自动清理过期项
        /// </summary>
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

        /// <summary>
        /// 由 MonoBehaviour 的 OnDrawGizmos 调用
        /// </summary>
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