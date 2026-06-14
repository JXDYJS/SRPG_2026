using System;

namespace Core.Data.Persistent
{
    /// <summary>
    /// CharacterSaveData — 角色存档数据结构
    /// 存储足够信息通过 UnitFactory 重建 CharacterInstance
    /// characterId 关联 CharacterData SO 模板
    /// level + 百分比加成决定完整属性
    /// 技能由 characterId + level 通过 CharacterSkillConfig 完全确定
    /// </summary>
    [Serializable]
    public class CharacterSaveData
    {
        public string characterId;
        public int level;
        public float bonusHp;
        public float bonusAtk;
        public float bonusDef;
        public float bonusRes;
    }
}
