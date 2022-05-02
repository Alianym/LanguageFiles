local stringsFR = {
	----
	--General Strings
	----
	--SI_BINDING_NAME_LIBRARIUM_OPEN_KEY = "Open the Librarium",
	--SI_BINDING_NAME_LIBRARIUM_OPEN_COMPENDIUM_KEY = "Open the Librarium", --Compatability
	--SI_BINDING_NAME_LIBRARIUM_OPEN_GAMEPAD_KEY = "Open the Librarium – Gamepad",

	LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Étagère",

	--LIBRARIUM_LORE_LIBRARY_ANNOUNCE_BOOK_LEARNED = "Librarium Lorebook Learned",

	--LIBRARIUM_ADVENTURES_RESTART_BOOK = "<START AGAIN>",

	--LIBRARIUM_MAIL_SEND_ANNOUNCE_ERROR = "Librarium Book Failed to Send, Try Again Later",

	--LIBRARIUM_EDITOR_TOGGLE_MEDIUM = "Cycle Book Medium",
	--LIBRARIUM_EDITOR_OPEN_BOOK_WRITER = "Open Book Writer",
	--LIBRARIUM_EDITOR_OPEN_BOOK_EDITOR = "Edit Book",
	--LIBRARIUM_EDITOR_DEFAULT_TITLE = "Enter Title",
	--LIBRARIUM_EDITOR_DEFAULT_TEXT = "Start Writing",

	--LIBRARIUM_EDITOR_SAVE_OR_OVERWRITE_NAME = "Save or Overwrite?",
	--LIBRARIUM_EDITOR_OVERWRITE_CUSTOM_BOOK = "Overwrite Book",
	--LIBRARIUM_EDITOR_SAVE_CUSTOM_BOOK = "Save Book",
	--LIBRARIUM_EDITOR_DELETE_CUSTOM_BOOK = "Delete Book",
	--LIBRARIUM_EDITOR_DELETE_NAME = "Confirm Deletion?",

	--LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_OVERWRITTEN = "Book Overwritten",
	--LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_REMOVED = "Book Removed",
	--LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_BOOK_SAVED = "Book Saved",

	LIBRARIUM_MAIL_SAVE = "Sauvegarder le courrier",
	--LIBRARIUM_DUPLICATE_MAIL_SAVE = "Duplicate Mail Save",
	LIBRARIUM_HIRELING_MAIL_KEYWORD = "Matériaux ",
	--LIBRARIUM_EDITOR_SEND_MAIL_NAME = "Send Mail to Alianym?",
	--LIBRARIUM_EDITOR_ANNOUNCE_CUSTOM_MAIL_SAVED = "Mail Saved",
	--LIBRARIUM_EDITOR_ANNOUNCE_SAVED_MAIL_REMOVED = "Saved Mail Removed",

	--LIBRARIUM_DIALOGS_CUSTOM_BOOK_OVERWRITE = "Would you like to Overwrite the existing book?",
	--LIBRARIUM_DIALOGS_CUSTOM_BOOK_DELETE = "Confirm deletion of the custom book? This will be permanent upon /reloadui or logout.",
	--LIBRARIUM_DIALOGS_MAIL_SAVED_DELETE = "Confirm deletion of the saved mail? This will be permanent upon /reloadui or logout.",
	--LIBRARIUM_DIALOGS_MAIL_SEND_REQ_DETAILS = "You need to input:\n\nAuthor: <How To Credit?> and;\nLocations: <Where In-Game?>\n\nYou must fill these out in the Settings Menu before you can send a book to Alianym.",
	--LIBRARIUM_DIALOGS_MAIL_SEND_CONFIRM = "Confirm send of the custom book to Alianym?\nPlease wait a few moments to let the mails send.",
	--LIBRARIUM_DIALOGS_MAIL_SEND_TEMP_WINDOW = "This window will close automatically once the entire book has been sent.",

	----
	--AddOn Settings Strings
	----
	LIBRARIUM_SETTINGS_RELOADUI_WARNING = "Will automatically reload the UI.",

	--LIBRARIUM_SETTINGS_DESCRIPTION_TEXT = "To set an <Interaction Keybind> go to CONTROLS Menu -> LibAlianym -> Interaction Key\nTo set a <Toggle Menu Keybind> go to CONTROLS Menu -> Alianym's Suite -> Open Librarium",
	LIBRARIUM_SETTINGS_ACCOUNT_WIDE = "Compte",
	--LIBRARIUM_SETTINGS_ACCOUNT_WIDE_TOOLTIP = "Select to have an Account-Wide Librarium.",
	--LIBRARIUM_SETTINGS_RESET_BUTTON_NAME = "Reset the Librarium",
	--LIBRARIUM_SETTINGS_RESET_BUTTON_TOOLTIP = "This will delete every user-created and discovered book in the Librarium",
	--LIBRARIUM_SETTINGS_RESET_BUTTON_WARNING = "CAUTION: Are you certain you wish to reset the Librarium?",
	--LIBRARIUM_SETTINGS_SAVING_MAIL_HEADER = "Saving Mail", --Note for Translators (Heading, not Notification)
	--LIBRARIUM_SETTINGS_TAMRIEL_DATE_NAME = "Add Tamriel Date to Saved Mail",
	--LIBRARIUM_SETTINGS_TAMRIEL_DATE_TOOLTIP = "Select to add in-universe dates to any mail you save.",
	--LIBRARIUM_SETTINGS_MAIL_ATTACHMENT_DATA_NAME = "Add Attachment Data to Saved Mail",
	--LIBRARIUM_SETTINGS_MAIL_ATTACHMENT_DATA_TOOLTIP = "Select to append details about attachments to any mail you save.",
	--LIBRARIUM_SETTINGS_MAIL_SAVE_SENT_NAME = "Save Sent/Outgoing Mail",
	--LIBRARIUM_SETTINGS_MAIL_SAVE_SENT_TOOLTIP = "Select to save mail that you send.",
	--LIBRARIUM_SETTINGS_SENDING_BOOKS_NAME = "Sending Books",
	--LIBRARIUM_SETTINGS_AUTHOR_TOOLTIP = "How would you like to be attributed? Example: @Name (You can put 'anonymous')",
	--LIBRARIUM_SETTINGS_LOCATIONS_TOOLTIP = "In what zones would you like your books to appear? Example: ",

	----
	--Mail Date Strings
	----
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

for id, stringVar in pairs(stringsFR) do
   SafeAddString(_G[id], stringVar, 2)
end