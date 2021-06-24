local stringsRU = {
   LIBRARIUM_MAIL_SAVE = "Сохранить почту",
   LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Книжная полка",
}

for id, string in pairs(stringsRU) do
   ZO_CreateStringId(id, string)
   SafeAddVersion(id, 2)
end
