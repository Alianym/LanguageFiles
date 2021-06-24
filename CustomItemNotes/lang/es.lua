local stringsES = {
    CUSTOM_ITEM_NOTES_NOTES = "Notas",
    CUSTOM_ITEM_NOTES_EDIT_NOTE = "Editar nota",
}

for id, string in pairs(stringsES) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 2)
end