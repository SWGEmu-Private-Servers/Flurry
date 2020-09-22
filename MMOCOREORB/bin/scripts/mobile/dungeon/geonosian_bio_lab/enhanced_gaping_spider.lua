enhanced_gaping_spider = Creature:new {
	objectName = "@mob/creature_names:geonosian_gaping_spider_fire",
	customName = "Fire Breathing Spider",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 108,
	chanceHit = 2.5,
	damageMin = 1500,
	damageMax = 2500,
	baseXp = 10267,
	baseHAM = 32000,
	baseHAMmax = 50000,
	armor = 2,
	resists = {150,10,-1,195,-1,10,10,10,-1},
	meatType = "meat_insect",
	meatAmount = 50,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider.iff"},
	scale = 2.5,
	lootGroups = {
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 5000000
		},		
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 5000000
		},
	},
	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_gaping_spider, "enhanced_gaping_spider")
