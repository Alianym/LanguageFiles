CinematicPortal = {}
CinematicPortal.name = "CinematicPortal"
CinematicPortal.dispName = "Cinematic Portal"
CinematicPortal.author = "Alianym"
CinematicPortal.version = "1.01"

local stringsEN = {
	-- For LAM Menu
	CINE_PORTAL_HEADER = "Replay Cinematics",

	-- Portal Names
	CINE_PORTAL_NAME_TUTORIAL = GetString(SI_GAMEPAD_HELP_LINK_TOOLTIP_HEADER),
	CINE_PORTAL_NAME_SOULLESS = GetZoneNameById(586),
	CINE_PORTAL_NAME_PLANEMELD = "The Planemeld",
	CINE_PORTAL_NAME_MORROWIND = GetZoneNameById(849),
	CINE_PORTAL_NAME_SUMMERSET = GetZoneNameById(1011),
	CINE_PORTAL_NAME_ELSWEYR = GetZoneNameById(1086),
	CINE_PORTAL_NAME_GREYMOOR = GetZoneNameById(1160),
	CINE_PORTAL_NAME_BLACKWOOD = GetZoneNameById(1261),
	CINE_PORTAL_NAME_HIGH_ISLE = GetZoneNameById(1318),

	CINE_PORTAL_PLANEMELD = "The Planemeld",
	CINE_PORTAL_DAEDRIC_WAR = "Daedric War",
	CINE_PORTAL_CHAPTER_ELSWEYR = "Season of the Dragon",
	CINE_PORTAL_CHAPTER_SKYRIM = "Dark Heart of Skyrim",
	CINE_PORTAL_CHAPTER_BLACKWOOD = "Gates of Oblivion",
	CINE_PORTAL_CHAPTER_HIGH_ISLE = "Legacy of the Bretons",
}

local zStrFmt = zo_strformat
for id, stringVar in pairs(stringsEN) do
   ZO_CreateStringId(id, zStrFmt("<<1>>", stringVar))
   SafeAddVersion(id, 1)
end