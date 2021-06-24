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

TQG.OverviewTabName = "Übersicht"
TQG.ClassicTabName = "Klassisch"
TQG.DLCTabName = "DLC"
TQG.GroupTabName = "Gruppe"

TQG.BtnQuestMap = "Klassisch: Quest Karte"
TQG.BtnCraglorn = "Klassisch: Kargstein"
TQG.BtnImperialCity = "DLC: Der Hohe Beschützer"
TQG.BtnOrsinium = "DLC: Reforging Orsinium"

--I could change this to use a defined string format 
--( e.g., <<1>> 1/1: <<2>>\n(<<3>> '<<4>>') )
TQG.DLCQuestIdToTooltip = {
	[5935] = "Prolog 1/1: Morrowinds\n('Rhea Opacarius' suchen)",
	[6023] = "Prolog 1/1: Die Stadt der Uhrwerke\n('Sendschreiben vom Orden des Auges' suchen)",
	[6097] = "Prolog 1/1: Sommersend\n('Vanus Galerion' suchen)",
	[6226] = "Prolog 1/2: Trübmoor\n('Cyrodiilische Sammlungen braucht Euch!' suchen)",
	[6242] = "Prolog 2/2: Trübmoor\n('Concordia Mercius' suchen)",
	[6299] = "Prolog 1/2: Das nördliche Elsweyr\n('Anais Davaux' suchen)",
	[6306] = "Prolog 2/2: Das nördliche Elsweyr\n('Abnur Tharn' suchen)",
	[6395] = "Prolog 1/2: Das südliche Elsweyr\n('Hinzuur' suchen)",
	[6398] = "Prolog 2/2: Das südliche Elsweyr\n('Das Tal der Klingen' suchen)",
}

--Same comment as above
TQG.GroupQuestIdToTooltip = {

	-----

	[4107] = "Verlies: (eingeben "..GetZoneNameById(380),
	[4597] = "Verlies: (eingeben "..GetZoneNameById(935),
	--
	[4336] = "Verlies: (eingeben "..GetZoneNameById(126),
	[4675] = "Verlies: (eingeben "..GetZoneNameById(931),
	--
	[4778] = "Verlies: (eingeben "..GetZoneNameById(176),
	[5120] = "Verlies: (eingeben "..GetZoneNameById(681),
	--
	[4538] = "Verlies: (eingeben "..GetZoneNameById(131),
	--
	[4733] = "Verlies: (eingeben "..GetZoneNameById(31),

	-----

	[4054] = "Verlies: (eingeben "..GetZoneNameById(144),
	[4555] = "Verlies: (eingeben "..GetZoneNameById(936),
	--
	[4246] = "Verlies: (eingeben "..GetZoneNameById(146),
	[4813] = "Verlies: (eingeben "..GetZoneNameById(933),
	--
	[4379] = "Verlies: (eingeben "..GetZoneNameById(130),
	[5113] = "Verlies: (eingeben "..GetZoneNameById(932),
	--
	[4432] = "Verlies: (eingeben "..GetZoneNameById(22),
	--
	[4589] = "Verlies: (eingeben "..GetZoneNameById(38),

	-----

	[3993] = "Verlies: (eingeben "..GetZoneNameById(283),
	[4303] = "Verlies: (eingeben "..GetZoneNameById(934),
	--
	[4145] = "Verlies: (eingeben "..GetZoneNameById(63),
	[4641] = "Verlies: (eingeben "..GetZoneNameById(930),
	--
	[4202] = "Verlies: (eingeben "..GetZoneNameById(148),
	--
	[4346] = "Verlies: (eingeben "..GetZoneNameById(449),
	--
	[4469] = "Verlies: (eingeben "..GetZoneNameById(64),

	-----

	[4822] = "Verlies: (eingeben "..GetZoneNameById(11),

	-----

	[5102] = "Prüfung: (eingeben "..GetZoneNameById(638),
	--
	[5087] = "Prüfung: (eingeben "..GetZoneNameById(636),
	--
	[5743] = "Prüfung: (eingeben "..GetZoneNameById(639),

	-----

	[5136] = "Verlies: (eingeben "..GetZoneNameById(678),
	--
	[5342] = "Verlies: (eingeben "..GetZoneNameById(688),
	--
	[5448] = "Arena: (eingeben "..GetZoneNameById(677),
	--
	[5554] = "Prüfung: (Bakhum".." suchen",
	[5352] = "Prüfung: (eingeben "..GetZoneNameById(725),

	-----

	[6000] = "Prüfung: (Daynillo Rethul".." suchen",
	[5894] = "Prüfung: (eingeben "..GetZoneNameById(975),
	--
	[6090] = "Prüfung: (eingeben "..GetZoneNameById(1000),
	--
	[6193] = "Prüfung: (Vandoril".." suchen",
	[6192] = "Prüfung: (eingeben "..GetZoneNameById(1051),

	-----

	[6269] = "Arena: (eingeben "..GetZoneNameById(1082),

	-----

	[6354] = "Prüfung: (Natrada".." suchen",
	[6353] = "Prüfung: (eingeben "..GetZoneNameById(1121),

	-----

	[6504] = "Prüfung: (Tyrvera".." suchen",
	[6503] = "Prüfung: (eingeben "..GetZoneNameById(1196),

	-----

	[6597] = "Arena: (Natrada ".."Angair",
	[6610] = "Arena: (eingeben "..GetZoneNameById(1227),

	-----

	[6655] = "Prüfung: (Malosza ".."suchen",
	[6654] = "Prüfung: (eingeben "..GetZoneNameById(1263),

	-----
}

