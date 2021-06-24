TQG = {}

local stringsEN = {
	SI_BINDING_NAME_TQG_INTERACT_KEY = "Toggle Quest Guide",
	TQG_MENU_JOURNAL = "The Questing Guide",
	TQG_OVERVIEW_OBJECTIVE_TEXT = "NOTES",
	TQG_DEFAULT_QUEST_COMPLETE = "Complete",
	TQG_DEFAULT_QUEST_INCOMPLETE = "Incomplete",
	TQG_PROLOGUE = "Prologue",
	TQG_EPILOGUE = "Epilogue",

	--TQG_CONFIRM_QUEST_ZONE_STORY = "Zone Story"
	--TQG_CONFIRM_QUEST_POI = "Points of Interest"
}

for id, stringVar in pairs(stringsEN) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 1)
end

TQG.OverviewTabName = "Overview"
TQG.ClassicTabName = "Classic"
TQG.DLCTabName = "DLC"
TQG.GroupTabName = "Group"

TQG.BtnQuestMap = "Classic: Quest Map"
TQG.BtnCraglorn = "Classic: Craglorn"
TQG.BtnImperialCity = "DLC: The Sublime Plot"
TQG.BtnOrsinium = "DLC: Reforging Orsinium"

--I could change this to use a defined string format 
--( e.g., <<1>> 1/1: <<2>>\n(<<3>> '<<4>>') )
TQG.DLCQuestIdToTooltip = {
	[5935] = "Prologue 1/1: Morrowind\n(Seek out 'Rhea Opacarius')",
	[6023] = "Prologue 1/1: Clockwork City\n(Seek out 'Order of the Eye Dispatch')",
	[6097] = "Prologue 1/1: Summerset\n(Seek out 'Vanus Galerion')",
	[6226] = "Prologue 1/2: Murkmire\n(Seek out 'Cyrodiilic Collections Needs You!')",
	[6242] = "Prologue 2/2: Murkmire\n(Seek out 'Concordia Mercius')",
	[6299] = "Prologue 1/2: Northern Elsweyr\n(Seek out 'Anais Davaux')",
	[6306] = "Prologue 2/2: Northern Elsweyr\n(Seek out 'Abnur Tharn')",
	[6395] = "Prologue 1/2: Southern Elsweyr\n(Seek out 'Hinzuur')",
	[6398] = "Prologue 2/2: Southern Elsweyr\n(Visit 'Valley of Blades')",
}

--Same comment as above
TQG.GroupQuestIdToTooltip = {

	-----

	[4107] = "Dungeon: (Enter "..GetZoneNameById(380),
	[4597] = "Dungeon: (Enter "..GetZoneNameById(935),
	--
	[4336] = "Dungeon: (Enter "..GetZoneNameById(126),
	[4675] = "Dungeon: (Enter "..GetZoneNameById(931),
	--
	[4778] = "Dungeon: (Enter "..GetZoneNameById(176),
	[5120] = "Dungeon: (Enter "..GetZoneNameById(681),
	--
	[4538] = "Dungeon: (Enter "..GetZoneNameById(131),
	--
	[4733] = "Dungeon: (Enter "..GetZoneNameById(31),

	-----

	[4054] = "Dungeon: (Enter "..GetZoneNameById(144),
	[4555] = "Dungeon: (Enter "..GetZoneNameById(936),
	--
	[4246] = "Dungeon: (Enter "..GetZoneNameById(146),
	[4813] = "Dungeon: (Enter "..GetZoneNameById(933),
	--
	[4379] = "Dungeon: (Enter "..GetZoneNameById(130),
	[5113] = "Dungeon: (Enter "..GetZoneNameById(932),
	--
	[4432] = "Dungeon: (Enter "..GetZoneNameById(22),
	--
	[4589] = "Dungeon: (Enter "..GetZoneNameById(38),

	-----

	[3993] = "Dungeon: (Enter "..GetZoneNameById(283),
	[4303] = "Dungeon: (Enter "..GetZoneNameById(934),
	--
	[4145] = "Dungeon: (Enter "..GetZoneNameById(63),
	[4641] = "Dungeon: (Enter "..GetZoneNameById(930),
	--
	[4202] = "Dungeon: (Enter "..GetZoneNameById(148),
	--
	[4346] = "Dungeon: (Enter "..GetZoneNameById(449),
	--
	[4469] = "Dungeon: (Enter "..GetZoneNameById(64),

	-----

	[4822] = "Dungeon: (Enter "..GetZoneNameById(11),

	-----

	[5102] = "Trial: (Enter "..GetZoneNameById(638),
	--
	[5087] = "Trial: (Enter "..GetZoneNameById(636),
	--
	[5743] = "Trial: (Enter "..GetZoneNameById(639),

	-----

	[5136] = "Dungeon: (Enter "..GetZoneNameById(678),
	--
	[5342] = "Dungeon: (Enter "..GetZoneNameById(688),
	--
	--Wrothgar – Maelstrom Arena
	[5448] = "Arena: (Enter "..GetZoneNameById(677),
	--
	[5554] = "Trial: (Seek out ".."Bakhum",
	[5352] = "Trial: (Enter "..GetZoneNameById(725),

	-----

	[6000] = "Trial: (Seek out ".."Daynillo Rethul",
	[5894] = "Trial: (Enter "..GetZoneNameById(975),
	--
	[6090] = "Trial: (Enter "..GetZoneNameById(1000),
	--
	[6193] = "Trial: (Seek out ".."Vandoril",
	[6192] = "Trial: (Enter "..GetZoneNameById(1051),

	-----

	[6269] = "Arena: (Enter "..GetZoneNameById(1082),

	-----

	[6354] = "Trial: (Seek out ".."Natrada",
	[6353] = "Trial: (Enter "..GetZoneNameById(1121),

	-----

	[6504] = "Trial: (Seek out ".."Tyrvera",
	[6503] = "Trial: (Enter "..GetZoneNameById(1196),

	-----

	[6597] = "Arena: (Seek out ".."Angair",
	[6610] = "Arena: (Enter "..GetZoneNameById(1227),

	-----

	[6655] = "Trial: (Seek out ".."Malosza",
	[6654] = "Trial: (Enter "..GetZoneNameById(1263),

	-----
}

