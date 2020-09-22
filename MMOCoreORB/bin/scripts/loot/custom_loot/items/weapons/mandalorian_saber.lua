--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

mandalorian_saber = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Darksaber",
	directObjectTemplate = "object/weapon/melee/sword/crafted_saber/shared_sword_lightsaber_mandalorian.iff",
	craftingValues = {
		{"mindamage",330,425,0},
		{"maxdamage",445,550,0},
		{"attackspeed",4.5,4.5,1},
		{"woundchance",40,80,0},
		{"hitpoints",3000,3000,0},
		{"zerorangemod",46,25,0},
		{"maxrangemod",46,25,0},
		{"midrange",3,3,0},
		{"midrangemod",46,25,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",120,63,0},
		{"attackactioncost",30,15,0},
		{"attackmindcost",16,7,0},
		{"forcecost",45,43,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 1000,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55

}

addLootItemTemplate("mandalorian_saber", mandalorian_saber)