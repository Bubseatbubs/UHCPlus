# Spectate item (slot 7)
execute unless score @s uhcp_ready matches 2 run return run loot replace entity @s hotbar.7 loot uhcp:lobby_menu/spectate
loot replace entity @s hotbar.7 loot uhcp:lobby_menu/stop_spectate