TQG.TopLevelOverview = {
	[1] = "Übersicht",
}

TQG.ZoneLevelOverview = {
	[1] = {
		[1] = {name = "ESO: Klassisch", id = "The Planemeld Arc... This is the original ESO story in the Aurbis, and the tale will interweave amongst Main Story, Alliance, and Guild Storylines as you progress.\n\nAlliance Stories happen in parallel – e.g. Starter Island(s), then Auridon/Glenumbra/Stonefalls, etc. You should not feel like you have to complete every Alliance Story before reaching Coldharbour, however.\n\nThe original Alliance Story pathway was;\n – The story of your character's Alliance; then Cadwell's Silver/Gold which represented the other two Alliances, in clockwise order as a 'post-Main Quest' experience."},
		[2] = {name = "ESO: DLC + Kapitel", id = "The DLC section covers off every major storyline since the introduction of the DLC dungeons, zones, and Chapters. The order presented defaults to the order of release.\n\nMajor Events include:\n – The Sublime Plot\n – Reforging Orsinium\n – Thieves Guild / Dark Brotherhood\n – Daedric War\n – A Lost Legacy\n – Season of the Dragon\n – Dark Heart of Skyrim\n – Gates of Oblivion"},
		[3] = {name = "ESO: Inhalt der Gruppe", id = string.format("%s %s|t26:26:%s|t %s|t26:26:%s|t %s|t26:26:%s|t / |t26:26:%s|t\n\n%s\n\n%s", "The Group section includes the majority of instanced Group Content to-date.", "Dungeons: ", "/esoui/art/icons/poi/poi_groupinstance_complete.dds", "Trials: ", "/esoui/art/icons/poi/poi_raiddungeon_complete.dds", "Arenas: ", "/esoui/art/icons/poi/poi_groupinstance_complete.dds", "/esoui/art/icons/poi/poi_raiddungeon_complete.dds", "There are normal, veteran, and occasionally hard-mode versions of the content, but with the exception of Maelstrom Arena (which only requires the normal-mode quest), the Guide does not care on which difficulty you complete the quest.", "The quests are still tied to the content with which they released. E.G., Maw of Lorkhaj is in Reaper's March, but released with Thieves Guild, so it will be listed under the latter.")},
	},
}

TQG.ObjectiveLevelOverview = {}

TQG.ObjectiveLevelOverview[1] = {}
	TQG.ObjectiveLevelOverview[1][1] = {
		[1] = {name = "Useful Links", description = "Due to the nature of the links, spoilers are more likely the deeper you delve. Be forewarned..."},
	}
	TQG.ObjectiveLevelOverview[1][2] = {
		[1] = {name = "Useful Links", description = "Due to the nature of the links, spoilers are more likely the deeper you delve. Be forewarned..."},
	}
	TQG.ObjectiveLevelOverview[1][3] = {
		[1] = {name = "Notes", description = "Required group size for the content will vary according to the individuals. Maelstrom Arena is a solo Arena–You will face it's horrors alone.\n\n(As a general rule, Dungeon quests are not repeatable, while Trial quests are repeatable weekly. You will only need to complete them once to register them.)"},
	}

TQG.TopLevelClassic = {
	[1] = "0-2: Die Ebenenverschmelzung",
	[2] = "1: Aldmeri-Dominion",
	[3] = "1: Dolchsturz-Bündnis",
	[4] = "1: Ebenherz-Pakt",
	[5] = "1: Kriegergilde",
	[6] = "1: Magiergilde",
	[7] = "2: Kalthafen",
	[8] = "3: Kargstein",
	[9] = "x: Cyrodiil",
}

TQG.TopLevelDLC = {
	[1] = "4: Gilden und Ruhm",
	[2] = "5: Daedrisches Kreig",
	[3] = "6: Trübmoor: Zwischenspiel",
	[4] = "7: Saison des Drachen",
	[5] = "8: Das Schwarze Herz von Skyrim",
	[6] = "9: Tore von Oblivion",
}

----
--Isolated Strings
----

--Fighters Guild
TQG.ZoneLevelClassic[5][1] = {name = "(1.00) Eine Einladung", id = 'Die Kriegergilde wurde gemäß Abschnitt 4 des „Gilden Gesetzes" gegründet und diese Charta wurde erstmals im 321. Jahr der zweiten Ära als Teil der Herrschaft des Versidue-Shaie-Potentaten bestätigt.'}
TQG.ZoneLevelClassic[5][2] = {name = "(1.10) Doshia's Höhle", id = 542}

--Mages Guild
TQG.ZoneLevelClassic[6][1] = {name = "(1.00) Eine Einladung", id = 'Die Magiergilde wurde 230 in der zweiten Ära von Vanus Galerion und Rilis XII gegründet. Auf Summerset Isle gegründet. Es wurde später durch das „Gilden Gesetzes" von Potentat Versidue-Shaie bestätigt.'}

--Balmora
TQG.ZoneLevelDLC[2][2] = {name = "(5.00) Bonus: Balmora", id = 'Die Regierung von Morrowind sanktionierte die Morag Tong vor langer Zeit, noch während der Ersten Ära, und bis heute führen sie Attentate durch, die stillschweigend legal sind; dabei nutzen sie ein System das als „ehrbahre Schriebe der Hinrichtung" bekannt ist.'}