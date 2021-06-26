--/script d(GetCVar("language.2"))
--/script SetCVar("language.2", "de")
-- en, de, fr, ru, jp, ... 

TQG = {}

local strfmt = string.format
local overviewGroupTabDescFmt = "%s %s|t26:26:%s|t %s|t26:26:%s|t %s|t26:26:%s|t / |t26:26:%s|t\n\n%s\n\n%s"
local overviewGroupTabDungIcon = "/esoui/art/icons/poi/poi_groupinstance_complete.dds"
local overviewGroupTabTrialIcon = "/esoui/art/icons/poi/poi_raiddungeon_complete.dds"
local overviewGroupTabArenaIconOne = "/esoui/art/icons/poi/poi_groupinstance_complete.dds"
local overviewGroupTabArenaIconTwo = "/esoui/art/icons/poi/poi_raiddungeon_complete.dds"

local stringsEN = {
	--TQG_CONFIRM_QUEST_TITLE = "Which Path Will You Take?",
	--TQG_CONFIRM_QUEST_ZONE_STORY = "Zone Story",
	--TQG_CONFIRM_QUEST_POI = "Points of Interest",
	--TQG_CONFIRM_MAIN_TEXT = "You approach the end of the Zone Story, but Points of Interest remain incomplete. If you complete them before you finish the Zone Story, you may see familiar faces again at the end of the zone."

	SI_BINDING_NAME_TQG_INTERACT_KEY = "Toggle Quest Guide",
	TQG_MENU_JOURNAL = "The Questing Guide",

	TQG_OVERVIEW_TAB = "Overview",
	TQG_OVERVIEW_CLASSIC_DESC = "The Planemeld Arc... This is the original ESO story in the Aurbis, and the tale will interweave amongst Main Story, Alliance, and Guild Storylines as you progress.\n\nAlliance Stories happen in parallel – e.g. Starter Island(s), then Auridon/Glenumbra/Stonefalls, etc. You should not feel like you have to complete every Alliance Story before reaching Coldharbour, however.\n\nThe original Alliance Story pathway was;\n – The story of your character's Alliance; then Cadwell's Silver/Gold which represented the other two Alliances, in clockwise order as a 'post-Main Quest' experience.",
	TQG_OVERVIEW_DLC_DESC = "The DLC section covers off every major storyline since the introduction of the DLC dungeons, zones, and Chapters. The order presented defaults to the order of release.\n\nMajor Events include:\n – The Sublime Plot\n – Reforging Orsinium\n – Thieves Guild / Dark Brotherhood\n – Daedric War\n – A Lost Legacy\n – Season of the Dragon\n – Dark Heart of Skyrim\n – Gates of Oblivion",
	TQG_OVERVIEW_GROUP_DESC = strfmt(overviewGroupTabDescFmt, "The Group section includes the majority of instanced Group Content to-date.", "Dungeons: ", overviewGroupTabDungIcon, "Trials: ", overviewGroupTabTrialIcon, "Arenas: ", overviewGroupTabArenaIconOne, overviewGroupTabArenaIconTwo, "There are normal, veteran, and occasionally hard-mode versions of the content, but with the exception of Maelstrom Arena (which only requires the normal-mode quest), the Guide does not care on which difficulty you complete the quest.", "The quests are still tied to the content with which they released. E.G., Maw of Lorkhaj is in Reaper's March, but released with Thieves Guild, so it will be listed under the latter."),

	TQG_OVERVIEW_DLC_TITLE = "DLC + Chapters",
	TQG_OVERVIEW_GROUP_TITLE = "Group Content",

	TQG_CLASSIC_TAB = "Classic",
	TQG_DLC_TAB = "DLC",
	TQG_GROUP_TAB = "Group",

	TQG_QUEST_BTN = "Classic: Quest Map",
	TQG_CRAGLORN_BTN = "Classic: Craglorn",
	TQG_IC_BTN = "DLC: The Sublime Plot",
	TQG_ORSINIUM_BTN = "DLC: Reforging Orsinium",

	TQG_OVERVIEW_LINKS_TITLE = "Useful Links",
	TQG_OVERVIEW_LINKS_TEXT = "Due to the nature of the links, spoilers are more likely the deeper you delve. Be forewarned...",
	TQG_OVERVIEW_OBJECTIVE_TITLE = "Notes",
	TQG_OVERVIEW_OBJECTIVE_TEXT = "Required group size for the content will vary according to the individuals. Maelstrom Arena is a solo Arena–You will face it's horrors alone.\n\n(As a general rule, Dungeon quests are not repeatable, while Trial quests are repeatable weekly. You will only need to complete them once to register them.)",
	TQG_DEFAULT_QUEST_COMPLETE = "Complete",
	TQG_DEFAULT_QUEST_INCOMPLETE = "Incomplete",

	TQG_PROLOGUE = "Prologue",
	TQG_EPILOGUE = "Epilogue",
	TQG_PREREQ = "Prerequisite",

	TQG_DUNGEON = "Dungeon",
	TQG_ARENA = "Arena",
	TQG_TRIAL = "Trial",

	TQG_ENTER = "Enter",
	TQG_SEEK = "Seek out",
	
	TQG_PLANEMELD = "The Planemeld",

	TQG_DOMINION = "Aldmeri Dominion",
	TQG_COVENANT = "Daggerfall Covenant",
	TQG_PACT = "Ebonheart Pact",
	TQG_COLDHARBOUR = "Coldharbour",
	TQG_CRAGLORN = "Craglorn",
	TQG_GUILDS_AND_GLORY = "Guilds and Glory",
	TQG_DAEDRIC_WAR = "5: Daedric War",
	TQG_MURKMIRE = "Murkmire: Interlude",
	TQG_CHAPTER_ELSWEYR = "Season of the Dragon",
	TQG_CHAPTER_SKYRIM = "Dark Heart of Skyrim",
	TQG_CHAPTER_BLACKWOOD = "9: Gates of Oblivion",

	TQG_INVITATION = "An Invitation",
	TQG_FIGHTERS_NAME = "Fighters Guild",
	TQG_FIGHTERS_DESC = 'The Guild of Fighters was established under the section 4 of the "Guilds Act," and this charter was first confirmed under the Potentate Versidue-Shaie in the 321st year of the Second Era.',
	TQG_MAGES_NAME = "Mages Guild",
	TQG_MAGES_DESC = 'The Guild of Mages was established on Summerset Isle in the year 230 of the Second Era by Vanus Galerion and Rilis XII. It was later confirmed by the "Guilds Act" of Potentate Versidue-Shaie.',
	TQG_DOSHIA_LAIR = "Doshia's Lair",
	TQG_BONUS_BALMORA = "Bonus: Balmora",
	TQG_BONUS_BALMORA_DESC = 'The Morrowind government sanctioned the Morag Tong long ago during the First Era, and to this day they continue to perform tacitly legal assassinations, utilizing a system of contracts known as "honorable writs of execution."',
}

