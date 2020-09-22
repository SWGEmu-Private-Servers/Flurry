--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

pistol_power5 = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Power pistol",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_power5.iff",
	craftingValues = {
		{"mindamage",11,100,0},
		{"maxdamage",63,224,0},
		{"attackspeed",5.3,3.4,0},
		{"woundchance",4.2,8.6,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",20,11,0},
		{"attackactioncost",46,25,0},
		{"attackmindcost",21,11,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 0,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("pistol_power5", pistol_power5)