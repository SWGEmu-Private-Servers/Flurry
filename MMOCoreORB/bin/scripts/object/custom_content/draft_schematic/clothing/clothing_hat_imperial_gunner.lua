object_draft_schematic_clothing_clothing_hat_imperial_gunner = object_draft_schematic_clothing_shared_clothing_hat_imperial_gunner:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Imperial Gunner Hat",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 1, 

   xpType = "crafting_clothing_general", 
   xp = 110, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"primary_pocket", "secondary_pocket", "strap_pad", "strap_adjustment", "lightweight_frame", "stabilizer_harness"},
   ingredientSlotType = {0, 0, 1, 0, 0, 0},
   resourceTypes = {"fiberplast", "hide", "object/tangible/component/clothing/shared_leather_heavy_duty.iff", "metal", "aluminum", "petrochem_inert_polymer"},
   resourceQuantities = {20, 10, 1, 5, 15, 5},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/hat/hat_imperial_gunner_01.iff",

   additionalTemplates = {
             },
		
	skillMods = {	    
		{"resistance_bleeding", 25},
	    {"slope_move", 25},
	    {"melee_defense", 25},
	    {"ranged_defense", 25}
	}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_hat_imperial_gunner, "object/draft_schematic/clothing/clothing_hat_imperial_gunner.iff")