TQG.TopLevelOverview = {
	[1] = "Overview",
}

TQG.ZoneLevelOverview = {
	[1] = {
		[1] = {name = "ESO: Classic", id = "The Planemeld Arc... This is the original ESO story in the Aurbis, and the tale will interweave amongst Main Story, Alliance, and Guild Storylines as you progress.\n\nAlliance Stories happen in parallel – e.g. Starter Island(s), then Auridon/Glenumbra/Stonefalls, etc. You should not feel like you have to complete every Alliance Story before reaching Coldharbour, however.\n\nThe original Alliance Story pathway was;\n – The story of your character's Alliance; then Cadwell's Silver/Gold which represented the other two Alliances, in clockwise order as a 'post-Main Quest' experience."},
		[2] = {name = "ESO: DLC + Chapters", id = "The DLC section covers off every major storyline since the introduction of the DLC dungeons, zones, and Chapters. The order presented defaults to the order of release.\n\nMajor Events include:\n – The Sublime Plot\n – Reforging Orsinium\n – Thieves Guild / Dark Brotherhood\n – Daedric War\n – A Lost Legacy\n – Season of the Dragon\n – Dark Heart of Skyrim\n – Gates of Oblivion"},
		[3] = {name = "ESO: Group Content", id = string.format("%s %s|t26:26:%s|t %s|t26:26:%s|t %s|t26:26:%s|t / |t26:26:%s|t\n\n%s\n\n%s", "The Group section includes the majority of instanced Group Content to-date.", "Dungeons: ", "/esoui/art/icons/poi/poi_groupinstance_complete.dds", "Trials: ", "/esoui/art/icons/poi/poi_raiddungeon_complete.dds", "Arenas: ", "/esoui/art/icons/poi/poi_groupinstance_complete.dds", "/esoui/art/icons/poi/poi_raiddungeon_complete.dds", "There are normal, veteran, and occasionally hard-mode versions of the content, but with the exception of Maelstrom Arena (which only requires the normal-mode quest), the Guide does not care on which difficulty you complete the quest.", "The quests are still tied to the content with which they released. E.G., Maw of Lorkhaj is in Reaper's March, but released with Thieves Guild, so it will be listed under the latter.")},
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
		--Add note about Story I/II dungeons?
		[1] = {name = "Notes", description = "Required group size for the content will vary according to the individuals. Maelstrom Arena is a solo Arena–You will face it's horrors alone.\n\n(As a general rule, Dungeon quests are not repeatable, while Trial quests are repeatable weekly. You will only need to complete them once to register them.)"},
	}

TQG.TopLevelClassic = {
	[1] = "0-2: The Planemeld",
	[2] = "1: Aldmeri Dominion",
	[3] = "1: Daggerfall Covenant",
	[4] = "1: Ebonheart Pact",
	[5] = "1: Fighters Guild",
	[6] = "1: Mages Guild",
	[7] = "2: Coldharbour",
	[8] = "3: Craglorn",
	[9] = "x: Cyrodiil",
}

TQG.TopLevelDLC = {
	[1] = "4: Guilds and Glory",
	[2] = "5: Daedric War",
	[3] = "6: Murkmire: Interlude",
	[4] = "7: Season of the Dragon",
	[5] = "8: Dark Heart of Skyrim",
	[6] = "9: Gates of Oblivion",
}

----
--Isolated Strings
----

--Fighters Guild
[1] = {name = "(1.00) An Invitation", id = 'The Guild of Fighters was established under the section 4 of the "Guilds Act," and this charter was first confirmed under the Potentate Versidue-Shaie in the 321st year of the Second Era.'},
[2] = {name = "(1.10) Doshia's Lair", id = 542},

--Mages Guild
[1] = {name = "(1.00) An Invitation", id = 'The Guild of Mages was established on Summerset Isle in the year 230 of the Second Era by Vanus Galerion and Rilis XII. It was later confirmed by the "Guilds Act" of Potentate Versidue-Shaie.'},

--Balmora
[2] = {name = "(5.00) Bonus: Balmora", id = 'The Morrowind government sanctioned the Morag Tong long ago during the First Era, and to this day they continue to perform tacitly legal assassinations, utilizing a system of contracts known as "honorable writs of execution."'},