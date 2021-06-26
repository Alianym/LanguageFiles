-- „ (Alt+0132)
-- Die Ebenenverschmelzung Erzählung... / The Planemeld Arc...

local strfmt = string.format
local overviewGroupTabDescFmt = "%s %s|t26:26:%s|t %s|t26:26:%s|t %s|t26:26:%s|t / |t26:26:%s|t\n\n%s\n\n%s"
local overviewGroupTabDungIcon = "/esoui/art/icons/poi/poi_groupinstance_complete.dds"
local overviewGroupTabTrialIcon = "/esoui/art/icons/poi/poi_raiddungeon_complete.dds"
local overviewGroupTabArenaIconOne = "/esoui/art/icons/poi/poi_groupinstance_complete.dds"
local overviewGroupTabArenaIconTwo = "/esoui/art/icons/poi/poi_raiddungeon_complete.dds"

local stringsDE = {
	--TQG_CONFIRM_QUEST_ZONE_STORY = "Gebietserzählungy",
	--TQG_CONFIRM_QUEST_POI = "Interessante Orte",

	SI_BINDING_NAME_TQG_INTERACT_KEY = "Anzeige Quest-Leitfaden",
	TQG_MENU_JOURNAL = "Der Quest-Leitfaden",

	TQG_OVERVIEW_TAB = "Übersicht",
	--TQG_OVERVIEW_CLASSIC_DESC = "",
	--TQG_OVERVIEW_DLC_DESC = "",
	--TQG_OVERVIEW_GROUP_DESC = "",

	TQG_OVERVIEW_DLC_TITLE = "DLC + Kapitel",
	TQG_OVERVIEW_GROUP_TITLE = "Inhalt der Gruppe",

	TQG_CLASSIC_TAB = "Klassisch",
	TQG_DLC_TAB = "DLC",
	TQG_GROUP_TAB = "Gruppe",

	TQG_QUEST_BTN = "Klassisch: Quest Karte",
	TQG_CRAGLORN_BTN = "Klassisch: Kargstein",
	TQG_IC_BTN = "DLC: The Sublime Plot",
	TQG_ORSINIUM_BTN = "DLC: Reforging Orsinium",

	--TQG_OVERVIEW_LINKS_TITLE = "",
	--TQG_OVERVIEW_LINKS_TEXT = "",
	TQG_OVERVIEW_OBJECTIVE_TITLE = "Notizen",
	--TQG_OVERVIEW_OBJECTIVE_TEXT = "",
	TQG_DEFAULT_QUEST_COMPLETE = "Abgeschlossen",
	TQG_DEFAULT_QUEST_INCOMPLETE = "Unvollständig",

	TQG_PROLOGUE = "Prolog",
	TQG_EPILOGUE = "Epilog",
	TQG_PREREQ = "Voraussetzung",

	TQG_DUNGEON = "Verlies",
	TQG_ARENA = "Arena",
	TQG_TRIAL = "Prüfung",

	TQG_ENTER = "eingeben",
	TQG_SEEK = "suchen",
	
	TQG_PLANEMELD = "Die Ebenenverschmelzung",

	TQG_DOMINION = "Aldmeri-Dominion",
	TQG_COVENANT = "Dolchsturz-Bündnis",
	TQG_PACT = "Ebenherz-Pakt",
	TQG_COLDHARBOUR = "Kalthafen",
	TQG_CRAGLORN = "Kargstein",
	TQG_GUILDS_AND_GLORY = "Gilden und Ruhm",
	TQG_DAEDRIC_WAR = "Daedrisches Kreig",
	TQG_MURKMIRE = "Trübmoor: Zwischenspiel",
	TQG_CHAPTER_ELSWEYR = "Saison des Drachen",
	TQG_CHAPTER_SKYRIM = "Das Schwarze Herz von Skyrim",
	TQG_CHAPTER_BLACKWOOD = "Tore von Oblivion",

	TQG_INVITATION = "Eine Einladung",
	TQG_FIGHTERS_NAME = "Kriegergilde",
	TQG_FIGHTERS_DESC = 'Die Kriegergilde wurde gemäß Abschnitt 4 des „Gilden Gesetzes" gegründet und diese Charta wurde erstmals im 321. Jahr der zweiten Ära als Teil der Herrschaft des Versidue-Shaie-Potentaten bestätigt.',
	TQG_MAGES_NAME = "Magiergilde",
	TQG_MAGES_DESC = 'Die Magiergilde wurde 230 in der zweiten Ära von Vanus Galerion und Rilis XII gegründet. Auf Summerset Isle gegründet. Es wurde später durch das „Gilden Gesetzes" von Potentat Versidue-Shaie bestätigt.',
	TQG_DOSHIA_LAIR = "Doshia's Höhle",
	TQG_BONUS_BALMORA = "Bonus: Balmora",
	TQG_BONUS_BALMORA_DESC = 'Die Regierung von Morrowind sanktionierte die Morag Tong vor langer Zeit, noch während der Ersten Ära, und bis heute führen sie Attentate durch, die stillschweigend legal sind; dabei nutzen sie ein System das als „ehrbahre Schriebe der Hinrichtung" bekannt ist.',
}

