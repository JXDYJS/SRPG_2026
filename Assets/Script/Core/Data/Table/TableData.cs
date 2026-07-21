using System.Collections.Generic;

namespace Core.Data
{
    public class TableData
    {

        public struct BlockConfig
        {
            public string id;
            public string prefabAddress;
            public Global.BlockType blockType;
            public bool isWalkable;
            public float xCellSize;
            public float yCellSize;
            public float zCellSize;
            public float heightOffset;
            public int threatScore;
            public List<object> effectEnter;
            public List<object> effectExit;
            public List<object> effectStay;
        }

        public struct NodeConfig
        {
            public string id;
            public Map.MapType type;
        }

        public struct BattleNodeConfig
        {
            public string id;
            public string levelId;
        }

        public struct ShopNodeConfig
        {
            public string id;
        }

        public struct EventNodeConfig
        {
            public string id;
        }

        public struct BossNodeConfig
        {
            public string id;
        }

        public struct LevelConfig
        {
            public string id;
            public string blockConfigId;
            public List<string> playerDeployZones;
            public int maxDeployCount;
            public List<string> unitIds;
            public List<string> fallbackUnitIds;
        }

        public struct UnitConfig
        {
            public string id;
            public string characterDataId;
            public int level;
            public Global.FactionType faction;
            public Global.UnitFacing facing;
            public float hpBonusPercent;
            public float atkBonusPercent;
            public float defBonusPercent;
            public float resBonusPercent;
        }

        public readonly Dictionary<string, BattleNodeConfig> BattleNodeConfigs = new()
        {
            { "n_001", new() { id = "n_001", levelId = "lv_001" } }
        };

        public readonly Dictionary<string, BlockConfig> BlockConfigs = new()
        {
            { "grass", new() { id = "grass", prefabAddress = "Block_Grass", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "grass_", new() { id = "grass_", prefabAddress = "Block_Grass_", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "dirt", new() { id = "dirt", prefabAddress = "Block_Dirt", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "cobblestone", new() { id = "cobblestone", prefabAddress = "Block_Cobblestone", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "cobbles_slab", new() { id = "cobbles_slab", prefabAddress = "Block_Cobbles_Slab", blockType = Global.BlockType.Slab, isWalkable = true, xCellSize = 1.0f, yCellSize = 0.5f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "iron", new() { id = "iron", prefabAddress = "Block_Iron", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "magma", new() { id = "magma", prefabAddress = "Magma", blockType = Global.BlockType.Solid, isWalkable = false, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 5, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() { "FireDamage", 1, "Fire" } } }
        };

        public readonly Dictionary<string, BossNodeConfig> BossNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, EventNodeConfig> EventNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, LevelConfig> LevelConfigs = new()
        {
            { "lv_001", new() { id = "lv_001", blockConfigId = "test1", playerDeployZones = new() { "(2,0,2)", "(3,0,2)", "(2,0,3)", "(3,0,3)" }, maxDeployCount = 4, unitIds = new() { "u_hero_01" }, fallbackUnitIds = new() { "u_fallback_01" } } }
        };

        public readonly Dictionary<string, NodeConfig> NodeConfigs = new()
        {
            { "n_001", new() { id = "n_001", type = Map.MapType.Battle } },
            { "n_002", new() { id = "n_002", type = Map.MapType.Shop } },
            { "n_003", new() { id = "n_003", type = Map.MapType.Event } }
        };

        public readonly Dictionary<string, ShopNodeConfig> ShopNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, UnitConfig> UnitConfigs = new()
        {
            { "u_hero_01", new() { id = "u_hero_01", characterDataId = "IronSword", level = 1, faction = Global.FactionType.Player, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_01", new() { id = "u_enemy_01", characterDataId = "Slime", level = 1, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.South, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_fallback_01", new() { id = "u_fallback_01", characterDataId = "IronSword", level = 1, faction = Global.FactionType.Player, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } }
        };
    }
}
