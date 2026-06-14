using System.Collections.Generic;
using UnityEngine;
using Character.data;

namespace Core.Data
{
    /// <summary>
    /// CharacterDatabaseSO — 角色数据注册表
    /// 通过 CharacterData.ID 快速查找 CharacterData SO 引用
    /// 用于从存档中的 characterId 重建角色
    /// </summary>
    [CreateAssetMenu(fileName = "CharacterDatabase", menuName = "GameData/CharacterDatabase")]
    public class CharacterDatabaseSO : ScriptableObject
    {
        [Tooltip("所有可用角色数据的注册表")]
        public List<CharacterData> AllCharacters = new List<CharacterData>();

        private Dictionary<string, CharacterData> _lookup;

        private void BuildLookup()
        {
            _lookup = new Dictionary<string, CharacterData>();
            foreach (var cd in AllCharacters)
            {
                if (cd != null && !string.IsNullOrEmpty(cd.ID) && !_lookup.ContainsKey(cd.ID))
                {
                    _lookup[cd.ID] = cd;
                }
            }
        }

        public CharacterData GetById(string id)
        {
            if (_lookup == null) BuildLookup();
            _lookup.TryGetValue(id, out CharacterData result);
            if (result == null)
                Debug.LogWarning($"[CharacterDatabase] CharacterData with ID '{id}' not found in database");
            return result;
        }

        private void OnEnable()
        {
            BuildLookup();
        }
    }
}