for id, string in pairs(stringsEN) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 1)
end

local DLCTooltipFmt = "<<1>>, <<2>>: <<3>>\n(<<4>> <<5>>)"
local function SetupDLCTooltip(str1, str2, zoneId, str4, str5)
	return zo_strformat(DLCTooltipFmt, str1, str2, GetZoneNameById(zoneId), str4, str5)
end

TQG.DLCQuestIdToTooltip = {
	[5935] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 849, GetString(TQG_SEEK), "'Rhea Opacarius'"),
	[6023] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 980, GetString(TQG_SEEK), "'Order of the Eye Dispatch'"),
	[6097] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 1011, GetString(TQG_SEEK), "'Vanus Galerion'"),
	[6226] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 726, GetString(TQG_SEEK), "'Cyrodiilic Collections Needs You!'"),
	[6242] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 726, GetString(TQG_SEEK), "'Concordia Mercius'"),
	[6299] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 1086, GetString(TQG_SEEK), "'Anais Davaux'"),
	[6306] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 1086, GetString(TQG_SEEK), "'Abnur Tharn'"),
	[6395] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 1133, GetString(TQG_SEEK), "'Hinzuur'"),
	[6398] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 1133, "Visit", "'Valley of Blades'"),
}

local groupTooltipFmt = "<<1>>: (<<2>> <<3>>)"
local function SetupGroupTooltip(str1, str2, zoneIdOrName)
	local str3

	if type(zoneIdOrName) == "number" then str3 = GetZoneNameById(zoneId)
	elseif type(zoneIdOrName) == "string" then str3 = zoneIdOrName end

	return zo_strformat(groupTooltipFmt, str1, str2, str3)
end

TQG.GroupQuestIdToTooltip = {
	[5554] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Bakhum"),

	[6000] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Daynillo Rethul"),
	[6193] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Vandoril"),

	[6354] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Natrada"),

	[6504] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Tyrvera"),

	[6597] = SetupGroupTooltip(GetString(TQG_ARENA), GetString(TQG_SEEK), "Angair"),

	[6655] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Malosza"),
}