local stringsDE = {
	SI_BINDING_NAME_TQG_INTERACT_KEY = "Anzeige Quest-Leitfaden",
	TQG_MENU_JOURNAL = "Der Quest-Leitfaden",
	TQG_OVERVIEW_OBJECTIVE_TEXT = "Notizen",
	TQG_DEFAULT_QUEST_COMPLETE = "Abgeschlossen",
	TQG_DEFAULT_QUEST_INCOMPLETE = "Unvollständig",
	TQG_PROLOGUE = "Prolog",
	TQG_EPILOGUE = "Epilog",

	--TQG_CONFIRM_QUEST_ZONE_STORY = "Gebietserzählung",
	--TQG_CONFIRM_QUEST_POI = "Interessante Orte",
}

for id, stringVar in pairs(stringsDE) do
   SafeAddString(_G[id], stringVar, 2)
end

if not TQG then TQG = {} end

TQG.OverviewTabName = "Übersicht"
TQG.ClassicTabName = "Klassisch"
TQG.DLCTabName = "DLC"
TQG.GroupTabName = "Gruppe"

TQG.BtnQuestMap = "Klassisch: Quest Karte"
TQG.BtnCraglorn = "Klassisch: Kargstein"
TQG.BtnImperialCity = "DLC: Der Hohe Beschützer"
TQG.BtnOrsinium = "DLC: Reforging Orsinium"
