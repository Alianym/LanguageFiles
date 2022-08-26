local stringsDE = {
	SESSION_MUTE_SESSION_MUTE_MENU_ITEM = "Stummschalten (diese Session)",
	SESSION_MUTE_SESSION_UNMUTE_MENU_ITEM = "Stummschaltung aufheben",
	SESSION_MUTE_SESSION_MUTE = "Du hast [<<1>>] stummgeschaltet",
	SESSION_MUTE_SHOW_LIST = "Stummgeschaltete Spieler: ",
	SESSION_MUTE_MUTED_MESSAGE_DEFAULT = "~Nachricht von stummgeschaltetem Spieler",
	SESSION_MUTE_MUTED = "Stumm geschaltet",
	SESSION_MUTE_PLAYER_UNMUTED =  "[<<1>>] ist nicht mehr stummgeschaltet",
	SESSION_MUTE_PLAYER_NOT_IN_LIST = "[<<1>>] ist aktuell nicht stummgeschaltet.",

	--LAM settings menu
	SESSION_MUTE_LAM_OPTIONS = "Optionen",
	SESSION_MUTE_LAM_CHAT_NOTIFY = "Im Chat benachrichtigen",
	SESSION_MUTE_LAM_CHAT_NOTIFY_TT = "Ist diese Option aktiviert, so wird im Chat eine Nachricht angezeigt, wenn der stummgeschaltete Spieler eine Nachricht gesendet hat (ohne Inhalt dieser Nachricht).",
	SESSION_MUTE_LAM_DESC_TEXT = "Schau bei ESOUI nach, um mehr Details zum Umfang und der Nutzung dieses Addons zu erhalten\n\nChat Slash-Befehle:\n /sessionmutelist (listet die stummgeschalteten Spieler auf)\n /sessionmuteremove <Stummgeschalteter Name> (etnferne Spieler von der stummgeschalteten Liste)",
}

for id, stringVar in pairs(stringsDE) do
	SafeAddString(_G[id], stringVar, 1)
end
