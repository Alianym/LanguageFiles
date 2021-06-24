local stringsRU = {
   LIBRARIUM_MAIL_SAVE = "Сохранить почту",
   LIBRARIUM_CUSTOM_INTERACT_BOOKSHELF = "Книжная полка",
}

for id, stringVar in pairs(stringsRU) do
   SafeAddString(_G[id], stringVar, 2)
end
