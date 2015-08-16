-----------------------------------
--	Area: Windurst Woods
--	NPC: Jack of Spades
--	Adventurer's Assistant
--	Working 100%
-------------------------------------

require("scripts/globals/settings");
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
require("scripts/zones/Windurst_Woods/TextIDs");

----------------------------------- 
-- onTrade Action 
----------------------------------- 

function onTrade(player,npc,trade)

count = trade:getItemCount();
AdventurerCoupon = trade:hasItemQty(536,1);

	if (AdventurerCoupon == true and count == 1) then
		player:startEvent(0x271a,GIL_RATE*50);
	end
end;

----------------------------------- 
-- onTrigger Action 
-----------------------------------
 
function onTrigger(player,npc) 
	player:startEvent(0x2719,0,4);
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
	if (csid == 0x271a) then
		player:tradeComplete();
		player:addGil(GIL_RATE*200000);
		player:addKeyItem(AIRSHIP_PASS);
		player:addKeyItem(AIRSHIP_PASS_FOR_KAZHAM);
		player:messageSpecial(KEYITEM_OBTAINED,AIRSHIP_PASS);
		player:messageSpecial(KEYITEM_OBTAINED,AIRSHIP_PASS_FOR_KAZHAM);
		player:messageSpecial(GIL_OBTAINED,GIL_RATE*200000);
		player:addTitle(DARK_SIDER);
		player:setVar("ZeruhnMines_Zeid_CS", 0);
		player:messageSpecial(YOU_CAN_NOW_BECOME_A_DARK_KNIGHT);
		player:completeQuest(BASTOK, BLADE_OF_DARKNESS);
		player:addTitle(BUSHIDO_BLADE);
		player:addItem(17809);
		player:messageSpecial(YOU_CAN_NOW_BECOME_A_SAMURAI, 17809); -- You can now become a samurai
		player:unlockJob(12); -- Samurai Job Unlocked
		player:setVar("ForgeYourDestiny_timer",0);
		player:setVar("ForgeYourDestiny_Event",0);
		player:addFame(OUTLANDS, NORG_FAME*30);
		player:completeQuest(OUTLANDS, FORGE_YOUR_DESTINY);
		player:setVar("Lakeside_Minuet_Progress",0);
		player:completeQuest(JEUNO,LAKESIDE_MINUET);
		player:addTitle(TROUPE_BRILIOTH_DANCER);
		player:unlockJob(19);
		player:messageSpecial(UNLOCK_DANCER);
		player:addFame(JEUNO, JEUNO_FAME*30);
		player:needToZone(true);
		player:setVar("TheFangedOne_Event",0);
			player:setVar("TheFangedOne_Died",0);
			player:addTitle(THE_FANGED_ONE);
			player:addItem(13117);
			player:messageSpecial(ITEM_OBTAINED,13117);
			player:unlockJob(11);
			player:messageSpecial(PERIH_VASHAI_DIALOG);
			player:addFame(WINDURST, WIN_FAME* 30);
			player:completeQuest(WINDURST,THE_FANGED_ONE);
			player:unlockJob(0);
			player:setVar("IsacioElderMemVar", 0);
			player:messageSpecial(SUBJOB_UNLOCKED);
			player:completeQuest(OTHER_AREAS, ELDER_MEMORIES);
		
	end 
end;



