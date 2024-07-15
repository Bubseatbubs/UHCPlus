# Determine menu state
execute unless score %patrons uhcp_settings matches 1 run return run item replace entity @s container.1 with minecraft:air
loot replace entity @s container.1 loot uhcp:lobby_menu/patron
