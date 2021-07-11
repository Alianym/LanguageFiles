local stringsFR = {
	LIBRARIUM_MAIL_SAVE = "Sauvegarder le courrier",
	LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Étagère",

	--Mail Date Strings
	LIBRARIUM_MONTH_ONE = "Primétoile",
	LIBRARIUM_MONTH_TWO = "Clairciel",
	LIBRARIUM_MONTH_THREE = "Semailles",
	LIBRARIUM_MONTH_FOUR = "Ondepluie",
	LIBRARIUM_MONTH_FIVE = "Plantaisons",
	LIBRARIUM_MONTH_SIX = "Mi-l'an",
	LIBRARIUM_MONTH_SEVEN = "Hautzénith",
	LIBRARIUM_MONTH_EIGHT = "Vifazur",
	LIBRARIUM_MONTH_NINE = "Âtrefeu",
	LIBRARIUM_MONTH_TEN = "Soufflegivre",
	LIBRARIUM_MONTH_ELEVEN = "Sombreciel",
	LIBRARIUM_MONTH_TWELVE = "Soirétoile",
}

for id, string in pairs(stringsFR) do
	SafeAddString(_G[id], stringVar, 2)
end