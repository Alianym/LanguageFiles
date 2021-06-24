local stringsFR = {
   LIBRARIUM_MAIL_SAVE = "Sauvegarder le courrier",
   LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Étagère",
}

for id, string in pairs(stringsFR) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 2)
end

LibrMailDateMap.Month = {
	[01] = "Primétoile",
	[02] = "Clairciel",
	[3] = "Semailles",
	[4] = "Ondepluie",
	[5] = "Plantaisons",
	[6] = "Mi-l'an",
	[7] = "Hautzénith",
	[8] = "Vifazur",
	[9] = "Âtrefeu",
	[10] = "Soufflegivre",
	[11] = "Sombreciel",
	[12] = "Soirétoile",
}
