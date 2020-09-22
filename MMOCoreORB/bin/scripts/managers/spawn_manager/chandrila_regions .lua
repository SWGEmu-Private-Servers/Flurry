-- Planet Region Definitions
-- This file has been generated with the SWGEmu World Spawner Tool.
--
-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {RECTANGLE, x2, y2}
--   - Ring: {RING, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

chandrila_regions = {
        {"aakuan_champions_cave",4339,-4281,{CIRCLE,150},NOSPAWNAREA + NOBUILDZONEAREA}, -- Crystal Canyon POI badge area     
        {"aakuan_tent",2475,2303,{CIRCLE,150},NOSPAWNAREA + NOBUILDZONEAREA}, -- Lake Sah'ot    
        {"animal_skull",-80,4710,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA}, -- Chandriltech Facility      
        {"arch_and_torches",-5018,4084,{CIRCLE,1000}, NOBUILDZONEAREA}, -- Gladean State Park
        
        
	{"dearic",0,0,{CIRCLE,0},UNDEFINEDAREA},
	{"dearic_easy_newbie",432,-3008,{CIRCLE,1750},SPAWNAREA,{"chandrila_world"},256},
	{"dearic_medium_newbie",432,-3008,{CIRCLE,1750,2500},SPAWNAREA,{"chandrila_world"},384},
   
	{"nashal",0,0,{1,0},UNDEFINEDAREA},
	
	{"nashal_easy_newbie",4352,5209,{CIRCLE,1750},SPAWNAREA,{"chandrila_world"},256},
	{"nashal_medium_newbie",4352,5209,{CIRCLE,1750,2500},SPAWNAREA,{"chandrila_world"},384},
	{"talus_imperial_outpost_easy_newbie",-2186,2300,{CIRCLE,1000},SPAWNAREA,{"chandrila_world"},256},
	{"talus_imperial_outpost_medium_newbie",-2186,2300,{CIRCLE,1000,1750},SPAWNAREA,{"chandrila_world"},384},
	

	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA,{"chandrila_world","global"},2048},

}

chandrila_static_spawns = {
	{"rebel_recruiter",1,191.3,6,-3046.8,43,0, "", "", "stationary"},

}
