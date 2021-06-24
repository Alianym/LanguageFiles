local worldIconUp = "EsoUI/Art/Progression/progression_indexIcon_world_up.dds"
local worldIconDown = "EsoUI/Art/Progression/progression_indexIcon_world_down.dds"

local stringsDE = {
	   --CQ_THE_COMPENDIUM_SEPARATOR = "\n\n            --------------------------------------                    \n\n",
	   --
	   SI_BINDING_NAME_THE_COMPENDIUM_OPEN_KEY = "Öffne Compendium",
	   --
	   CQ_THE_COMPENDIUM_QUEST_LOG = "Quest Log",
	   CQ_THE_COMPENDIUM_LORE_LIBRARY = "Bibliothek",
	   --
	   CQ_THE_COMPENDIUM_MAIL_ANNOUNCE_MAIL_RECEIVED ="Compendium Mail erhalten",
	   CQ_THE_COMPENDIUM_LORE_LIBRARY_ANNOUNCE_BOOK_LEARNED = "Compendium Lorebook gelernt",
	   --CQ_THE_COMPENDIUM_MAIL_DISPLAY_NAME_SENDER = string.format("|t32:32:%s|t %s", worldIconUp, "The Compendium"),
	   --CQ_THE_COMPENDIUM_MENU_JOURNAL = string.format("|t52:52:%s|t%s", worldIconDown, "The Compendium:"),
}

for id, stringVar in pairs(stringsDE) do
   SafeAddString(_G[id], stringVar, 2)
end
