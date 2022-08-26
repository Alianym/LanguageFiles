CinematicPortal = CinematicPortal or {}
--CinematicPortal.dispName = "Cinematic Portal"

local stringsFR = {
	-- For LAM Menu
	--CINE_PORTAL_HEADER = "Replay Cinematics",

	-- Portal Names
	CINE_PORTAL_NAME_PLANEMELD = "Слияния миров",

	CINE_PORTAL_PLANEMELD = "Слияния миров",
	CINE_PORTAL_DAEDRIC_WAR = "Даэдрический Война",
	CINE_PORTAL_CHAPTER_ELSWEYR = "Драконий Оплот",
	CINE_PORTAL_CHAPTER_SKYRIM = "Темное Сердце Скайрима",
	CINE_PORTAL_CHAPTER_BLACKWOOD = "Врата Обливиона",
	CINE_PORTAL_CHAPTER_HIGH_ISLE = "Бретонское наследие",
}

for id, stringVar in pairs(stringsFR) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 2)
end