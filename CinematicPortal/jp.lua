CinematicPortal = CinematicPortal or {}
--CinematicPortal.dispName = "Cinematic Portal"

local stringsFR = {
	-- For LAM Menu
	--CINE_PORTAL_HEADER = "Replay Cinematics",

	-- Portal Names
	CINE_PORTAL_NAME_PLANEMELD = "次元融合",

	CINE_PORTAL_PLANEMELD = "次元融合",
	CINE_PORTAL_DAEDRIC_WAR = "デイドラ戦争",
	CINE_PORTAL_CHAPTER_ELSWEYR = "ドラゴンのシーズン",
	CINE_PORTAL_CHAPTER_SKYRIM = "スカイリムの闇の中心",
	CINE_PORTAL_CHAPTER_BLACKWOOD = "オブリビオンの門",
	CINE_PORTAL_CHAPTER_HIGH_ISLE = "ブレトンの伝統",
}

for id, stringVar in pairs(stringsFR) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 2)
end