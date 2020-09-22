acklayboss = Creature:new {
	customName = "\\#00ff00<<<Acklay Boss \\#ff0000[lvl 300]",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 300,
	chanceHit = 92.5,
	damageMin = 3000,
	damageMax = 5000,
	baseXp = 14884,
	baseHAM = 110000,
	baseHAMmax = 175000,
	armor = 2,
	resists = {130,145,155,155,145,30,30,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/acklay_hue.iff"},	
	lootGroups = {
		{
			groups = {
				{group = "boss_common", chance = 10000000},
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
				{group = "acklay", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
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
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 5000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklayboss, "acklayboss")
