# Patron selection (slot 1)
execute unless score %patrons uhcp_settings matches 1 run return run item replace entity @a hotbar.1 with minecraft:air
loot replace entity @a hotbar.1 loot uhcp:lobby_menu/patron
