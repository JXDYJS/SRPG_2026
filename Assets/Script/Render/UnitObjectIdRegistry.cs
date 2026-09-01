using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;

namespace Render
{
    /// <summary>
    /// Single source of truth for unit object ids (1..GbufferIdScheme.UnitMax, 0 reserved for non-units).
    /// The same id drives outline colors (GBuffer G channel), visible-face id (R channel)
    /// and voxel slot addressing; ids are recycled after Release.
    /// </summary>
    public static class UnitObjectIdRegistry
    {
        public const int MaxId = GbufferIdScheme.UnitMax;

        static readonly Dictionary<int, MapUnit> s_UnitsById = new Dictionary<int, MapUnit>();
        static readonly Stack<int> s_FreeIds = new Stack<int>();
        static int s_NextId = 1;

        public static IReadOnlyCollection<int> ActiveIds => s_UnitsById.Keys;

        public static bool IsRegistered(int id) => s_UnitsById.ContainsKey(id);

        public static bool TryGetUnit(int id, out MapUnit unit)
        {
            return s_UnitsById.TryGetValue(id, out unit);
        }

        /// <summary>Assigns a stable id for the unit and writes it into the renderers' MPB (_ObjectID). Idempotent.</summary>
        public static int Register(MapUnit unit)
        {
            if (unit == null) return -1;

            foreach (var kv in s_UnitsById)
            {
                if (ReferenceEquals(kv.Value, unit)) return kv.Key;
            }

            int id;
            if (s_FreeIds.Count > 0) id = s_FreeIds.Pop();
            else if (s_NextId <= MaxId) id = s_NextId++;
            else
            {
                Debug.LogError($"[UnitObjectIdRegistry] no free objID (max {MaxId}).");
                return -1;
            }

            s_UnitsById[id] = unit;
            WriteIdToRenderers(unit, id);
            return id;
        }

        /// <summary>Releases the unit's id slot back to the free pool.</summary>
        public static void Release(MapUnit unit)
        {
            if (unit == null) return;

            int key = -1;
            foreach (var kv in s_UnitsById)
            {
                if (ReferenceEquals(kv.Value, unit))
                {
                    key = kv.Key;
                    break;
                }
            }
            if (key < 0) return;

            s_UnitsById.Remove(key);
            s_FreeIds.Push(key);
        }

        static void WriteIdToRenderers(MapUnit unit, int id)
        {
            var block = new MaterialPropertyBlock();
            block.SetInt("_ObjectID", id);
            foreach (Renderer r in unit.GetComponentsInChildren<Renderer>(true))
            {
                r.SetPropertyBlock(block);
            }
        }
    }
}
