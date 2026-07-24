using System;
using System.Collections.Generic;
using System.Reflection;
using Core.Data;
using Global;
using GamePlay.Units;
using UnityEngine;

namespace GamePlay.Grid
{
    public class ResolvedBlockConfig
    {
        public BlockType Type;
        public bool IsWalkable;
        public float XCellSize, YCellSize, ZCellSize;
        public float HeightOffset;
        public int ThreatScore;
        public string PrefabAddress;
        public List<TileEffectSO> OnEnterEffects;
        public List<TileEffectSO> OnExitEffects;
        public List<TileEffectSO> OnStayEffects;
    }

    public class BlockConfigManager : MonoBehaviour
    {
        public static BlockConfigManager Instance { get; private set; }

        private Dictionary<string, ResolvedBlockConfig> _cache;

        void Awake()
        {
            Instance = this;
            _cache = new Dictionary<string, ResolvedBlockConfig>();
        }

        void OnDestroy()
        {
            if (Instance == this)
                Instance = null;
        }

        public ResolvedBlockConfig Get(string configId)
        {
            if (string.IsNullOrEmpty(configId))
                return null;

            if (_cache.TryGetValue(configId, out var cached))
                return cached;

            if (Data.Table == null || !Data.Table.BlockConfigs.TryGetValue(configId, out var raw))
            {
                Debug.LogError($"[BlockConfigManager] BlockConfig not found: '{configId}'");
                return null;
            }

            return Resolve(configId, raw);
        }

        private ResolvedBlockConfig Resolve(string configId, TableData.BlockConfig raw)
        {
            var resolved = new ResolvedBlockConfig
            {
                Type = raw.blockType,
                IsWalkable = raw.isWalkable,
                XCellSize = raw.xCellSize,
                YCellSize = raw.yCellSize,
                ZCellSize = raw.zCellSize,
                HeightOffset = raw.heightOffset,
                ThreatScore = raw.threatScore,
                PrefabAddress = raw.prefabAddress,
                OnEnterEffects = ResolveEffects(raw.effectEnter),
                OnExitEffects = ResolveEffects(raw.effectExit),
                OnStayEffects = ResolveEffects(raw.effectStay),
            };

            _cache[configId] = resolved;
            return resolved;
        }

        private List<TileEffectSO> ResolveEffects(List<object> rawEffects)
        {
            if (rawEffects == null || rawEffects.Count == 0)
                return new List<TileEffectSO>();

            var methodName = rawEffects[0] as string;
            if (string.IsNullOrEmpty(methodName))
                return new List<TileEffectSO>();

            var method = typeof(TileEffects).GetMethod(
                methodName, BindingFlags.Public | BindingFlags.Static);
            if (method == null)
            {
                Debug.LogError($"[BlockConfigManager] Effect method not found: {methodName}");
                return new List<TileEffectSO>();
            }

            var parameters = method.GetParameters();
            var csvArgs = new List<object>();
            for (int i = 1; i < rawEffects.Count; i++)
            {
                int paramIdx = 2 + (i - 1);
                if (paramIdx < parameters.Length)
                {
                    csvArgs.Add(ConvertParam(rawEffects[i], parameters[paramIdx].ParameterType));
                }
            }

            var effect = ScriptableObject.CreateInstance<ReflectedTileEffectSO>();
            effect.Setup(method, csvArgs.ToArray());
            return new List<TileEffectSO> { effect };
        }

        private object ConvertParam(object value, Type targetType)
        {
            if (value == null) return null;

            try
            {
                if (targetType.IsEnum)
                    return Enum.Parse(targetType, value.ToString());

                return Convert.ChangeType(value, targetType);
            }
            catch (Exception ex)
            {
                Debug.LogError($"[BlockConfigManager] Param convert failed: {value} -> {targetType.Name}: {ex.Message}");
                return value;
            }
        }
    }
}
