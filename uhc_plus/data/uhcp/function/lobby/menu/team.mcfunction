# Team selection (slot 0)
execute if score %team uhcp_settings matches 1 if score %players_select_teams uhcp_settings matches 1 run return run loot replace entity @s hotbar.0 loot uhcp:lobby_menu/team
item replace entity @s hotbar.0 with minecraft:air
