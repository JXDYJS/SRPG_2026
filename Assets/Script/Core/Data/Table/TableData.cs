using System.Collections.Generic;

namespace Core.Data
{
    public class TableData
    {

        public struct SimpleTypes
        {
            public int id;
            public string name;
            public float price;
            public double weight;
            public bool usable;
            public uint maxStack;
            public long expiry;
        }

        public struct Vec2
        {
            public float x;
            public float y;
        }

        public struct DropItem
        {
            public string id;
            public string name;
            public float rate;
            public int count;
        }

        public struct BuffEffect
        {
            public string type;
            public float value;
            public double duration;
            public bool stackable;
        }

        public struct RewardGroup
        {
            public int gold;
            public long exp;
            public List<DropItem> drops;
            public List<BuffEffect> buffs;
            public List<float> rates;
        }

        public struct StatGrowth
        {
            public List<int> hp;
            public List<float> atk;
            public List<string> skills;
        }

        public struct Matrix2D
        {
            public List<List<float>> rows;
        }

        public struct TagCollection
        {
            public Dictionary<string, string> tags;
            public Dictionary<string, float> scores;
            public Dictionary<int, int> stats;
        }

        public struct DeepNested
        {
            public int id;
            public string name;
            public bool active;
            public Vec2 pos;
            public StatGrowth growth;
            public Matrix2D mat;
            public TagCollection tags;
            public RewardGroup reward;
            public List<DropItem> drops;
            public Dictionary<string, BuffEffect> buffMap;
            public Dictionary<int, List<float>> scoreBoard;
            public List<List<List<int>>> cube;
        }

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

        public struct Buff
        {
            public int id;
            public string name;
            public int icon;
            public string type;
            public float value;
            public double duration;
            public int max_stack;
            public string description;
        }

        public struct Formation
        {
            public int formation_id;
            public string slot_1;
            public string slot_2;
            public string slot_3;
            public string slot_4;
            public int bonus_hp;
            public float bonus_atk;
        }

        public struct Hero
        {
            public string id;
            public SimpleTypes data;
        }

        public struct Item
        {
            public int id;
            public string name;
            public int price;
            public float weight;
            public bool usable;
            public Global.RarityType rarity;
        }

        public struct Monster
        {
            public string id;
            public string name;
            public int hp;
            public float atk;
            public float def;
            public DropItem drop;
            public Global.FactionType faction;
        }

        public struct Skill
        {
            public int id;
            public string name;
            public DeepNested data;
        }

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

        public readonly List<Buff> Buffs = new()
        {
            new() { id = 1, name = "Attack Up", icon = 101, type = "buff", value = 15.0f, duration = 30.0, max_stack = 3, description = "Increases ATK by 15" },
            new() { id = 2, name = "Defense Up", icon = 102, type = "buff", value = 10.0f, duration = 30.0, max_stack = 3, description = "Increases DEF by 10" },
            new() { id = 3, name = "Poison", icon = 201, type = "debuff", value = 5.0f, duration = 10.0, max_stack = 1, description = "Take 5 DMG per turn" },
            new() { id = 4, name = "Regen", icon = 301, type = "buff", value = 8.0f, duration = 15.0, max_stack = 1, description = "Restore 8 HP per turn" },
            new() { id = 5, name = "Stun", icon = 401, type = "debuff", value = 0.0f, duration = 2.0, max_stack = 1, description = "Unable to act" }
        };

        public readonly Dictionary<int, Formation> Formations = new()
        {
            { 1, new() { formation_id = 1, slot_1 = "hero_001", slot_2 = "", slot_3 = "hero_003", slot_4 = "", bonus_hp = 0, bonus_atk = 1.05f } },
            { 2, new() { formation_id = 2, slot_1 = "hero_001", slot_2 = "hero_002", slot_3 = "hero_003", slot_4 = "hero_004", bonus_hp = 500, bonus_atk = 1.15f } },
            { 3, new() { formation_id = 3, slot_1 = "", slot_2 = "hero_002", slot_3 = "", slot_4 = "", bonus_hp = 200, bonus_atk = 1.0f } }
        };

        public readonly Dictionary<string, Hero> Heroes = new()
        {
            { "hero_001", new() { id = "hero_001", data = new() { id = 1, name = "Iron Sword", price = 150.0f, weight = 3.5, usable = true, maxStack = 10u, expiry = 0L } } },
            { "hero_002", new() { id = "hero_002", data = new() { id = 2, name = "Health Potion", price = 50.0f, weight = 0.25, usable = true, maxStack = 99u, expiry = 2592000L } } },
            { "hero_003", new() { id = "hero_003", data = new() { id = 3, name = "Legend Blade", price = 9999.99f, weight = 8.0, usable = true, maxStack = 1u, expiry = 0L } } },
            { "hero_004", new() { id = "hero_004", data = new() { id = 4, name = "Broken Shield", price = 0.0f, weight = 2.0, usable = false, maxStack = 0u, expiry = -1L } } }
        };

