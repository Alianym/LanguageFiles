local stringsEN = {
	SESSION_MUTE_SESSION_MUTE_MENU_ITEM = "Session Mute",
	SESSION_MUTE_SESSION_UNMUTE_MENU_ITEM = "Session Unmute",
	SESSION_MUTE_SESSION_MUTE = "You muted [<<1>>]",
	SESSION_MUTE_SHOW_LIST = "Muted players: ",
	SESSION_MUTE_MUTED_MESSAGE_DEFAULT = "<Muted Message>",
	SESSION_MUTE_MUTED = "Muted",
	SESSION_MUTE_PLAYER_UNMUTED = "You unmuted [<<1>>]",
	SESSION_MUTE_PLAYER_NOT_IN_LIST = "[<<1>>] is not currently muted.",

	--LAM settings menu
	SESSION_MUTE_LAM_OPTIONS = "Options",
	SESSION_MUTE_LAM_CHAT_NOTIFY = "Notify in Chat of Muted Messages",
	SESSION_MUTE_LAM_CHAT_NOTIFY_TT = "If true this will display a chat message that a muted player has sent a message, but not what that message was.",
	SESSION_MUTE_LAM_DESC_TEXT = "See ESOUI for detailed usage instructions.\n\nChat Slash-Commands:\n /sessionmutelist (list muted players)\n /sessionmuteremove <Muted Name> (remove player from mute list)",
}

for id, stringVar in pairs(stringsEN) do
   ZO_CreateStringId(id, stringVar)
   SafeAddVersion(id, 1)
end