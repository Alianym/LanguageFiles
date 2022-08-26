CinematicPortal = CinematicPortal or {}
--CinematicPortal.dispName = "Cinematic Portal"

local stringsFR = {
	-- For LAM Menu
	--CINE_PORTAL_HEADER = "Replay Cinematics",

	-- Portal Names
	CINE_PORTAL_NAME_PLANEMELD = "La coalescencia",

	CINE_PORTAL_PLANEMELD = "La coalescencia",
	CINE_PORTAL_DAEDRIC_WAR = "Guerra Dédrica",
	CINE_PORTAL_CHAPTER_ELSWEYR = "Temporada del Dragón",
	CINE_PORTAL_CHAPTER_SKYRIM = "Corazón oscuro de Skyrim",
	CINE_PORTAL_CHAPTER_BLACKWOOD = "Puertas de Oblivion",
	CINE_PORTAL_CHAPTER_HIGH_ISLE = "El legado de los bretones",
}

for id, stringVar in pairs(stringsFR) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 2)
end