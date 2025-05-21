# Slowness potion
advancement revoke @s only uhcp:lobby/item/slowness_potion
scoreboard players set %lobby_item_2 uhcp_initStatus 1
scoreboard players set %lobby_item_2 uhcp_itemCount 30
execute if score @s uhcp_lobby_item matches 2 run return fail

scoreboard players set @s uhcp_leave 1000
scoreboard players set @s uhcp_lobby_item 2
item replace entity @s armor.head with minecraft:air
loot replace entity @s container.4 loot uhcp:lobby_menu/special_item
scoreboard players reset @s uhcp_leave
