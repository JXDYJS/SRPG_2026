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
            public string eventId;
        }

        public struct EventOption
        {
            public string title;
            public string desc;
            public string action;
            public string result;
            public string condition;
            public string nextScreen;
        }

        public struct EventScreen
        {
            public string id;
            public List<EventOption> options;
        }

        public struct EventConfig
        {
            public string id;
            public string title;
            public string panelName;
            public string startScreen;
            public List<EventScreen> screens;
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

        public struct ItemConfig
        {
            public string id;
            public string name;
            public string desc;
            public string iconPath;
            public int maxStock;
            public Global.RarityType rarity;
            public string skillPath;
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

        public readonly Dictionary<string, EventConfig> EventConfigs = new()
        {
            { "ev_chest", new() { id = "ev_chest", title = "Chest", panelName = "", startScreen = "s_main", screens = new() { new() { id = "s_main", options = new() { new() { title = "Take Relic", desc = "You see a glowing relic lying inside.", action = "EventActions.GiveRelic", result = "You obtained the relic Beacon!", condition = "", nextScreen = "" }, new() { title = "Take Gold", desc = "A pile of shiny gold coins is scattered inside.", action = "EventActions.GainGold", result = "You gained 50 gold!", condition = "", nextScreen = "" }, new() { title = "Leave", desc = "Better safe than sorry.", action = "", result = "", condition = "", nextScreen = "" } } } } } },
            { "ev_gamble", new() { id = "ev_gamble", title = "Gambling Table", panelName = "", startScreen = "s_bet", screens = new() { new() { id = "s_bet", options = new() { new() { title = "Bet 50", desc = "Stake 50 gold and roll the dice to decide the winner.", action = "EventActions.Bet50", result = "", condition = "EventActions.CanAffordBet50", nextScreen = "s_bet" }, new() { title = "Leave", desc = "Quit while you are ahead.", action = "", result = "", condition = "", nextScreen = "" } } } } } },
            { "ev_flappy", new() { id = "ev_flappy", title = "Flappy Bird", panelName = "FlyBirdWindow", startScreen = "" } },
            { "ev_relic_altar", new() { id = "ev_relic_altar", title = "Relic Altar", panelName = "", startScreen = "s_main", screens = new() { new() { id = "s_main", options = new() { new() { title = "Pray at the altar", desc = "Offer your faith and hope the altar answers with a relic.", action = "EventActions.GiveRandomRelic", result = "", condition = "", nextScreen = "" }, new() { title = "Take the offering gold", desc = "Grab the gold coins piled at the altar's base.", action = "EventActions.GainGold40", result = "You gained 40 gold!", condition = "", nextScreen = "" }, new() { title = "Leave", desc = "Some altars are better left alone.", action = "", result = "", condition = "", nextScreen = "" } } } } } },
            { "ev_ruins_cache", new() { id = "ev_ruins_cache", title = "Ruins Cache", panelName = "", startScreen = "s_main", screens = new() { new() { id = "s_main", options = new() { new() { title = "Open the cache", desc = "A battered supply cache hides in the ruins. Something inside glimmers.", action = "EventActions.GiveRandomReward", result = "", condition = "", nextScreen = "" }, new() { title = "Leave", desc = "It might be trapped.", action = "", result = "", condition = "", nextScreen = "" } } } } } },
            { "ev_traveling_merchant", new() { id = "ev_traveling_merchant", title = "Traveling Merchant", panelName = "", startScreen = "s_main", screens = new() { new() { id = "s_main", options = new() { new() { title = "Buy a random relic (50 gold)", desc = "He rummages in his cart and pulls out a wrapped bundle.", action = "EventActions.BuyRandomRelic", result = "", condition = "EventActions.CanAfford50", nextScreen = "" }, new() { title = "Buy a potion (30 gold)", desc = "A dusty bottle from the bottom of the cart.", action = "EventActions.BuyRandomPotion", result = "", condition = "EventActions.CanAfford30", nextScreen = "" }, new() { title = "Leave", desc = "His wares are overpriced anyway.", action = "", result = "", condition = "", nextScreen = "" } } } } } },
            { "ev_potion_well", new() { id = "ev_potion_well", title = "Potion Well", panelName = "", startScreen = "s_main", screens = new() { new() { id = "s_main", options = new() { new() { title = "Fill two bottles", desc = "The well bubbles with a suspiciously glowing liquid.", action = "EventActions.GiveTwoPotions", result = "", condition = "", nextScreen = "" }, new() { title = "Take 30 gold", desc = "Coins glitter at the bottom of the well.", action = "EventActions.GainGold30", result = "You fished out 30 gold!", condition = "", nextScreen = "" }, new() { title = "Leave", desc = "You didn't come here to drink.", action = "", result = "", condition = "", nextScreen = "" } } } } } },
            { "ev_mysterious_altar", new() { id = "ev_mysterious_altar", title = "Mysterious Altar", panelName = "", startScreen = "s_main", screens = new() { new() { id = "s_main", options = new() { new() { title = "Gamble 30 gold for a relic", desc = "Offer 30 gold. A 50% chance the altar grants a relic in return.", action = "EventActions.GambleRelic", result = "", condition = "EventActions.CanAfford30", nextScreen = "" }, new() { title = "Leave", desc = "The altar's eyes follow you as you back away.", action = "", result = "", condition = "", nextScreen = "" } } } } } }
        };

        public readonly Dictionary<string, EventNodeConfig> EventNodeConfigs = new()
        {
            { "n_003", new() { id = "n_003", eventId = "ev_chest" } },
            { "n_004", new() { id = "n_004", eventId = "ev_gamble" } },
            { "n_005", new() { id = "n_005", eventId = "ev_relic_altar" } },
            { "n_006", new() { id = "n_006", eventId = "ev_ruins_cache" } },
            { "n_007", new() { id = "n_007", eventId = "ev_traveling_merchant" } },
            { "n_008", new() { id = "n_008", eventId = "ev_potion_well" } },
            { "n_009", new() { id = "n_009", eventId = "ev_mysterious_altar" } }
        };

        public readonly Dictionary<string, ItemConfig> ItemConfigs = new()
        {
            { "it_potion_hp", new() { id = "it_potion_hp", name = "Health Potion", desc = "Restore HP to allied units within 1 tile (scales with caster ATK).", iconPath = "Assets/textures/item/splash_potion.png", maxStock = 3, rarity = Global.RarityType.Common, skillPath = "Data/Skill/HealSkill - Copy" } },
            { "it_potion_atk", new() { id = "it_potion_atk", name = "Strength Potion", desc = "Grant an attack buff to a selected allied unit.", iconPath = "Assets/textures/item/potion.png", maxStock = 3, rarity = Global.RarityType.Common, skillPath = "Data/Skill/Strength" } },
            { "it_potion_atk_aoe", new() { id = "it_potion_atk_aoe", name = "Greater Strength Potion", desc = "Grant an attack buff to all allied units within 1 tile.", iconPath = "Assets/textures/item/lingering_potion.png", maxStock = 2, rarity = Global.RarityType.Uncommon, skillPath = "Data/Skill/Strength" } },
            { "it_fire_potion", new() { id = "it_fire_potion", name = "Fire Potion", desc = "Hurl a burning flask at the target to deal fire damage to enemies.", iconPath = "Assets/textures/item/experience_bottle.png", maxStock = 2, rarity = Global.RarityType.Uncommon, skillPath = "Data/Skill/Fireball" } }
        };

        public readonly Dictionary<string, LevelConfig> LevelConfigs = new()
        {
            { "lv_001", new() { id = "lv_001", mapAddress = "Assets/Map/test2.asset", playerDeployZones = new() { "(0,0,0)", "(1,0,0)", "(2,0,0)", "(3,0,0)", "(4,0,0)", "(5,0,0)" }, maxDeployCount = 4, unitIds = new() { "u_enemy_zombie_01", "u_enemy_zombie_02", "u_enemy_skeleton_01", "u_enemy_skeleton_02" }, fallbackUnitIds = new() { "u_fallback_01" } } },
            { "lv_002", new() { id = "lv_002", mapAddress = "Assets/Map/tallMap.asset", playerDeployZones = new() { "(0,0,0)", "(1,0,0)", "(2,0,0)", "(3,0,0)", "(4,0,0)", "(5,0,0)" }, maxDeployCount = 4, unitIds = new() { "u_enemy_zombie_lv2_01", "u_enemy_zombie_lv2_02", "u_enemy_skeleton_lv2_01", "u_enemy_skeleton_lv2_02" }, fallbackUnitIds = new() { "u_fallback_01" } } },
            { "lv_003", new() { id = "lv_003", mapAddress = "Assets/Map/level3.asset", playerDeployZones = new() { "(0,0,0)", "(1,0,0)", "(2,0,0)", "(5,0,0)", "(6,0,0)", "(7,0,0)" }, maxDeployCount = 4, unitIds = new() { "u_enemy_zombie_lv3_01", "u_enemy_zombie_lv3_02", "u_enemy_skeleton_lv3_01", "u_enemy_skeleton_lv3_02" }, fallbackUnitIds = new() { "u_fallback_01" } } }
        };

        public readonly Dictionary<string, NodeConfig> NodeConfigs = new()
        {
            { "n_001", new() { id = "n_001", type = Map.MapType.Battle } },
            { "n_002", new() { id = "n_002", type = Map.MapType.Shop } },
            { "n_003", new() { id = "n_003", type = Map.MapType.Event } }
        };

        public readonly Dictionary<string, RelicConfig> RelicConfigs = new()
        {
            { "r_beacon", new() { id = "r_beacon", name = "Beacon", desc = "The light column pierces the clouds and fills the party with courage. At battle start all allied units gain 1 stack of {Power} (+1 ATK with no decay).", rarity = Global.RarityType.Uncommon, minPrice = 80, maxPrice = 120, sprite = "Assets/textures/block/beacon.png" } },
            { "r_enchanting", new() { id = "r_enchanting", name = "Enchanting Table", desc = "Lingering lapis powder still glimmers on the table as if the next enchantment is about to emerge. All allied units gain +1 ATK.", rarity = Global.RarityType.Common, minPrice = 50, maxPrice = 80, sprite = "Assets/textures/item/enchanted_book.png" } },
            { "r_turtle", new() { id = "r_turtle", name = "Turtle Helmet", desc = "Forged from a turtle shell, this sturdy helmet absorbs the brunt of incoming blows. Reduce all damage taken by 2.", rarity = Global.RarityType.Common, minPrice = 40, maxPrice = 70, sprite = "Assets/textures/item/turtle_helmet.png" } },
            { "r_cactus", new() { id = "r_cactus", name = "Cactus", desc = "The desert teaches us never to mess with things that sting. When hit by an enemy attack reflect 2 damage back to the attacker.", rarity = Global.RarityType.Common, minPrice = 45, maxPrice = 75, sprite = "Assets/textures/block/cactus_flower.png" } },
            { "r_honey", new() { id = "r_honey", name = "Honey Bottle", desc = "Sweet to the heart and sweet to the wound. All healing received is increased by 30%.", rarity = Global.RarityType.Uncommon, minPrice = 90, maxPrice = 130, sprite = "Assets/textures/item/honey_bottle.png" } },
            { "r_totem", new() { id = "r_totem", name = "Totem of Undying", desc = "Clutch it tight and even Death will hesitate. Each battle block a single lethal hit and survive with 1 HP.", rarity = Global.RarityType.Rare, minPrice = 160, maxPrice = 220, sprite = "Assets/textures/item/totem_of_undying.png" } },
            { "r_gold_pouch", new() { id = "r_gold_pouch", name = "Pouch of Emeralds", desc = "A leather pouch stuffed with emeralds from a wealthy villager. Purchasing it instantly grants 10 gold. Can be bought repeatedly.", rarity = Global.RarityType.Common, minPrice = 50, maxPrice = 90, sprite = "Assets/textures/item/emerald.png" } },
            { "r_sword", new() { id = "r_sword", name = "Sharpened Sword", desc = "A blade honed to a razor edge. All allied units gain +2 ATK.", rarity = Global.RarityType.Common, minPrice = 30, maxPrice = 50, sprite = "Assets/textures/item/iron_sword.png" } },
            { "r_plating", new() { id = "r_plating", name = "Iron Plating", desc = "Reinforced plates bolted onto every ally's armor. All allied units gain +2 DEF.", rarity = Global.RarityType.Common, minPrice = 30, maxPrice = 50, sprite = "Assets/textures/item/iron_chestplate.png" } },
            { "r_mage_robe", new() { id = "r_mage_robe", name = "Mage Robe", desc = "Woven from moonlit silk, it shrugs off hostile magic. All allied units gain +2 RES.", rarity = Global.RarityType.Common, minPrice = 30, maxPrice = 50, sprite = "Assets/textures/item/book.png" } },
            { "r_boots", new() { id = "r_boots", name = "Swift Boots", desc = "Featherlight boots that make every step feel like a leap. All allied units gain +1 MoveRange.", rarity = Global.RarityType.Common, minPrice = 40, maxPrice = 60, sprite = "Assets/textures/item/iron_boots.png" } },
            { "r_lucky_clover", new() { id = "r_lucky_clover", name = "Lucky Clover", desc = "Fortune favors the bold — and the clover-bearing. Each kill has a 20% chance to drop 15 gold.", rarity = Global.RarityType.Uncommon, minPrice = 60, maxPrice = 90, sprite = "Assets/textures/item/gold_nugget.png" } },
            { "r_holy_symbol", new() { id = "r_holy_symbol", name = "Holy Symbol", desc = "Blessed by a wandering cleric. At battle start, every ally recovers 10% of max HP.", rarity = Global.RarityType.Uncommon, minPrice = 70, maxPrice = 100, sprite = "Assets/textures/item/heart_of_the_sea.png" } },
            { "r_war_banner", new() { id = "r_war_banner", name = "War Banner", desc = "Its tattered cloth still rings with battle cries. At battle start, all allied units gain 1 stack of Strength (+1 ATK, decays each turn).", rarity = Global.RarityType.Uncommon, minPrice = 80, maxPrice = 120, sprite = "Assets/textures/item/bell.png" } },
            { "r_vampire_fang", new() { id = "r_vampire_fang", name = "Vampire Fang", desc = "It still thirsts. Allied units heal for 30% of the damage they deal.", rarity = Global.RarityType.Uncommon, minPrice = 90, maxPrice = 130, sprite = "Assets/textures/item/ghast_tear.png" } },
            { "r_blaze_core", new() { id = "r_blaze_core", name = "Blaze Core", desc = "A furnace heart that never cools. Fire damage dealt by allies is increased by 50%.", rarity = Global.RarityType.Uncommon, minPrice = 70, maxPrice = 100, sprite = "Assets/textures/item/blaze_powder.png" } },
            { "r_ice_crystal", new() { id = "r_ice_crystal", name = "Ice Crystal", desc = "Cold enough to fog the air around it. Ice damage dealt by allies is increased by 50%.", rarity = Global.RarityType.Uncommon, minPrice = 70, maxPrice = 100, sprite = "Assets/textures/item/snowball.png" } },
            { "r_thorned_armor", new() { id = "r_thorned_armor", name = "Thorned Armor", desc = "Every plate ends in a spike. Reflect 50% of incoming damage back to the attacker.", rarity = Global.RarityType.Rare, minPrice = 120, maxPrice = 170, sprite = "Assets/textures/item/chainmail_chestplate.png" } },
            { "r_magic_wand", new() { id = "r_magic_wand", name = "Magic Wand", desc = "A twig that remembers being a legend. Magic damage dealt by allies is increased by 3.", rarity = Global.RarityType.Rare, minPrice = 110, maxPrice = 160, sprite = "Assets/textures/item/blaze_rod.png" } },
            { "r_golden_apple", new() { id = "r_golden_apple", name = "Golden Apple", desc = "One bite and you feel taller. At battle start, every ally gains +10 max HP and recovers 10 HP.", rarity = Global.RarityType.Rare, minPrice = 130, maxPrice = 180, sprite = "Assets/textures/item/golden_apple.png" } },
            { "r_emerald_ring", new() { id = "r_emerald_ring", name = "Emerald Ring", desc = "A merchant's ring that never leaves a debt unpaid. Gain 10 gold for every kill.", rarity = Global.RarityType.Rare, minPrice = 100, maxPrice = 150, sprite = "Assets/textures/item/emerald.png" } },
            { "r_moon_stone", new() { id = "r_moon_stone", name = "Moon Stone", desc = "It drinks moonlight and returns it as warmth. Every ally recovers 3 HP at the start of each turn.", rarity = Global.RarityType.Rare, minPrice = 100, maxPrice = 150, sprite = "Assets/textures/item/quartz.png" } },
            { "r_star_shard", new() { id = "r_star_shard", name = "Star Shard", desc = "A piece of sky that fell and decided to stay. All damage dealt by allies is increased by 2.", rarity = Global.RarityType.Rare, minPrice = 110, maxPrice = 160, sprite = "Assets/textures/item/ender_pearl.png" } },
            { "r_dragon_scale", new() { id = "r_dragon_scale", name = "Dragon Scale", desc = "Shed by something that feared nothing. All damage taken by allies is reduced by 30%.", rarity = Global.RarityType.Epic, minPrice = 200, maxPrice = 280, sprite = "Assets/textures/item/armadillo_scute.png" } },
            { "r_berserker_axe", new() { id = "r_berserker_axe", name = "Berserker Axe", desc = "It screams when it swings. All damage dealt by allies is increased by 40%.", rarity = Global.RarityType.Epic, minPrice = 180, maxPrice = 260, sprite = "Assets/textures/item/iron_axe.png" } },
            { "r_mana_crystal", new() { id = "r_mana_crystal", name = "Mana Crystal", desc = "A wellspring given solid form. Every ally recovers 25% of max MP at the start of each turn.", rarity = Global.RarityType.Epic, minPrice = 170, maxPrice = 240, sprite = "Assets/textures/item/amethyst_shard.png" } },
            { "r_chaos_heart", new() { id = "r_chaos_heart", name = "Chaos Heart", desc = "It beats in a rhythm that isn't yours. Allies deal double damage and take half damage. Don't ask where it came from.", rarity = Global.RarityType.Legendary, minPrice = 350, maxPrice = 500, sprite = "Assets/textures/item/nether_star.png" } },
            { "r_midas_touch", new() { id = "r_midas_touch", name = "Midas Touch", desc = "Everything you slay turns to gold. Gain 30 gold for every kill.", rarity = Global.RarityType.Legendary, minPrice = 300, maxPrice = 450, sprite = "Assets/textures/item/gold_ingot.png" } }
        };

        public readonly Dictionary<string, ShopNodeConfig> ShopNodeConfigs = new()
        {
        };

        public readonly Dictionary<string, UnitConfig> UnitConfigs = new()
        {
            { "u_hero_01", new() { id = "u_hero_01", characterDataId = "1", spawnPosition = "", level = 1, faction = Global.FactionType.Player, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_01", new() { id = "u_enemy_zombie_01", characterDataId = "2", spawnPosition = "(6,1,3)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_01", new() { id = "u_enemy_skeleton_01", characterDataId = "3", spawnPosition = "(1,3,3)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_02", new() { id = "u_enemy_zombie_02", characterDataId = "2", spawnPosition = "(6,1,4)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_02", new() { id = "u_enemy_skeleton_02", characterDataId = "3", spawnPosition = "(2,3,4)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_lv2_01", new() { id = "u_enemy_zombie_lv2_01", characterDataId = "2", spawnPosition = "(7,1,3)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_lv2_02", new() { id = "u_enemy_zombie_lv2_02", characterDataId = "2", spawnPosition = "(6,1,4)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_lv2_01", new() { id = "u_enemy_skeleton_lv2_01", characterDataId = "3", spawnPosition = "(7,3,7)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_lv2_02", new() { id = "u_enemy_skeleton_lv2_02", characterDataId = "3", spawnPosition = "(6,3,7)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_lv3_01", new() { id = "u_enemy_zombie_lv3_01", characterDataId = "2", spawnPosition = "(3,0,4)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_zombie_lv3_02", new() { id = "u_enemy_zombie_lv3_02", characterDataId = "2", spawnPosition = "(4,0,4)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_lv3_01", new() { id = "u_enemy_skeleton_lv3_01", characterDataId = "3", spawnPosition = "(1,0,7)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_enemy_skeleton_lv3_02", new() { id = "u_enemy_skeleton_lv3_02", characterDataId = "3", spawnPosition = "(6,0,7)", level = 0, faction = Global.FactionType.Enemy, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } },
            { "u_fallback_01", new() { id = "u_fallback_01", characterDataId = "1", spawnPosition = "", level = 1, faction = Global.FactionType.Player, facing = Global.UnitFacing.North, hpBonusPercent = 0.0f, atkBonusPercent = 0.0f, defBonusPercent = 0.0f, resBonusPercent = 0.0f } }
        };
    }
}
