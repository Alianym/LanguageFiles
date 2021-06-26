local strfmt = string.format
local overviewGroupTabDescFmt = "%s %s|t26:26:%s|t %s|t26:26:%s|t %s|t26:26:%s|t / |t26:26:%s|t\n\n%s\n\n%s"
local overviewGroupTabDungIcon = "/esoui/art/icons/poi/poi_groupinstance_complete.dds"
local overviewGroupTabTrialIcon = "/esoui/art/icons/poi/poi_raiddungeon_complete.dds"
local overviewGroupTabArenaIconOne = "/esoui/art/icons/poi/poi_groupinstance_complete.dds"
local overviewGroupTabArenaIconTwo = "/esoui/art/icons/poi/poi_raiddungeon_complete.dds"

local stringsRU = {
	--TQG_CONFIRM_QUEST_ZONE_STORY = "Сюжет зоны",
	--TQG_CONFIRM_QUEST_POI = "Точки интереса",

	SI_BINDING_NAME_TQG_INTERACT_KEY = "Включает/отключает Руководство по квестам",
	TQG_MENU_JOURNAL = "Руководство квест",

	TQG_OVERVIEW_TAB = "Общие сведения",
	--TQG_OVERVIEW_CLASSIC_DESC = "",
	--TQG_OVERVIEW_DLC_DESC = "",
	--TQG_OVERVIEW_GROUP_DESC = "",

	TQG_OVERVIEW_DLC_TITLE = "Дополнение + Глава",
	TQG_OVERVIEW_GROUP_TITLE = "Групповой контент",

	TQG_CLASSIC_TAB = "классический",
	TQG_DLC_TAB = "Дополнение",
	TQG_GROUP_TAB = "Группa",

	TQG_QUEST_BTN = "Classic: Quest Map",
	TQG_CRAGLORN_BTN = "Classic: Craglorn",
	TQG_IC_BTN = "DLC: The Sublime Plot",
	TQG_ORSINIUM_BTN = "DLC: Reforging Orsinium",

	--TQG_OVERVIEW_LINKS_TITLE = "",
	--TQG_OVERVIEW_LINKS_TEXT = "",
	TQG_OVERVIEW_OBJECTIVE_TITLE = "Примечания",
	--TQG_OVERVIEW_OBJECTIVE_TEXT = "",
	TQG_DEFAULT_QUEST_COMPLETE = "Завершено",
	TQG_DEFAULT_QUEST_INCOMPLETE = "Не получено",

	TQG_PROLOGUE = "Пролог",
	TQG_EPILOGUE = "эпилог",
	TQG_PREREQ = "Необходимое условие",

	TQG_DUNGEON = "Подземелье",
	TQG_ARENA = "Aренa",
	TQG_TRIAL = "Испытание",

	TQG_ENTER = "Ввести",
	TQG_SEEK = "Найти",

	TQG_PLANEMELD = "Слияния миров",

	TQG_DOMINION = "Альдмерский Доминион",
	TQG_COVENANT = "Даггерфольский Ковенант",
	TQG_PACT = "Эбонхартский Пакт",
	TQG_COLDHARBOUR = "Хладной Гавани",
	TQG_CRAGLORN = "Краглорн",
	TQG_GUILDS_AND_GLORY = "Гильдии и Слава",
	TQG_DAEDRIC_WAR = "Даэдрический Война",
	TQG_MURKMIRE = "Мрачные Трясины: интерлюдия",
	TQG_CHAPTER_ELSWEYR = "Драконий Оплот",
	TQG_CHAPTER_SKYRIM = "Темное Сердце Скайрима",
	TQG_CHAPTER_BLACKWOOD = "Врата Обливиона",

	TQG_INVITATION = "Приглашение",
	TQG_FIGHTERS_NAME = "Гильдия бойцов",
	TQG_FIGHTERS_DESC = 'Гильдия воинов была создана в соответствии с разделом 4 Закона о гильдиях, и эта хартия была впервые утверждена в 321 году второй эры как часть правления Потентат Версидью-Шайе',
	TQG_MAGES_NAME = "Гильдия магов",
	TQG_MAGES_DESC = 'Гильдия Магов была основана в 230 году во второй эре Ванусом Галерионом и Рилисом XII. Основан на острове Саммерсет. Позднее это было подтверждено «Законом о гильдиях» Потентат Версидью-Шайе.',
	TQG_DOSHIA_LAIR = "Доши-х логово",
	TQG_BONUS_BALMORA = "дополнительный: Балмора",
	TQG_BONUS_BALMORA_DESC = "Правительство Морровинда санкционировало деятельность Мораг Тонг еще в Первую эру, и по сей день они продолжают совершать негласно законные убийства, используя систему контрактов, известную как «приказы о благородной казни».",
}

for id, string in pairs(stringsRU) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 2)
end

local DLCTooltipFmt = "<<1>>, <<2>>: <<3>>\n(<<4>> <<5>>)"
local function SetupDLCTooltip(str1, str2, zoneId, str4, str5)
	return zo_strformat(DLCTooltipFmt, str1, str2, GetZoneNameById(zoneId), str4, str5)
end

TQG.DLCQuestIdToTooltip = {
	[5935] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 849, GetString(TQG_SEEK), "«Рея опакария»"),
	[6023] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 980, GetString(TQG_SEEK), "«Донесение ордена Ока»"),
	[6097] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/1", 1011, GetString(TQG_SEEK), "«Ванус Галерион»"),
	[6226] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 726, GetString(TQG_SEEK), "«Вы нужны Коллекционерам Сиродила!!»"),
	[6242] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 726, GetString(TQG_SEEK), "«Конкордия Mercius»"),
	[6299] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 1086, GetString(TQG_SEEK), "«Анаис Даво»"),
	[6306] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 1086, GetString(TQG_SEEK), "«Абнур Тарн»"),
	[6395] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "1/2", 1133, GetString(TQG_SEEK), "«Xинзур»"),
	[6398] = SetupDLCTooltip(GetString(TQG_PROLOGUE), "2/2", 1133, GetString(TQG_SEEK), "«Долина Клинков»"),
}

local groupTooltipFmt = "<<1>>: (<<2>> <<3>>)"
local function SetupGroupTooltip(str1, str2, zoneIdOrName)
	local str3

	if type(zoneIdOrName) == "number" then str3 = GetZoneNameById(zoneId)
	elseif type(zoneIdOrName) == "string" then str3 = zoneIdOrName end

	return zo_strformat(groupTooltipFmt, str1, str2, str3)
end

TQG.GroupQuestIdToTooltip = {
	[5554] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Баукм"),

	[6000] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Дайнилло Ретул"),
	[6193] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Вандорил"),

	[6354] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Натрада"),

	[6504] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Тирвepa"),

	[6597] = SetupGroupTooltip(GetString(TQG_ARENA), GetString(TQG_SEEK), "Ангер"),

	[6655] = SetupGroupTooltip(GetString(TQG_TRIAL), GetString(TQG_SEEK), "Малосза"),
}