        public readonly List<Item> Items = new()
        {
            new() { id = 1, name = "Potion", price = 50, weight = 0.5f, usable = true, rarity = Global.RarityType.Common },
            new() { id = 2, name = "Hi-Potion", price = 150, weight = 0.5f, usable = true, rarity = Global.RarityType.Uncommon },
            new() { id = 3, name = "Antidote", price = 30, weight = 0.2f, usable = true, rarity = Global.RarityType.Common },
            new() { id = 4, name = "Elixir", price = 500, weight = 0.5f, usable = true, rarity = Global.RarityType.Rare },
            new() { id = 5, name = "MegaElixir", price = 2000, weight = 0.5f, usable = true, rarity = Global.RarityType.Epic },
            new() { id = 6, name = "KeyItem", price = 0, weight = 0.0f, usable = false, rarity = Global.RarityType.Common }
        };

        public readonly List<Monster> Monsters = new()
        {
            new() { id = "mon_slime", name = "Slime", hp = 30, atk = 5.0f, def = 2.0f, drop = new() { id = "m1", name = "Slime Core", rate = 0.3f, count = 1 }, faction = Global.FactionType.Enemy },
            new() { id = "mon_bat", name = "Bat", hp = 20, atk = 8.0f, def = 1.0f, drop = new() { id = "m2", name = "Bat Wing", rate = 0.5f, count = 2 }, faction = Global.FactionType.Enemy },
            new() { id = "mon_dragon", name = "Dragon", hp = 500, atk = 50.0f, def = 30.0f, drop = new() { id = "m3", name = "Dragon Scale", rate = 0.05f, count = 1 }, faction = Global.FactionType.Enemy },
            new() { id = "mon_boss", name = "Boss", hp = 2000, atk = 120.0f, def = 50.0f, drop = new() { id = "m4", name = "Boss Core", rate = 1.0f, count = 3 }, faction = Global.FactionType.Enemy }
        };

        public readonly Dictionary<int, Skill> Skills = new()
        {
            { 1, new() { id = 1, name = "Fireball", data = new() { id = 1, name = "Fireball", active = true, pos = new() { x = 10.0f, y = 20.0f }, growth = new() { hp = new() { 100, 150, 200 }, atk = new() { 5.0f, 10.0f, 15.0f }, skills = new() { "fire_1", "fire_2", "fire_3" } }, mat = new() { rows = new() { new() { 1.0f, 0.0f }, new() { 0.0f, 1.0f } } }, tags = new() { tags = new() { { "element", "fire" }, { "type", "magic" } }, scores = new() { { "damage", 50.0f }, { "range", 3.0f } }, stats = new() { { 1, 100 }, { 2, 200 } } }, reward = new() { gold = 1000, exp = 50000L, drops = new() { new() { id = "d1", name = "Fire Orb", rate = 0.3f, count = 1 }, new() { id = "d2", name = "Magic Dust", rate = 0.5f, count = 2 } }, buffs = new() { new() { type = "burn", value = 5.0f, duration = 3.0, stackable = false } }, rates = new() { 0.1f, 0.2f, 0.3f } }, drops = new() { new() { id = "d3", name = "Soul Gem", rate = 0.1f, count = 1 } }, buffMap = new() { { "burn", new() { type = "burn", value = 5.0f, duration = 3.0, stackable = false } } }, scoreBoard = new() { { 1, new() { 10.0f, 20.0f } }, { 2, new() { 30.0f } } }, cube = new() { new() { new() { 1, 2 }, new() { 3, 4 } }, new() { new() { 5, 6 } } } } } },
            { 2, new() { id = 2, name = "Heal", data = new() { id = 2, name = "Heal", active = true, pos = new() { x = 0.0f, y = 0.0f }, growth = new() { hp = new() { 50, 75, 100 }, atk = new() {  }, skills = new() { "heal_1" } }, mat = new() { rows = new() { new() { 1.0f } } }, tags = new() { tags = new() { { "element", "light" }, { "type", "restore" } }, scores = new() { { "heal", 100.0f } }, stats = new() { { 1, 50 } } }, reward = new() { gold = 500, exp = 10000L, drops = new() {  }, buffs = new() {  }, rates = new() { 1.0f } }, drops = new() {  }, buffMap = new() { { "regen", new() { type = "regen", value = 10.0f, duration = 5.0, stackable = true } } }, scoreBoard = new() {  }, cube = new() {  } } } },
            { 3, new() { id = 3, name = "Teleport", data = new() { id = 3, name = "Teleport", active = true, pos = new() { x = 5.0f, y = -3.0f }, growth = new() { hp = new() { 80 }, atk = new() { 2.5f }, skills = new() { "tele_1", "tele_2" } }, mat = new() { rows = new() { new() { 0.0f, 1.0f }, new() { 1.0f, 0.0f } } }, tags = new() { tags = new() { { "element", "space" }, { "type", "move" } }, scores = new() { { "range", 999.0f } }, stats = new() {  } }, reward = new() { gold = 200, exp = 25000L, drops = new() { new() { id = "t1", name = "Warp Stone", rate = 0.8f, count = 1 } }, buffs = new() { new() { type = "stun", value = 0.0f, duration = 1.0, stackable = false }, new() { type = "silence", value = 0.0f, duration = 2.0, stackable = true } }, rates = new() { 0.5f } }, drops = new() {  }, buffMap = new() { { "stun", new() { type = "stun", value = 0.0f, duration = 1.0, stackable = false } } }, scoreBoard = new() { { 1, new() { 5.0f } }, { 3, new() { 7.0f, 8.0f, 9.0f } } }, cube = new() { new() { new() { 0 } } } } } }
        };
    }
}