for id, string in pairs(stringsDE) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 2)
end

local DLCTooltipFmt = "<<1>>, <<2>>: <<3>>\n(<<4>> <<5>>)"
local function SetupDLCTooltip(str1, str2, zoneId, str4, str5)
	return zo_strformat(DLCTooltipFmt, str1, str2, GetZoneNameById(zoneId), str4, str5)
end

TQG.DLCQuestIdToTooltip = {
	[5935] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 849, "'Rhea Opacarius'", GetString(TQG_SEEK)),
	[6023] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 980, "'Sendschreiben vom Orden des Auges'", GetString(TQG_SEEK)),
	[6097] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 1011, "'Vanus Galerion'", GetString(TQG_SEEK)),
	[6226] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 726, "'Cyrodiilische Sammlungen braucht Euch!'", GetString(TQG_SEEK)),
	[6242] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 726, "'Concordia Mercius'", GetString(TQG_SEEK)),
	[6299] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 1086, "'Anais Davaux'", GetString(TQG_SEEK)),
	[6306] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 1086, "'Abnur Tharn'", GetString(TQG_SEEK)),
	[6395] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 1133, "'Hinzuur'", GetString(TQG_SEEK)),
	[6398] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 1133, "'Das Tal der Klingen'", GetString(TQG_SEEK)),
}

local groupTooltipFmt = "<<1>>: (<<2>> <<3>>)"
local function SetupGroupTooltip(str1, str2, zoneIdOrName)
	local str3

	if type(zoneIdOrName) == "number" then str3 = GetZoneNameById(zoneId)
	elseif type(zoneIdOrName) == "string" then str3 = zoneIdOrName end

	return zo_strformat(groupTooltipFmt, str1, str2, str3)
end

TQG.GroupQuestIdToTooltip = {
	[5554] = SetupGroupTooltip(GetString(TQG_TRIAL), "Bakhum", GetString(TQG_SEEK)),

	[6000] = SetupGroupTooltip(GetString(TQG_TRIAL), "Daynillo Rethul", GetString(TQG_SEEK)),
	[6193] = SetupGroupTooltip(GetString(TQG_TRIAL), "Vandoril", GetString(TQG_SEEK)),

	[6354] = SetupGroupTooltip(GetString(TQG_TRIAL), "Natrada", GetString(TQG_SEEK)),

	[6504] = SetupGroupTooltip(GetString(TQG_TRIAL), "Tyrvera", GetString(TQG_SEEK)),

	[6597] = SetupGroupTooltip(GetString(TQG_ARENA), "Angair", GetString(TQG_SEEK)),

	[6655] = SetupGroupTooltip(GetString(TQG_TRIAL), "Malosza", GetString(TQG_SEEK)),
}