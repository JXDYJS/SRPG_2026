using UnityEngine;
using System.Collections.Generic;
using Global;
using Character.data;
using GamePlay.Units;
using Managers;
using GamePlay.Grid;

namespace GamePlay.Battle
{
    [CreateAssetMenu(fileName = "BattleLevel", menuName = "GameData/BattleLevel")]
    public class BattleLevelSO : ScriptableObject
    {
        [Header("地形配置")]
        [Tooltip("指向地形数据的引用")]
        public MapDataSO MapData;

        [Header("初始单位配置")]
        [Tooltip("在关卡加载时直接生成在场上的单位（包括敌人和NPC）")]
        public List<UnitConfig> InitialUnits = new List<UnitConfig>();

        [Header("玩家部署配置")]
        [Tooltip("当前关卡中，玩家可以部署棋子的合法地格坐标集合")]
        public List<Vector3Int> PlayerDeployZones = new List<Vector3Int>();

        [Tooltip("玩家最大可上阵人数限制")]
        public int MaxDeployCount = 4;

        [Header("后备角色池")]
        [Tooltip("当 RunManager.MyTeam 为空（无存档/首次游玩）时使用的后备可选角色列表")]
        public List<CharacterData> FallbackPlayerCharacters = new List<CharacterData>();
    }

    [System.Serializable]
    public class UnitConfig
    {
        [Header("基础配置")]
        [Tooltip("基础模板")]
        public CharacterData CharacterTemplate;

        [Tooltip("技能配置")]
        public GamePlay.Skill.CharacterSkillConfig SkillConfig;

        [Tooltip("生成位置（必须与地格位置强绑定）")]
        public Vector3Int SpawnPosition;

        [Tooltip("初始朝向")]
        public UnitFacing InitialFacing = UnitFacing.North;

        [Tooltip("阵营")]
        public FactionType Faction = FactionType.Enemy;

        [Tooltip("初始等级")]
        public int InitialLevel = 1;

        [Header("动态数值扩展")]
        [Tooltip("HP加成百分比（例如0.2表示+20%HP）")]
        public float HPBonusPercent = 0f;

        [Tooltip("ATK加成百分比")]
        public float ATKBonusPercent = 0f;

        [Tooltip("DEF加成百分比")]
        public float DEFBonusPercent = 0f;

        [Tooltip("RES加成百分比")]
        public float RESBonusPercent = 0f;
    }
}
