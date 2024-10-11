# Ready item (slot 8)
execute unless score @s uhcp_ready matches 1.. run return run loot replace entity @s hotbar.8 loot uhcp:lobby_menu/not_ready
loot replace entity @s hotbar.8 loot uhcp:lobby_menu/ready
