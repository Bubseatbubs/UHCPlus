# Goat horn
advancement revoke @s only uhcp:lobby/item/goat_horn
scoreboard players set %lobby_item_3 uhcp_initStatus 1
scoreboard players set %lobby_item_3 uhcp_itemCount 30
execute if score @s uhcp_lobby_item matches 3 run return fail

tag @s add UHCP_DisableReset
scoreboard players set @s uhcp_lobby_item 3
item replace entity @s armor.head with minecraft:air
loot replace entity @s container.4 loot uhcp:lobby_menu/special_item
tag @s remove UHCP_DisableReset
