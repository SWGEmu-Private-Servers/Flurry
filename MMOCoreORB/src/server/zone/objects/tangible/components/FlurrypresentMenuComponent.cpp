/*
 * FlurrypresentMenuComponent.cpp
 *
 *  Created on: 11/22/2017
 *      Author: TOXIC
 */

#include "FlurrypresentMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/jedi/JediManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/building/BuildingObject.h"

void FlurrypresentMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
		ManagedReference<BuildingObject*> building = cast<BuildingObject*>(player->getRootParent());

	// If outside dispaly menu options, if inside a building show nothing.
	if (building == NULL) {
	menuResponse->addRadialMenuItem(20, 3, "I have been nice");
	}
}

int FlurrypresentMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
		ManagedReference<BuildingObject*> building = cast<BuildingObject*>(creature->getRootParent());

	// If outside dispaly menu options, if inside a building show nothing.
	if (building == NULL) {
	if (selectedID != 20)
		return 0;

 	ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
 	ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
	lootManager->createLoot(inventory, "nge_house_loot_deed_01", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "clothing_attachments.", 300);
	lootManager->createLoot(inventory, "armor_attachments", 300);
	lootManager->createLoot(inventory, "backpacks_b01", 300);
	lootManager->createLoot(inventory, "backpacks_b02", 300);
	lootManager->createLoot(inventory, "g_named_crystals", 300);
	lootManager->createLoot(inventory, "ref_crate", 300);
	lootManager->createLoot(inventory, "goggles_all", 300);
	lootManager->createLoot(inventory, "neck_crafter", 300);
	lootManager->createLoot(inventory, "non_jedi_ring_crafter_second", 300);
	lootManager->createLoot(inventory, "non_jedi_ring_crafter", 300);
	lootManager->createLoot(inventory, "non_jedi_rings_ranged", 300);
	lootManager->createLoot(inventory, "non_jedi_rings", 300);
	lootManager->createLoot(inventory, "tiertwo", 300);
	lootManager->createLoot(inventory, "tierthree", 300);
	lootManager->createLoot(inventory, "tierone", 300);
	lootManager->createLoot(inventory, "tierdiamond.lua", 300);
	creature->playEffect("clienteffect/healing_tree.cef", "");
	creature->playEffect("clienteffect/mus_relay_create.cef", "");
	sceneObject->destroyObjectFromWorld(true);
	}
	return 0;
}
