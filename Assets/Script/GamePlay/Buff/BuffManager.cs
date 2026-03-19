using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;
using GamePlay.Units;
using GamePlay.Buff;

namespace GamePlay.Buff
{
    public static class BuffManager
    {
        // 核心修改：增加一个模板缓存字典
        private static Dictionary<string, BuffBase> _templateCache = new Dictionary<string, BuffBase>();

        public static BuffBase CreateBuffFromID(string buffID, int stacks = 1)
        {
            if (string.IsNullOrEmpty(buffID))
            {
                Debug.LogWarning("BuffManager: BuffID 为空");
                return null;
            }

            string key = buffID.ToLower(); // 统一转小写，防止大小写配表错误
            BuffBase buffTemplate = null;

            // 1. 优先从缓存中获取模板
            if (_templateCache.TryGetValue(key, out var cachedTemplate))
            {
                buffTemplate = cachedTemplate;
            }
            else
            {
                // 2. 如果缓存没有，则通过 Addressables 同步加载
                // 注意：这里可能会抛出异常，如果 key 填错了的话
                var handle = Addressables.LoadAssetAsync<BuffBase>(key);
                buffTemplate = handle.WaitForCompletion();

                if (buffTemplate != null)
                {
                    // 放入缓存，不再调用 Release，直到游戏关闭
                    _templateCache[key] = buffTemplate; 
                }
                else
                {
                    Debug.LogError($"BuffManager: 无法加载 Buff 资产，请检查 Addressables Groups 中的 Address 是否为: {key}");
                    Addressables.Release(handle); // 只有加载失败才释放
                    return null;
                }
            }

            // 3. 克隆模板创建运行时实例
            BuffBase buffInstance = Object.Instantiate(buffTemplate);
            
            // 4. 设置运行时数据
            buffInstance.ID = buffID;
            buffInstance.Stacks = Mathf.Max(1, stacks);
            
            return buffInstance;
        }

        public static BuffBase FindBuffByID(MapUnit unit, string buffID)
        {
            if (unit == null || unit.ActiveBuffs == null) return null;

            foreach (var buff in unit.ActiveBuffs)
            {
                if (!string.IsNullOrEmpty(buff.ID) && buff.ID.Equals(buffID, System.StringComparison.OrdinalIgnoreCase))
                {
                    return buff;
                }
            }
            return null;
        }

        public static void ApplyBuffToUnit(MapUnit unit, string buffID, int stacks)
        {
            if (unit == null || string.IsNullOrEmpty(buffID)) return;

            if (stacks > 0)
            {
                var buff = CreateBuffFromID(buffID, stacks);
                if (buff != null) unit.AddBuff(buff);
            }
            else if (stacks < 0)
            {
                int removeAmount = Mathf.Abs(stacks);
                var existingBuff = FindBuffByID(unit, buffID);
                if (existingBuff != null)
                {
                    existingBuff.RemoveStacks(removeAmount);
                }
            }
        }
        
        // 游戏退出或返回主菜单时，可以调用这个方法清理内存
        public static void ClearCache()
        {
            _templateCache.Clear();
            // 实际项目中，如果对内存要求极高，可以在这里配合 AssetReference 记录 handle 并统一 Release
        }
    }
}