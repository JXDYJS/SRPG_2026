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
            public string mapAddress;
            public List<string> playerDeployZones;
            public int maxDeployCount;
            public List<string> unitIds;
            public List<string> fallbackUnitIds;
        }

        public struct UnitConfig
        {
            public string id;
            public string characterDataId;
            public string spawnPosition;
            public int level;
            public Global.FactionType faction;
            public Global.UnitFacing facing;
            public float hpBonusPercent;
            public float atkBonusPercent;
            public float defBonusPercent;
            public float resBonusPercent;
        }

        public struct RelicConfig
        {
            public string id;
            public string name;
            public string desc;
            public Global.RarityType rarity;
            public int minPrice;
            public int maxPrice;
            public string sprite;
        }

        public readonly Dictionary<string, BattleNodeConfig> BattleNodeConfigs = new()
        {
            { "n_001", new() { id = "n_001", levelId = "lv_001" } },
            { "n_002", new() { id = "n_002", levelId = "lv_002" } },
            { "n_003", new() { id = "n_003", levelId = "lv_001" } }
        };

        public readonly Dictionary<string, BlockConfig> BlockConfigs = new()
        {
            { "grass", new() { id = "grass", prefabAddress = "Assets/Perfob/block/Block_Grass.prefab", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "grass_", new() { id = "grass_", prefabAddress = "Assets/Perfob/block/Block_Grass_.prefab", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "dirt", new() { id = "dirt", prefabAddress = "Assets/Perfob/block/Block_Dirt.prefab", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "cobblestone", new() { id = "cobblestone", prefabAddress = "Assets/Perfob/block/Block_Cobblestone.prefab", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "cobbles_slab", new() { id = "cobbles_slab", prefabAddress = "Assets/Perfob/block/Block_Cobbles_Slab.prefab", blockType = Global.BlockType.Slab, isWalkable = true, xCellSize = 1.0f, yCellSize = 0.5f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "iron", new() { id = "iron", prefabAddress = "Assets/Perfob/block/Block_Iron.prefab", blockType = Global.BlockType.Solid, isWalkable = true, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 0, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() {  } } },
            { "magma", new() { id = "magma", prefabAddress = "Assets/Perfob/block/Magma.prefab", blockType = Global.BlockType.Solid, isWalkable = false, xCellSize = 1.0f, yCellSize = 1.0f, zCellSize = 1.0f, heightOffset = 0.0f, threatScore = 5, effectEnter = new() {  }, effectExit = new() {  }, effectStay = new() { "FireDamage", 1, "Fire" } } }
        };

        public readonly Dictionary<string, BossNodeConfig> BossNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, EventNodeConfig> EventNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, LevelConfig> LevelConfigs = new()
        {
            { "lv_001", new() { id = "lv_001", mapAddress = "Assets/Map/test2.asset", playerDeployZones = new() { "(0,0,0)", "(1,0,0)", "(2,0,0)", "(3,0,0)", "(4,0,0)", "(5,0,0)" }, maxDeployCount = 4, unitIds = new() { "u_enemy_zombie_01", "u_enemy_skeleton_01", "u_enemy_zombie_02" }, fallbackUnitIds = new() { "u_fallback_01" } } },
            { "lv_002", new() { id = "lv_002", mapAddress = "Assets/Map/tallMap.asset", playerDeployZones = new() { "(0,0,0)", "(1,0,0)", "(2,0,0)", "(3,0,0)", "(4,0,0)", "(5,0,0)" }, maxDeployCount = 4, unitIds = new() { "u_enemy_zombie_01", "u_enemy_skeleton_01", "u_enemy_zombie_02" }, fallbackUnitIds = new() { "u_fallback_01" } } }
        };

        public readonly Dictionary<string, NodeConfig> NodeConfigs = new()
        {
            { "n_001", new() { id = "n_001", type = Map.MapType.Battle } },
            { "n_002", new() { id = "n_002", type = Map.MapType.Shop } },
            { "n_003", new() { id = "n_003", type = Map.MapType.Event } }
        };

        public readonly Dictionary<string, RelicConfig> RelicConfigs = new()
        {
            { "r_beacon", new() { id = "r_beacon", name = "Beacon", desc = "The light column pierces the clouds and fills the party with courage. At battle start all allied units gain 1 stack of Power (+1 ATK with no decay).", rarity = Global.RarityType.Uncommon, minPrice = 80, maxPrice = 120, sprite = "Assets/textures/block/beacon.png" } },
            { "r_enchanting", new() { id = "r_enchanting", name = "Enchanting Table", desc = "Lingering lapis powder still glimmers on the table as if the next enchantment is about to emerge. All allied units gain +1 ATK.", rarity = Global.RarityType.Common, minPrice = 50, maxPrice = 80, sprite = "Assets/textures/item/enchanted_book.png" } },
            { "r_turtle", new() { id = "r_turtle", name = "Turtle Helmet", desc = "Forged from a turtle shell, this sturdy helmet absorbs the brunt of incoming blows. Reduce all damage taken by 2.", rarity = Global.RarityType.Common, minPrice = 40, maxPrice = 70, sprite = "Assets/textures/item/turtle_helmet.png" } },
            { "r_cactus", new() { id = "r_cactus", name = "Cactus", desc = "The desert teaches us never to mess with things that sting. When hit by an enemy attack reflect 2 damage back to the attacker.", rarity = Global.RarityType.Common, minPrice = 45, maxPrice = 75, sprite = "Assets/textures/block/cactus_flower.png" } },
            { "r_honey", new() { id = "r_honey", name = "Honey Bottle", desc = "Sweet to the heart and sweet to the wound. All healing received is increased by 30%.", rarity = Global.RarityType.Uncommon, minPrice = 90, maxPrice = 130, sprite = "Assets/textures/item/honey_bottle.png" } },
            { "r_totem", new() { id = "r_totem", name = "Totem of Undying", desc = "Clutch it tight and even Death will hesitate. Each battle block a single lethal hit and survive with 1 HP.", rarity = Global.RarityType.Rare, minPrice = 160, maxPrice = 220, sprite = "Assets/textures/item/totem_of_undying.png" } },
            { "r_gold_pouch", new() { id = "r_gold_pouch", name = "Pouch of Emeralds", desc = "A leather pouch stuffed with emeralds from a wealthy villager. Purchasing it instantly grants 10 gold. Can be bought repeatedly.", rarity = Global.RarityType.Common, minPrice = 50, maxPrice = 90, sprite = "Assets/textures/item/emerald.png" } }
        };

        public readonly Dictionary<string, ShopNodeConfig> ShopNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, UnitConfig> UnitConfigs = new()
        {
            { "u_hero_01", new() { id = "u_hero_01", characterDataId = "1", spawnPosition = "", level = 1, faction = Global.FactionType.Player, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_01", new() { id = "u_enemy_zombie_01", characterDataId = "2", spawnPosition = "(6,1,3)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_01", new() { id = "u_enemy_skeleton_01", characterDataId = "3", spawnPosition = "(1,3,3)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 2.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_02", new() { id = "u_enemy_zombie_02", characterDataId = "2", spawnPosition = "(6,1,4)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_fallback_01", new() { id = "u_fallback_01", characterDataId = "1", spawnPosition = "", level = 1, faction = Global.FactionType.Player, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } }
        };
    }
}
