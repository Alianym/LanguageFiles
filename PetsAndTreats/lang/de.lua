local stringsDE = {
    --PAT_GAMEPAD_ACHIEVEMENTS_ITEM_LABEL = GetString(SI_GAMEPAD_SKILLS_TOOLTIP_STATUS)..":",
    PAT_CRITERIA_FORMAT = "You Must First Complete:\n[%s]",
}

for id, stringVar in pairs(stringsDE) do
   SafeAddString(_G[id], stringVar, 2)
end
