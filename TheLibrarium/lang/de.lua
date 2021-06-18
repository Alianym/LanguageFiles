local stringsDE = {
   LIBRARIUM_MAIL_ATTACHED = "Anhang",
   LIBRARIUM_MAIL_SAVE = "Nachrichten speichern",
   LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Bücherregal",
}

for id, string in pairs(stringsDE) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 2)
end

LibrMailDateMap.Month = {
	[01] = "Morgenstern",
	[02] = "Sonnenaufgang",
	[3] = "Erstsaat",
	[4] = "RegenHand",
	[5] = "Zweitsaat",
	[6] = "Mittjahr",
	[7] = "Sonnenhöhe",
	[8] = "Letzte Saat",
	[9] = "Herdfeuer",
	[10] = "Eisherbst",
	[11] = "Sonnenuntergang",
	[12] = "Abendstern",
}
