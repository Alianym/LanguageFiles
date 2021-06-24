local stringsEN = {
    PAT_GAMEPAD_ACHIEVEMENTS_ITEM_LABEL = GetString(SI_GAMEPAD_SKILLS_TOOLTIP_STATUS)..":",
    PAT_CRITERIA_FORMAT = "You Must First Complete:\n[%s]",
}

for id, string in pairs(stringsEN) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 1)
end