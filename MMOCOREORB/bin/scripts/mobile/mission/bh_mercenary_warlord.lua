bh_mercenary_warlord = Creature:new {
	objectName = "@mob/creature_names:mercenary_warlord",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lok_mercenaries",
	faction = "lok_mercenaries",
	level = 100,
	chanceHit = 0.47,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4370,
	baseHAM = 19700,
	baseHAMmax = 111900,
	armor = 1,
	resists = {60,60,60,60,60,60,60,60,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_mercenary_warlord_hum_m.iff",
		"object/mobile/dressed_mercenary_warlord_nikto_m.iff",
		"object/mobile/dressed_mercenary_warlord_wee_m.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 1000000},
				{group = "wearables_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 1000000},
				{group = "nge_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 3880000
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_mercenary_warlord, "bh_mercenary_warlord")
