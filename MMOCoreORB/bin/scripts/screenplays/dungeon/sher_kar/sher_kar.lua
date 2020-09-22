--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
sher_karScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mustafar",
}
registerScreenPlay("sher_karScreenplay", true)
-----------------------------
--Start SherKar ScreenPlay
-----------------------------
function sher_karScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("SherKar Loaded")
	end
end
-----------------------
--SherKar Has Spawned
-----------------------
function sher_karScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mustafar", "sherkar", -1, -79.9848, -20.4863, -121.67, 277, 12116005)--Spawn SherKar
		local creature = CreatureObject(pBoss)
		print("SherKar Spawned")
		createObserver(OBJECTDESTRUCTION, "sher_karScreenplay", "bossDead", pBoss)--SherKar Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--SherKar Has Died Respawn SherKar With A New Dynamic Spawn
---------------------------------------------------------------
function sher_karScreenplay:bossDead(pBoss)
	print("SherKar Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "sher_karScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "sher_karScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	--createEvent(1 * 1000, "sher_karScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
	--createEvent(1 * 1000, "sher_karScreenplay", "BroadcastRespawn", pBoss, "")--Broadcast 3 Hour Respawn
	--createEvent(10795 * 1000, "sher_karScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	--createEvent(10798 * 1000, "sher_karScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	--createEvent(10799 * 1000, "sher_karScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	--createEvent(10800 * 1000, "sher_karScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn SherKar Boss
-----------------------
function sher_karScreenplay:KillSpawn()
		local pBoss = spawnMobile("mustafar", "sherkar", -1, -79.9848, -20.4863, -121.67, 277, 12116005)--Spawn SherKar After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("SherKar Respawned")
		createObserver(OBJECTDESTRUCTION, "sher_karScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--SherKar Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function sher_karScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("SherKar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end

----------------------------
--Broadcast Dead
----------------------------
function sher_karScreenplay:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 SherKar Boss Has Died!")
		CreatureObject(bossObject):broadcastToDiscord("SherKar Boss Has Died!")
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function sher_karScreenplay:BroadcastRespawn(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 SherKar Boss Respawning In 3 Hours")
		CreatureObject(bossObject):broadcastToDiscord("SherKar Boss Respawning In 3 Hours")
end
-----------------------
--Broadcast Respawn
-----------------------
function sher_karScreenplay:KillSpawnCast(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 SherKar Boss Respawning In ..")
		CreatureObject(bossObject):broadcastToDiscord("SherKar Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function sher_karScreenplay:KillSpawnCast1(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 3")
		CreatureObject(bossObject):broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function sher_karScreenplay:KillSpawnCast2(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 2")
		CreatureObject(bossObject):broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function sher_karScreenplay:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 1")
		CreatureObject(bossObject):broadcastToDiscord("1")
end
