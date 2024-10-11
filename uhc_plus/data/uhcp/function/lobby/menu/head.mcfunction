# Head slot
execute unless score @s uhcp_lobby_item matches 7 run return run item replace entity @s armor.head with minecraft:air
loot replace entity @s armor.head loot uhcp:lobby_menu/special_item
