CinematicPortal = CinematicPortal or {}
--CinematicPortal.dispName = "Cinematic Portal"

local stringsFR = {
	-- For LAM Menu
	--CINE_PORTAL_HEADER = "Replay Cinematics",

	-- Portal Names
	CINE_PORTAL_NAME_PLANEMELD = "La Coalescence",

	CINE_PORTAL_PLANEMELD = "La Coalescence",
	CINE_PORTAL_DAEDRIC_WAR = "Guerre Daedrique",
	CINE_PORTAL_CHAPTER_ELSWEYR = "Saison du Dragon",
	CINE_PORTAL_CHAPTER_SKYRIM = "Le Cœur noir de Bordeciel",
	CINE_PORTAL_CHAPTER_BLACKWOOD = "Les Portes d'Oblivion",
	CINE_PORTAL_CHAPTER_HIGH_ISLE = "L’Héritage des Brétons",
}

for id, stringVar in pairs(stringsFR) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 2)
end