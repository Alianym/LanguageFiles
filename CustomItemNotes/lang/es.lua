local stringsES = {
    CUSTOM_ITEM_NOTES_NOTES = "Notas",
    CUSTOM_ITEM_NOTES_EDIT_NOTE = "Editar nota",
}

for id, stringVar in pairs(stringsES) do
   SafeAddString(_G[id], stringVar, 2)
end