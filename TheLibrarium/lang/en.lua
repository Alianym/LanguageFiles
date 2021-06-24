--[[...Code]]--

local worldIconDown = "EsoUI/Art/Progression/progression_indexIcon_world_down.dds"
local addOnLongName = "The Librarium"

local stringsEN = {
	SI_BINDING_NAME_LIBRARIUM_OPEN_KEY = "Open the Librarium",

	LIBRARIUM_CUSTOM_INTERACT_ACTION = "Librarium",
	LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Bookshelf",

	LIBRARIUM_LORE_LIBRARY_ANNOUNCE_BOOK_LEARNED = "Librarium Lorebook Learned",
	LIBRARIUM_MENU_JOURNAL = string.format("|t52:52:%s|t%s:", worldIconDown, addOnLongName),
	LIBRARIUM_WINDOW_TITLE_LORE_LIBRARY = string.format("|t52:52:%s|t%s:", worldIconDown, addOnLongName),

	LIBRARIUM_ADVENTURES_RESTART_BOOK = "<START AGAIN>",

	LIBRARIUM_EDITOR_TOGGLE_MEDIUM = "Cycle Book Medium",
	LIBRARIUM_EDITOR_OPEN_BOOK_WRITER = "Open Book Writer",
	LIBRARIUM_EDITOR_OPEN_BOOK_EDITOR = "Edit Book",
	LIBRARIUM_EDITOR_UNDO_RECENT_CHANGES = "Undo",

	LIBRARIUM_EDITOR_SAVE_OR_OVERWRITE_NAME = "Save or Overwrite?",
	LIBRARIUM_EDITOR_OVERWRITE_CUSTOM_BOOK = "Overwrite Book",
	LIBRARIUM_EDITOR_SAVE_CUSTOM_BOOK = "Save Book",
	LIBRARIUM_EDITOR_DELETE_CUSTOM_BOOK = "Delete Book",
	LIBRARIUM_EDITOR_DELETE_NAME = "Confirm Deletion?",

	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_OVERWRITTEN = "Book Overwritten",
	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_REMOVED = "Book Removed",
	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_SAVED = "Book Saved",

	LIBRARIUM_MAIL_SAVE = "Save Mail",
	LIBRARIUM_EDITOR_MAIL_SUBJECT_PREFIX = "LIBR",
	LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_MAIL_SAVED = "Mail Saved",
	LIBRARIUM_EDITOR_ANNOUNCE_SAVED_MAIL_REMOVED = "Saved Mail Removed",

	----
	--ZOS-Based Strings
	----
	LIBRARIUM_ADVENTURES_CLOSE_BOOK = zo_strformat("<<Z:1>>", GetString(SI_DIALOG_CLOSE))

	LIBRARIUM_EDITOR_SEND_CUSTOM_BOOK = GetString(SI_SOCIAL_MENU_SEND_MAIL),
	LIBRARIUM_EDITOR_SEND_MAIL_NAME = GetString(SI_SOCIAL_MENU_SEND_MAIL).."?",

	LIBRARIUM_GOLD_ATTACHED = GetString(SI_MAIL_READ_SENT_GOLD_LABEL),
	LIBRARIUM_MAIL_ATTACHED = GetString(SI_MAIL_ATTACHMENTS_HEADER),
	LIBRARIUM_MAIL_RECEIVED = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN),
	LIBRARIUM_COD_COST = GetString(SI_MAIL_READ_COD_LABEL),
}

for id, string in pairs(stringsEN) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 1)
end

LibrMailDateMap = 
{
	WeekDay = {
		[1] = "Sundas",
		[2] = "Morndas",
		[3] = "Tirdas",
		[4] = "Middas",
		[5] = "Turdas",
		[6] = "Fredas",
		[7] = "Loredas",
	},

	Month = {
		[01] = "Morning Star",
		[02] = "Sun's Dawn",
		[3] = "First Seed",
		[4] = "Rain's Hand",
		[5] = "Second Seed",
		[6] = "Midyear",
		[7] = "Sun's Height",
		[8] = "Last Seed",
		[9] = "Hearthfire",
		[10] = "Frostfall",
		[11] = "Sun's Dusk",
		[12] = "Evening Star",
	},

	Year = {
		Era = "2E",
		YearBase = 2014,
		TamrielYearBase = 582,
	},
}

--[[Code...]]--
