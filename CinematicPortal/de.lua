CinematicPortal = CinematicPortal or {}
--CinematicPortal.dispName = "Cinematic Portal"

local stringsFR = {
	-- For LAM Menu
	--CINE_PORTAL_HEADER = "Replay Cinematics",

	-- Portal Names
	CINE_PORTAL_NAME_PLANEMELD = "Die Ebenenverschmelzung",

	CINE_PORTAL_PLANEMELD = "Die Ebenenverschmelzung",
	CINE_PORTAL_DAEDRIC_WAR = "Daedrisches Kreig",
	CINE_PORTAL_CHAPTER_ELSWEYR = "Saison des Drachen",
	CINE_PORTAL_CHAPTER_SKYRIM = "Das Schwarze Herz von Skyrim",
	CINE_PORTAL_CHAPTER_BLACKWOOD = "Tore von Oblivion",
	CINE_PORTAL_CHAPTER_HIGH_ISLE = "Vermächtnis der Bretonen",
}

for id, stringVar in pairs(stringsFR) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 2)
end