local stringsDE = {
   	SI_BINDING_NAME_LIBRARIUM_OPEN_KEY = "Öffne Librarium",

	--LIBRARIUM_CUSTOM_INTERACT_ACTION = "Librarium",
   	LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Bücherregal",

	LIBRARIUM_LORE_LIBRARY_ANNOUNCE_BOOK_LEARNED = "Librarium Lorebook gelernt",
	--LIBRARIUM_MENU_JOURNAL = string.format("|t52:52:%s|t%s:", worldIconDown, addOnLongName),
	--LIBRARIUM_WINDOW_TITLE_LORE_LIBRARY = string.format("|t52:52:%s|t%s:", worldIconDown, addOnLongName),

	LIBRARIUM_ADVENTURES_RESTART_BOOK = "<NEUSTARTEN>",

	LIBRARIUM_EDITOR_TOGGLE_MEDIUM = "Wechsel Buch Medium",
	LIBRARIUM_EDITOR_OPEN_BOOK_WRITER = "Öffne Buch Editor",
	LIBRARIUM_EDITOR_OPEN_BOOK_EDITOR = "Editiere Buch",
	LIBRARIUM_EDITOR_UNDO_RECENT_CHANGES = "Undo",

	LIBRARIUM_EDITOR_SAVE_OR_OVERWRITE_NAME = "Sichern oder überschreiben?",
	LIBRARIUM_EDITOR_OVERWRITE_CUSTOM_BOOK = "Überschreibe Buch",
	LIBRARIUM_EDITOR_SAVE_CUSTOM_BOOK = "Sichere Buch",
	LIBRARIUM_EDITOR_DELETE_CUSTOM_BOOK = "Lösche Buch",
	LIBRARIUM_EDITOR_DELETE_NAME = "Bestätige Löschen?",

	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_OVERWRITTEN = "Buch überschrieben",
	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_REMOVED = "Buch entfernt",
	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_SAVED = "Buch gespeichert",

	LIBRARIUM_MAIL_SAVE = "Nachrichten speichern",
	LIBRARIUM_EDITOR_MAIL_SUBJECT_PREFIX = "LIBR",
	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_MAIL_SAVED = "Mail gesichert",
	LIBRARIUM_EDITOR_ANNOUNCE_SAVED_MAIL_REMOVED = "Gesicherte Mail entfernt",	
}

for id, stringVar in pairs(stringsDE) do
   SafeAddString(_G[id], stringVar, 2)
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
